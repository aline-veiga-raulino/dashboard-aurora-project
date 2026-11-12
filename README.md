# Aurora | Dashboard de vendas

Projeto desenvolvido na disciplina **Business Intelligence e Data Visualization**, do MBA em Data Science, Inteligência Artificial e Analytics da USP.

## Sobre o projeto

A Aurora é uma empresa fictícia que comercializa softwares para outras empresas. O objetivo deste trabalho foi organizar os dados de vendas e desenvolver um dashboard para acompanhar os resultados do primeiro semestre de **2022**.

O painel reúne a receita do período, a evolução mensal das vendas, o desempenho por vendedor e produto e a participação das formas de pagamento.

## O que a análise mostra

- 💰 **Receita no semestre:** R$ 3.395.164,50.
- 📅 **Menor faturamento mensal:** janeiro, com R$ 295.934,50.
- 📈 **Maior faturamento mensal:** abril, com R$ 655.442,00.
- 👤 **Maior valor por vendedor:** Luís, com aproximadamente R$ 702,91 mil.
- 🧩 **Maior valor por produto:** SAP, com aproximadamente R$ 748,60 mil.
- 💳 **Forma de pagamento:** as vendas parceladas representam cerca de 98% do valor total.

## Dashboard

![Dashboard Aurora](images/dashboard-aurora.png)

O relatório foi desenvolvido no Power BI. O arquivo editável está disponível em [dashboard/Painel Aurora.pbix](dashboard/Painel%20Aurora.pbix).

[**Abrir o relatório interativo no Power BI**](https://app.powerbi.com/view?r=eyJrIjoiYTQyY2E5OWYtOGExNC00Y2ZjLTkwMDQtODcyNTZlZDM2ZjQxIiwidCI6IjYxOTIxZGExLTBkNDUtNDk5OS04MDQzLWYxZWM3MzIwYTYxNCJ9)

## Tratamento dos dados

A base utilizada está em [data/Vendas_.xlsx](data/Vendas_.xlsx). No Power Query, os dados foram preparados para padronizar os campos, corrigir o nome de um vendedor e transformar as colunas mensais em registros por data.

O código M utilizado está em [power-query/tratamento-dados.m](power-query/tratamento-dados.m).

## Estrutura do repositório

```text
dashboard-aurora-project/
├── README.md
├── dashboard/
│   └── Painel Aurora.pbix
├── data/
│   └── Vendas_.xlsx
├── documentation/
│   ├── analises.md
│   ├── case.md
│   ├── insights.md
│   ├── limitacoes.md
│   └── metodologia.md
├── images/
│   └── dashboard-aurora.png
└── power-query/
    └── tratamento-dados.m
```

## Documentação

- [Contexto do projeto](documentation/case.md)
- [Metodologia](documentation/metodologia.md)
- [Análise do dashboard](documentation/analises.md)
- [Principais insights](documentation/insights.md)
- [Limitações](documentation/limitacoes.md)

**Ferramentas:** Power BI, Power Query, Excel e GitHub.
