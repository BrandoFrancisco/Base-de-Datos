/*Primera Forma*/
insert into Categoria (IdCategoria,Categoria,Costo) values (NewId(),'Turista', 1200)
/*Segunda Forma*/
insert into Categoria values (NewId(),'Primera Clase', 2500)
/*Tercera Forma*/
insert into Estado select NewId(),'	Nuevo Leon'
insert into Estado select NewId(),'Mexico'
insert into Estado select NewId(),'Baja California Sur'
/*Cuarta Forma*/
insert into Pais select NewId(),Nombre from Estado


