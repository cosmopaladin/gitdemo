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
%COMPUTESCORE FeatureA scoring rule: baseline plus offset
offset = 10;
score = 2 * state + offset;

% clamp to avoid runaway scores
score = min(score, 25);
end