%% Aharon Sebton - Advent of Code Day 1
%% Problem 1
Data = importdata("Data.txt");
count = 0;
for i=1:length(Data)
    if i ~= 1
        if Data(i) > Data(i-1)
            count = count + 1;
        end
    end
end
count
%% Problem 2
clear all; clc;
Data = importdata("Data.txt");
count = 0;
sumold = 0;
for i=3:length(Data)
    sum = Data(i)+Data(i-1)+Data(i-2);
    if i ~= 3
        if sum > sumold
            count = count + 1;
        end
    end
    sumold = sum;
end
count