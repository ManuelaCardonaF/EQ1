select * from dbo.DiarioContableGeneral
select * from dbo.DimensionesPorDetalle
select * from dbo.PropiedadesPorDetalle
select * from dbo.TransaccionDiarioGeneral
update d set EstadoProceso=0 from dbo.DiarioContableGeneral d where EstadoProceso=3
Borrado diarios 
delete  from dbo.DiarioContableGeneral 
delete from dbo.DimensionesPorDetalle 
delete from dbo.PropiedadesPorDetalle 
delete from dbo.TransaccionDiarioGeneral 
  No se puede devolver el registro DimensionAttributeValue para 1017165740