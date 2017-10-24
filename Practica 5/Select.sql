select Capacidad from Transporte order by IdCompañia DESC

select MIN(capacidad) as 'Capacidad Minima' FROM Transporte
select MAX(capacidad) as 'Capacidad Minima' FROM Transporte
Select COUNT(NOMBRE) AS 'Cantidad de Compañias' FROM Compañia

Select Nombre From Ciudad where Nombre = 'Puebla'
Select Capacidad from Transporte where Capacidad > 200

Select Nombre FROM Compañia group by Nombre Having Nombre = 'AeroMexico'

Select top (5) Nombre from Ciudad