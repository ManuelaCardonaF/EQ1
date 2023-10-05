select * from dbo.DiarioContableGeneral
select * from dbo.DimensionesPorDetalle
select * from dbo.PropiedadesPorDetalle
select * from dbo.TransaccionDiarioGeneral where CodigoDiarioGeneral=27

update d set TipoCuenta='Proveedor'from dbo.TransaccionDiarioGeneral d where Codigo=  5877

 5877


update d set EstadoProceso=0,Mensajeproceso=null, FechaProceso= null  from dbo.DiarioContableGeneral d where Codigo=27 



    truncate table dbo.PropiedadesPorDetalle;
    truncate table dbo.DimensionesPorDetalle;
    DELETE FROM dbo.TransaccionDiarioGeneral
    DBCC CHECKIDENT ([dbo.TransaccionDiarioGeneral], RESEED, 0);
    DELETE FROM dbo.DiarioContableGeneral
    DBCC CHECKIDENT ([dbo.DiarioContableGeneral], RESEED, 0);