%% PrettierPlotExample.m
% PrittierPlot.m e um script com o objetivo de deixar um grafico plotado
% com aparencia mais agradavel ao inserir num arquivo de apresentacao,
% artigo, trabalho etc.

%% Exemplo do PrettierPlot.m
% Funciona apenas depois que ja existe um gráfico plotado.
% Antes e chamar esse script precisa definir as seguintes variaveis:

% Dados plotados
% y1 e/ou y2 e/ou y3 e/ou y4 e/ou y5
% x1

% Legendas
% y1Leg e/ou y2Leg e/ou y3Leg e/ou y4Leg e/ou y5Leg

% Titulo
% titulo

% Descrição dos eixos
% xLab
% yLab

% Vamos la...
clear all; close all; clc;

% Como sugestao, antes de plotar o grafico, inicie uma figura com fundo
% branco:
figure('Color',[1.0 1.0 1.0]);

% Gragico de seno e cosseno de 0 a 8*pi
r = (0:pi/10:8*pi)';
s = sin(r);
c = cos(r);
plot(r,s,'b');
hold on;
plot(r,c,'r');
hold off;

% Definicao de variaveis para passar para o PrettierPlot.m:

x1 = r; y1 = s; y2 = c;
y1Leg = 'funcao seno'; y2Leg = 'funcao cosseno';
titulo = 'Exemplo do PrettierPlot';
xLab = 'Angulo(rad)'; yLab = 'Amplitude';
nf = 2;
% Caso nao queira ter que digitar quantas funcoes estao plotadas todas as
% vezes, recorra ao script e vera como automatizar essa questao na linha 33
PrettierPlot;