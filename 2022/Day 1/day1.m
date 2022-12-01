%% Aharon Sebton - Advent of Code Day 1
%% Problem 1
clear all; clc;
delimiterIn = '\n';
Data = importdata("data.txt",delimiterIn);
Data(isnan(Data)) = 0;
cals = 0;
calsum = 0;
for i=1:length(Data)
    if Data(i) ~= 0
        calsum = calsum + Data(i);
    else
        if cals == 0
            cals = calsum;
            calsum = 0;
        else
            cals = [cals calsum];
            calsum = 0;
        end
    end
end
max(cals)
%% Problem 2
cals = sort(cals);
sum(cals(end-2:end))