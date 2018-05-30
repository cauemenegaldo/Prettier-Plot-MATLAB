%% PrintPlotPng.m
% version 2.1
% author Caue Menegaldo
% Funcao para imprimir plot.
%
% name: nome com diretorio do arquivo a ser salvo; (obrigatorio)
% geo: geometria da impressao pode ser 'rec' (retangular), 'sqr'
% (quadrada) ou 'c' (customizavel). Isso e valido apenas para plot e
% opcional. O valor default e 'rec';
% caso tenha escolhido 'c' em geo, width e height tornam-se obrigatorios
% e representam a largura e altura respectivamente;
% res: resolucao de impressao. Opcional. O valor default e '-r600';
%
% Exemplos: PrintPlotPng('tex/fig/a2');
%           PrintPlotPng('tex/fig/a2','sqr');
%           PrintPlotPng('tex/fig/a2','c',6,6);
%           PrintPlotPng('tex/fig/a2','c',6,6,'-r450');

function PrintPlotPng(name,geo,width,height,res)

    if nargin > 5
        error('Excesso de entradas.');
    elseif nargin < 1
        error ('Ao menos uma entrada e obrigatoria.');
    end
    
    if nargin < 5        
        res = '-r600'; 
    end
    
    if nargin < 2
        geo = 'rec';
    end
    
    switch geo
        case 'rec'
            width = 6;
            height = 3;
        case 'sqr'
            width = 6;
            height = 4.2;
        case 'c'
            if nargin < 4
                error ('Geometria "c". Faltaram as dimensoes.');
            end
        otherwise
            error('geometria invalida.');
    end
      
    set(gcf, 'PaperPosition', [0 0 width height]); 
    set(gcf, 'PaperSize', [width height]); 
    print(gcf, name, '-dpng',res);
end