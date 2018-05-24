%% Prettier Plot
% PrettierPlot.m
% version 2.1
% Author Caue Menegaldo
%
% Script para deixar as plotagens graficas mais bonitas para
% apresentar em relatorios, trabalhos, artigos, etc.
%
% Importante: Esse script funciona apenas depois que ja existe um gráfico plotado.
% Sugiro que antes de plotar o grafico inicie uma figura com fundo branco:
% figure('Color',[1.0 1.0 1.0]);

%% Pre definicoes necessarias
% Antes e chamar esse script precisa definir as seguintes variaveis:

% Dados plotados
% y1 e/ou y2 e/ou y3 e/ou y4 e/ou y5 e/ou y6 e/ou y7 e/ou y8
% x1

% Legendas
% y1Leg e/ou y2Leg e/ou y3Leg e/ou y4Leg e/ou y5Leg e/ou y6Leg e/ou y7Leg e/ou y8Leg

% Titulo
% titulo

% Descrição dos eixos
% xLab
% yLab

%% Funcionamento

%% Avisos e Entradas
% Caso nao queira ter que responder todas as vezes, comente os comandos
% abaixo e defina a variavel nf antes de chamar esse script.
% fprintf('Antencao: Lembresse que algumas variaveis precisam ser predefinidas.\n\n');
% nf = input('Quantas funcoes estao plotadas no grafico?\n Aguardando resposta...\n');

test = true;

switch nf
    case 1
        yLeg = {y1Leg};
        miny = min(y1);
        maxy = max(y1);  
    case 2
        yLeg = [{y1Leg}, {y2Leg}];
        miny = min([min(y1) min(y2)]);
        maxy = max([max(y1) max(y2)]);      
    case 3
        yLeg = [{y1Leg}, {y2Leg}, {y3Leg}];
        miny = min([min(y1) min(y2) min(y3)]);
        maxy = max([max(y1) max(y2) max(y3)]);
    case 4
        yLeg = [{y1Leg}, {y2Leg}, {y3Leg}, {y4Leg}];
        miny = min([min(y1) min(y2) min(y3) min(y4)]);
        maxy = max([max(y1) max(y2) max(y3) max(y4)]);     
    case 5
        yLeg = [{y1Leg}, {y2Leg}, {y3Leg}, {y4Leg}, {y5Leg}];
        miny = min([min(y1) min(y2) min(y3) min(y4) min(y5)]);
        maxy = max([max(y1) max(y2) max(y3) max(y4) max(y5)]);
    case 6
        yLeg = [{y1Leg}, {y2Leg}, {y3Leg}, {y4Leg}, {y5Leg}, {y6Leg}];
        miny = min([min(y1) min(y2) min(y3) min(y4) min(y5) min(y6)]);
        maxy = max([max(y1) max(y2) max(y3) max(y4) max(y5) max(y6)]);
    case 7
        yLeg = [{y1Leg}, {y2Leg}, {y3Leg}, {y4Leg}, {y5Leg}, {y6Leg}, {y7Leg}];
        miny = min([min(y1) min(y2) min(y3) min(y4) min(y5) min(y6) min(y7)]);
        maxy = max([max(y1) max(y2) max(y3) max(y4) max(y5) max(y6) max(y7)]);
    case 8
        yLeg = [{y1Leg}, {y2Leg}, {y3Leg}, {y4Leg}, {y5Leg}, {y6Leg}, {y7Leg},...
            {y8Leg}];
        miny = min([min(y1) min(y2) min(y3) min(y4) min(y5) min(y6) min(y7)...
            min(y8)]);
        maxy = max([max(y1) max(y2) max(y3) max(y4) max(y5) max(y6) max(y7)...
            max(y8)]);          
    otherwise
        disp('valor invalido.');
        test = false;
end

if test
% Limitacao dos eixos
n = floor(log10(maxy-miny));
inc = 10^(-1+n);

if miny == 0
    incb = 0;
else
    incb = inc;
end
    
if maxy == 0
    inct = 0;
else
    inct = inc;
end

axis([min(x1),max(x1),...
    miny - incb, maxy + inct]);

% Modificações dos eixos
set(gca,...
'Box','off', ...
'TickDir'     , 'out'     , ...
'TickLength'  , [.02 .02] , ...
  'XMinorTick'  , 'on'      , ...
  'YMinorTick'  , 'on'      , ...
  'YGrid'       , 'on'      , ...
  'XGrid'       , 'on'      , ...
  'XColor'      , [.3 .3 .3], ...
  'YColor'      , [.3 .3 .3], ...
  'LineWidth'   , 1,... 
'Units','normalized',...    
'FontUnits','points',...
'FontWeight','normal',...
'FontSize',10,...
'FontName','Times');

% Implementar o label y:
ylabel(yLab,...
'FontUnits','points',...
'FontWeight','normal',...
'FontSize',12,...
'FontName','Times'); %'interpreter','latex',...

% Implementar o label x:
xlabel(xLab,...
'FontUnits','points',...
'FontWeight','normal',...
'FontSize',12,...
'FontName','Times');

% alterar o titulo
title(titulo,...
'FontUnits','points',...
'FontWeight','normal',...
'FontSize',14,...
'FontName','Times');

legend(yLeg,...
'FontSize',12,...
'FontName','Times',...
'Location','best');  
end

clear nf test miny maxy n inc incb inct yLeg;