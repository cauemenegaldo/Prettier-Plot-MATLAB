%% PrintSimPng.m
% version 2.1
% author Caue Menegaldo
% Funcao para imprimir diagrama de blocos do simulink.
%
% name: nome com diretorio do arquivo a ser salvo; (obrigatorio)
% res: resolucao de impressao. (Opcional). O valor default e '-r150'.
%
% Exemplos: PrintSimPng('tex/fig/sim1a1');
%           PrintSimPng('tex/fig/sim1a1','-r200');

function PrintSimPng(name,res)

    if nargin > 2
        error('Excesso de entradas.');
    elseif nargin < 1
        error ('Ao menos uma entrada e obrigatoria.');
    end
    if nargin < 2       
        res = '-r150';
    end
      
    print('-s', '-dpng',res,name);
    
end