%% Aharon Sebton - Advent of Code Day 3
%% Problem 1
clear all; clc;
data = importdata("data.txt");
data = string(data);
letters=['a':'z','A':'Z'];
letterscores=1:52;
scores=zeros(1,length(data));
for i=1:length(data)
    ch=data{i};
    data(i,2)=ch(strlength(data(i))/2+1:end);
    data(i,1)=ch(1:strlength(data(i,1))/2);
    for j=1:52
        if contains(data(i,1),letters(j)) && contains(data(i,2),letters(j))
            scores(i)=letterscores(j);
        end
    end
end
sum(scores)
%% Problem 2
data = importdata("data.txt");
data = string(data);
scores=zeros(1,length(data));
indexes=1:3:length(data);
for i=indexes
    for j=1:52
        if contains(data(i),letters(j)) && contains(data(i+1),letters(j)) && contains(data(i+2),letters(j))
            scores(i)=letterscores(j);
        end
    end
end
sum(scores)