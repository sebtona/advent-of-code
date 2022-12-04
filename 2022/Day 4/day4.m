%% Aharon Sebton - Advent of Code Day 4
%% Problem 1
clear all; clc;
data = string(table2cell(readtable('data.txt','ReadVariableNames',false)));
count = 0;
for i=1:size(data,1)
    for j=1:size(data,2)
        if j==1
            L = split(data(i,j),'-')';
            L = [str2num(L(1)) str2num(L(2))];
        else
            R = split(data(i,j),'-')';
            R = [str2num(R(1)) str2num(R(2))];
            if (min(L) <= min(R) && max(L) >= max(R)) || (min(R) <= min(L) && max(R) >= max(L))
                count = count + 1;
            end
        end
    end
end
count
%% Problem 2
count = 0;
for i=1:size(data,1)
    for j=1:size(data,2)
        if j==1
            L = split(data(i,j),'-')';
            L = [str2num(L(1)) str2num(L(2))];
        else
            R = split(data(i,j),'-')';
            R = [str2num(R(1)) str2num(R(2))];
            if (min(L) <= max(R) && min(R) <= max(L))
                count = count + 1;
            end
        end
    end
end
count