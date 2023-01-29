clear all
close all
clc
%% Jeux de mots
%Q1:

[x,fs]=audioread("C:\Users\omare\Desktop\tp\phrase.opus.mp4");

%Q2:
N = length(x)
ts = 1/fs
t = (0:N-1)*ts
sound(x,fs)
plot(t,x)

%Q3:

sound(x,fs*2);
sound(x,fs/2);

%Q4:
rien_ne_sert_de = x(5055:76000);
plot(rien_ne_sert_de);
title('phrase');

%Q5:

rien_ne_sert_de = x(5055:76000);
sound(rien_ne_sert_de,fs);

%Q6:
rien_ne_sert_de = x(5055:76000);

courir=x(76000:95395);

il_faut=x(95395:100000);

partir_a_point = x(100000:192505);

%Q7:
vector=[rien_ne_sert_de , partir_a_point , il_faut , courir];
sound(vector,fs)

%% Synthèse et analyse spectrale d’une gamme de musique

%Synthèse d’une gamme de musique

%Q1:

fe=8192;
te=1/fe;
N=5000;
t=(0:N-1)*te;
do=10*cos(2*pi*262*t);
%sound(do,fe)
re=10*cos(2*pi*294*t);
%sound(re,fe)
mi=10*cos(2*pi*330*t);
%sound(mi,fe)
fa=10*cos(2*pi*349*t);
%sound(re,fa)
sol=10*cos(2*pi*392*t);
%sound(sol,fe)
la=10*cos(2*pi*440*t);
%sound(la,fe)
si=10*cos(2*pi*494*t);
%sound(si,fe)
do2=10*cos(2*pi*523*t);
%sound(do2,fe)
musique=[do,re,mi,fa,sol,la,si,do2];
sound(musique,fe)
 

%Spectre de la gamme de musique

%Q2:

f=(0:N-1)*(fe/N);
spectre_musique=fft(musique);
signalAnalyzer(abs(fftshift(spectre_musique)))
