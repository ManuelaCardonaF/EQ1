[21/3 11:09 a. m.] Antonio Gonzalez Restrepo

    truncate table dbo.PropiedadesPorDetalle;

    truncate table dbo.DimensionesPorDetalle;

    DELETE FROM dbo.TransaccionDiarioGeneral

    DBCC CHECKIDENT ([dbo.TransaccionDiarioGeneral], RESEED, 0);

    DELETE FROM dbo.DiarioContableGeneral

    DBCC CHECKIDENT ([dbo.DiarioContableGeneral], RESEED, 0);




select * from dbo.DiarioContableGeneral;

    select * from dbo.TransaccionDiarioGeneral;

    select * from dbo.DimensionesPorDetalle;

    select * from dbo.PropiedadesPorDetalle;