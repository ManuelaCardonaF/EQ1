select * from dbo.DiarioContableGeneral


update d set EstadoProceso=1, FechaProceso=null,MensajeProceso= null from  dbo.DiarioContableGeneral d where Codigo=60