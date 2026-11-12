let
    Origem = Excel.Workbook(File.Contents("C:\\Dados\\Vendas_.xlsx"), null, true),
    #"Navegação 1" = Origem{[Item = "Consultores", Kind = "Sheet"]}[Data],
    #"Tipo de coluna alterado" = Table.TransformColumnTypes(#"Navegação 1", {{"Column1", type text}, {"Column2", type text}, {"Column3", type text}}),
    #"Cabeçalhos promovidos" = Table.PromoteHeaders(#"Tipo de coluna alterado", [PromoteAllScalars = true]),
    #"Cabeçalhos promovidos 1" = Table.PromoteHeaders(#"Cabeçalhos promovidos", [PromoteAllScalars = true]),
    #"Tipo de coluna alterado 1" = Table.TransformColumnTypes(#"Cabeçalhos promovidos 1", {{"01/01/2022", type number}, {"01/02/2022", Int64.Type}, {"01/03/2022", Int64.Type}, {"01/04/2022", Int64.Type}, {"01/05/2022", Int64.Type}, {"01/06/2022", Int64.Type}}),
    #"Preenchido abaixo" = Table.FillDown(#"Tipo de coluna alterado 1", {"Vendedor", "Item", "Pagamento"}),
    #"Dividir coluna por delimitador" = Table.SplitColumn(#"Preenchido abaixo", "Vendedor", Splitter.SplitTextByDelimiter(" "), {"Vendedor.1", "Vendedor.2"}),
    #"Tipo de coluna alterado 2" = Table.TransformColumnTypes(#"Dividir coluna por delimitador", {{"Vendedor.1", type text}, {"Vendedor.2", type text}}),
    #"Colunas removidas" = Table.RemoveColumns(#"Tipo de coluna alterado 2", {"Vendedor.2"}),
    #"Colunas renomeadas" = Table.RenameColumns(#"Colunas removidas", {{"Vendedor.1", "Vendedor"}}),
    #"Todas as palavras foram colocadas em maiúscula" = Table.TransformColumns(#"Colunas renomeadas", {{"Vendedor", each Text.Proper(_), type nullable text}}),
    #"Valor substituído" = Table.ReplaceValue(#"Todas as palavras foram colocadas em maiúscula", "Murilu", "Murilo", Replacer.ReplaceText, {"Vendedor"}),
    #"Outras colunas não dinâmicas" = Table.UnpivotOtherColumns(#"Valor substituído", {"Vendedor", "Item", "Pagamento"}, "Atributo", "Valor"),
    #"Colunas renomeadas 1" = Table.RenameColumns(#"Outras colunas não dinâmicas", {{"Atributo", "Data"}}),
    #"Tipo de coluna alterado 3" = Table.TransformColumnTypes(#"Colunas renomeadas 1", {{"Data", type date}, {"Valor", Currency.Type}})
in
    #"Tipo de coluna alterado 3"
