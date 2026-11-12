# 🔎 Metodologia e preparação dos dados

## 📥 Fonte e período

A fonte é o arquivo `Vendas_.xlsx`, aba `Consultores`. As seis colunas mensais da base correspondem a janeiro, fevereiro, março, abril, maio e junho de **2022**. Portanto, o período analisado é o primeiro semestre de 2022.

## 🧹 Etapas de tratamento em Power Query

1. Importação da pasta de trabalho Excel e seleção da aba `Consultores`.
2. Ajuste inicial dos tipos de dados e promoção dos cabeçalhos.
3. Conversão das colunas mensais para tipos numéricos.
4. Preenchimento para baixo dos campos `Vendedor`, `Item` e `Pagamento`.
5. Separação do campo `Vendedor` e remoção da segunda parte, mantendo o nome utilizado na análise.
6. Padronização dos nomes com capitalização apropriada e correção de `Murilu` para `Murilo`.
7. Despivotamento das colunas mensais, convertendo os meses em registros na coluna `Data` e os valores em `Valor`.
8. Definição de `Data` como data e `Valor` como moeda.

O script completo está em [`power-query/tratamento-dados.m`](../power-query/tratamento-dados.m). O caminho da planilha foi generalizado para não publicar um endereço local de computador; é necessário configurá-lo antes de atualizar a consulta em outro ambiente.

## 📊 Organização da visualização

O painel reúne um indicador de receita semestral, comparações por vendedor e produto, composição por forma de pagamento e evolução mensal. Também disponibiliza um filtro de trimestre.

## ⚠️ Consistência do período

A análise utiliza exclusivamente as datas identificadas na base de origem: janeiro a junho de 2022.
