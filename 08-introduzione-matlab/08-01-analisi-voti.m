%% Analisi dei voti sufficienti della prima prova in itinere

%% Qualche aggiunta rispetto a quanto visto a lezione

clear
clc

% A.A. 2012--2013
voti = [2 8 4 8.1 9.25 11.25 4.75 17 6.25 13 10 2 3.25 3.75 8.5 16 8 1 2.5 12 10.75 6 12 10 11.75 3.5 10.5 8.5 14.25 16.5 10.75 8 12 1 10 13 6.75 5.75 9.5 12.75 11 8.5 10.25 14.5 4.25 5.5 9.75 16.5 13 15 13 13.75 13.5];
% media: 9.2896
% media_suff =  11.624
% media dei sufficienti: 11.624
% var_suff =  6.8712
% varianza dei sufficienti: 6.8712
% tot =  5
% nr di voti >= 15: 5


% A.A. 2013--2013
voti = [2 6 11.5 9 11.5 8.5 16 12.75 8.5 8.25 11.5 10 6 11.25 6 11.25 16.5 9.5 8.5 14.75 10 10.25 16 8.5 14.5 6 8 8.75 10 16 0 10.25 13 10.25 13.5 13.5 7.5 10 0.5 12.5 9.5 6.5 15 2 11 10 14.5 10 7.25 12 7.5 4.5 0 4 16.25 14.25 7 10.5 14 14 9 15.5 2 6 11.5 9 11.5 8.5 16 12.75 8.5 8.25 11.5 10 6 11.25 6 11.25 16.5 9.5 8.5 14.75 10 10.25 16 8.5 14.5 6 8 8.75 10];
% media =  9.9313
% media: 9.9313
% media_suff =  11.500
% media dei sufficienti: 11.5
% var_suff =  6.9040
% varianza dei sufficienti: 6.904
% tot =  10
% nr di voti >= 15: 10


%% calcolo media: soluzione "alla C"
count = 0;
tot = 0;
for ii = voti
    tot = tot + ii;
    count = count + 1;
    disp(ii) % per debug
end
media = tot/count;

% soluzione alla MATLAB - gia` visto a lezione
media = mean(voti)
disp(['media: ' , num2str(media)]);

%% calcolo media sufficienti: soluzione "alla C"
count = 0;
tot = 0;
for ii = voti(voti >= 8)
    tot = tot + ii;
    count = count + 1;
end
media_suff = tot/count;

% soluzione alla MATLAB - gia` visto a lezione
media_suff = mean(voti(voti >= 8))
disp(['media dei sufficienti: ' , num2str(media_suff)]);

%% calcolo della varianza dei voti sufficienti "alla C" - non visto a lezione
count = 0;
tot = 0;
for ii = voti(voti >= 8)
    tot = tot + (ii - media_suff).^2;
    count = count + 1;
end
var_suff = tot/count;

% soluzione alla MATLAB - non visto a lezione
var_suff = var(voti(voti >= 8))

disp(['varianza dei sufficienti: ' , num2str(var_suff)]);

%% numero di voti >= 15 (senza usare sum inizialmente)
tot = 0;
for ii = (voti >= 15)
    tot = tot + ii ;
end

%usando sum si poteva fare
tot = sum(voti >= 15)

disp(['nr di voti >= 15: ' , num2str(tot)]);

