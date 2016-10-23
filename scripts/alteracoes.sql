alter table dadoCabecalho
add obrigatorio bit

alter table dadoCabecalho
add listaDeValores varchar(250)

alter table dadoDocumento
add obrigatorio bit

alter table dadoDocumento
add listaDeValores varchar(250)

alter table dadoRodape
add obrigatorio bit

alter table dadoRodape
add listaDeValores varchar(250)

create table [user](
	id			int primary key identity,
	email		varchar(250) unique not null,
	password	varchar(250) not null
)

