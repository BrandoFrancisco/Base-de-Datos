
-- Primer Reporte
CREATE VIEW CompañiaTransporteView as
Select Compañia.IdCompañia,Compañia.Nombre,Transporte.Capacidad
FROM Compañia
INNER JOIN Transporte ON Compañia.IdCompañia = Transporte.IdCompañia;

Select * from CompañiaTransporteView

--Segundo Reporte
Select * into #temp
From CompañiaTransporteView

CREATE VIEW TotalDeCompañias as
Select count(Nombre) as NumeroDeCompañias From CompañiaTransporteView

Select * FROM TotalDeCompañias

--Tercer Reporte
CREATE VIEW HotelCiudadView as
Select Hotel.Nombre as Hotel,Ciudad.Nombre as Ciudad
FROM Hotel
INNER JOIN Ciudad ON Hotel.IdCiudad = Ciudad.IdCiudad;

Select * From HotelCiudadView

--Cuarto Reporte
CREATE VIEW TotalHotelView as
Select Count(Hotel) as TotalDeHoteles
FROM HotelCiudadView

Select * FROM TotalHotelView