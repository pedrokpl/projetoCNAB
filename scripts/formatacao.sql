create table formatacao(
id								int identity primary key,
nome							varchar(60),
quantidadeCaracteres			int,
quantidadeLinhasCabecalho		int,
quantidadeLinhasRodape			int,
banco							int
)

--drop table formatacao

select * from formatacao