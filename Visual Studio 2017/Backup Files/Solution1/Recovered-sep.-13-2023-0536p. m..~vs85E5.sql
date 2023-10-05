truncate table dbo.PropiedadesPorDetalle;
    truncate table dbo.DimensionesPorDetalle;
    DELETE FROM dbo.TransaccionDiarioGeneral
    DBCC CHECKIDENT ([dbo.TransaccionDiarioGeneral], RESEED, 0);
    DELETE FROM dbo.DiarioContableGeneral
    DBCC CHECKIDENT ([dbo.DiarioContableGeneral], RESEED, 0);




