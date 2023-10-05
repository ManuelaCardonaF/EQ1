select * from dbo.DiarioContableGeneral


    truncate table dbo.PropiedadesPorDetalle;
    truncate table dbo.DimensionesPorDetalle;
    DELETE FROM dbo.TransaccionDiarioGeneral
    DBCC CHECKIDENT ([dbo.TransaccionDiarioGeneral], RESEED, 0);
    DELETE FROM dbo.DiarioContableGeneral
    DBCC CHECKIDENT ([dbo.DiarioContableGeneral], RESEED, 0);

update d set EstadoProceso=1, FechaProceso=null,MensajeProceso= null from  dbo.DiarioContableGeneral d where Codigo=60