function score = demo(n)
%DEMO Tiny MATLAB demo for teaching git
% score = demo(n) runs n steps and returns a score.

if nargin < 1
    n = 5;
end

state = 0;
for i = 1:n
    state = state + i;
end

score = computeScore(state);

fprintf("demo: n=%d state=%d score=%d\n", n, state, score);
end

function score = computeScore(state)
%COMPUTESCORE Merged scoring rule (A + B ideas)
offset = 7;
gain = 4;

score = 2 * state + offset;        % A baseline
score = score + gain * state;      % B linear gain

if mod(state, 2) == 0              % B parity bonus
    score = score + 5;
end

score = min(score, 25);            % A clamp
end