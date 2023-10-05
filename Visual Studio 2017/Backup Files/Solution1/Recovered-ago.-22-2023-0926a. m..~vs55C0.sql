    truncate table dbo.PropiedadesPorDetalle;
    truncate table dbo.DimensionesPorDetalle;
    DELETE FROM dbo.TransaccionDiarioGeneral
    DBCC CHECKIDENT ([dbo.TransaccionDiarioGeneral], RESEED, 0);
    DELETE FROM dbo.DiarioContableGeneral
    DBCC CHECKIDENT ([dbo.DiarioContableGeneral], RESEED, 0);


select * from dbo.DiarioContableGeneral
select * from dbo.DimensionesPorDetalle
select * from dbo.PropiedadesPorDetalle
select * from dbo.TransaccionDiarioGeneral

_------
SELECT 
		   Codigo,
		   CierreCodigo,
		   --'900222222'
		   NitRazonSocial,
		   FechaCorte,
		   ValorCruzadoRecibos,
		   ValorCruceAdicional,
		   ValorRetencion,
		   Paso,
		   EstadoInterfaceAXCodigo,
		   NombreRazonSocial
	FROM InterfaceAX.CierreAX 
	WHERE EstadoInterfaceAXCodigo=0  AND Paso = 0
	ORDER BY NombreRazonSocial