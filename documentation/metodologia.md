# Metodologia

## Fonte de dados

A análise utiliza o arquivo [Vendas_.xlsx](../data/Vendas_.xlsx), na aba Consultores. A planilha contém os valores de janeiro a junho de 2022, além das informações de vendedor, produto e forma de pagamento.

## Preparação no Power Query

O tratamento da base incluiu as seguintes etapas:

1. Importação da planilha e seleção da aba Consultores.
2. Ajuste dos cabeçalhos e dos tipos de dados.
3. Preenchimento dos campos de vendedor, item e pagamento nas linhas correspondentes.
4. Padronização dos nomes dos vendedores e correção de “Murilu” para “Murilo”.
5. Transformação das colunas mensais em linhas, mantendo a data e o valor em campos próprios.
6. Definição dos tipos de dados de data e moeda.

O script M está disponível em [power-query/tratamento-dados.m](../power-query/tratamento-dados.m). Para executá-lo em outro computador, é necessário ajustar o caminho local do arquivo Excel na primeira etapa da consulta.

## Construção do dashboard

No Power BI, os dados foram apresentados em indicadores e gráficos para comparar o resultado geral, os meses, os vendedores, os produtos e as formas de pagamento. O painel também possui um filtro de trimestre.
