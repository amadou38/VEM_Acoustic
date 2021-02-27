function [point, weight] = quadrature(i)
% AUTEUR : Diallo Amadou, 28/09/2020


%x = gauss_points_1d(i);
%w = gauss_weights_1d(i);
if i == 1 
    a = 1/3;
    %a = x(i);
    %weight(i) = w(i);
    point = [a a];
    weight = 1/2;
elseif i == 2
    a = 2/3;
    b = 1/6;
    %a = x(1); b = x(2);
    w = 1/6;
    point = [b b; a b; b a];
    weight = w*ones(3,1);
elseif i == 3
    a = 1/5;
    b = 3/5;
    c = 1/3;
    w1 = 25/(24*4);
    w2 = -27/(24*4);
    point = [a a; b a; a b; c c];
    weight = zeros(i+1,1);
    weight(1:i) = w1; weight(i+1) = w2; 
end








end