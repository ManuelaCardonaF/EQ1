
update d set EstadoProceso=0 from dbo.DiarioContableGeneral d where Codigo=7
Borrado diarios 
delete  from dbo.DiarioContableGeneral 
delete from dbo.DimensionesPorDetalle 
delete from dbo.PropiedadesPorDetalle 
delete from dbo.TransaccionDiarioGeneral 
  No se puede devolver el registro DimensionAttributeValue para 1017165740


  select top 10 * from [InterfaceAX].[ConsolidadoFactoring]  

  select * from dbo.DiarioContableGeneral;
    select * from dbo.TransaccionDiarioGeneral;
    select * from dbo.DimensionesPorDetalle;
    select * from dbo.PropiedadesPorDetalle;

 

    truncate table dbo.PropiedadesPorDetalle;
    truncate table dbo.DimensionesPorDetalle;
    DELETE FROM dbo.TransaccionDiarioGeneral
    DBCC CHECKIDENT ([dbo.TransaccionDiarioGeneral], RESEED, 0);
    DELETE FROM dbo.DiarioContableGeneral
    DBCC CHECKIDENT ([dbo.DiarioContableGeneral], RESEED, 0);