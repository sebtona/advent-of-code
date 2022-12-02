%% Aharon Sebton - Advent of Code Day 2
%% Problem 1
clear all; clc;
delimiterIn = ' ';
data = importdata("data.txt",delimiterIn);
data = string(data);
data = split(data);
scores = 0;
score = 0;
for i=1:length(data)
    if data(i,1) == 'A' && data(i,2) == 'X'
        score = 1+3;
    elseif data(i,1) == 'A' && data(i,2) == 'Y'
        score = 2+6;
    elseif data(i,1) == 'A' && data(i,2) == 'Z'
        score = 3+0;
    elseif data(i,1) == 'B' && data(i,2) == 'X'
        score = 1+0;
    elseif data(i,1) == 'B' && data(i,2) == 'Y'
        score = 2+3;
    elseif data(i,1) == 'B' && data(i,2) == 'Z'
        score = 3+6;
    elseif data(i,1) == 'C' && data(i,2) == 'X'
        score = 1+6;
    elseif data(i,1) == 'C' && data(i,2) == 'Y'
        score = 2+0;
    elseif data(i,1) == 'C' && data(i,2) == 'Z'
        score = 3+3;
    end
    if i==1
        scores = score;
    else
        scores = [scores score];
    end
end
sum(scores)
%% Problem 2
scores = 0;
score = 0;
for i=1:length(data)
    if data(i,1) == 'A' && data(i,2) == 'X'
        score = 3+0;
    elseif data(i,1) == 'A' && data(i,2) == 'Y'
        score = 1+3;
    elseif data(i,1) == 'A' && data(i,2) == 'Z'
        score = 2+6;
    elseif data(i,1) == 'B' && data(i,2) == 'X'
        score = 1+0;
    elseif data(i,1) == 'B' && data(i,2) == 'Y'
        score = 2+3;
    elseif data(i,1) == 'B' && data(i,2) == 'Z'
        score = 3+6;
    elseif data(i,1) == 'C' && data(i,2) == 'X'
        score = 2+0;
    elseif data(i,1) == 'C' && data(i,2) == 'Y'
        score = 3+3;
    elseif data(i,1) == 'C' && data(i,2) == 'Z'
        score = 1+6;
    end
    if i==1
        scores = score;
    else
        scores = [scores score];
    end
end
sum(scores)