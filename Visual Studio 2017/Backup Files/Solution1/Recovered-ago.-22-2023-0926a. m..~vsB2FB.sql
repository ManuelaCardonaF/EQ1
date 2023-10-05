select * from   [SisteDesktop].[CierreRazonSocial] order by FechaCorteCierre desc


select*from InterfaceAX.CierreAX  where CierreCodigo=619594
 update d set FechaCorteCierre ='2023-08-17 'from   [SisteDesktop].[CierreRazonSocial] d  where Codigo=619594
  update d set EstadoInterfaceAXCodigo=0 from InterfaceAX.CierreAX d where Codigo=723660