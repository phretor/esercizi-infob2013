% esempio con file txt

x = [1 2 3 4 5 6];
y = 2 * x;
who

% Variables in the current scope:
%
% x  y

% salvo x e y in esempio.txt (formato ascii)
save('esempio.txt', 'x', 'y', '-ascii')

% carico da file nella variabile s
clear
s = load('esempio.txt', '-ascii')
% s =
%
%     1    2    3    4    5    6
%     2    4    6    8   10   12

% ricavo da s i due vettori riga
x = s(1,:);
y = s(2,:);
who

% Variables in the current scope:
%
% s  x  y
%

% esempio con file mat

x = [1 2 3 4 5 6];
y = 2 * x;

% salvo in un file .mat
save('test.mat')
who
% Variables in the current scope:
%
% x  y
%

clear
who

%carico da file .mat
load('test.mat')
who

% Variables in the current scope:
%
% x  y
