create table dadoRodape(
id						int identity primary key,
nome					varchar(60),
linha					int,
caracterInicial			int,
caracterFinal			int,
tipoDoDado				varchar(20),
formatacao				int
)

select * from dadoRodape