USE [SistecreditoV2Desarrollo]
GO
/****** Object:  StoredProcedure [InterfaceAX].[sc2_Add_CierreAXCreate]    Script Date: 17/08/2023 2:27:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Daniel Rodas
-- Create date: 15/12/2016
-- Description:	Insert en la tabla [InterfaceAX].[CierreAX]
-- Version: 1
-- =============================================
ALTER   PROCEDURE [InterfaceAX].[sc2_Add_CierreAXCreate] (
	@CierreCodigo bigint
)

--WITH EXECUTE AS 'SQLGRANT'
AS

	SET NOCOUNT ON

	Insert Into InterfaceAX.CierreAX 
			    (NombreRazonSocial,
				CierreCodigo,
				NitRazonSocial,
				FechaCorte,
				ValorCruzadoRecibos,
				ValorCruceAdicional,
				ValorRetencion,
				Paso,
				FechaCreacion,
				FechaProceso,
				Error,
				EstadoInterfaceAXCodigo)
		select	NombreRazonSocial= r.Nombre,
				CierreCodigo=rz.codigo,
				NitRazonSocial=(select nit from [dbo].[NitDigito](r.Nit)),
				FechaCorte= rz.FechaCorteCierre,
				ValorCruzadoRecibos=rz.ValorAplicar,
				ValorCruceAdicional=rz.ValorCruceAdicional,
				ValorRetencion=rz.ValorRetencionPeriodoActual,
				Paso=0,
				FechaCreacion=getdate(),
				FechaProceso=null,
				Error=null,
				EstadoInterfaceAXCodigo=4
		from	SisteDesktop.CierreRazonSocial rz WITH(NOLOCK)
		join	RazonSocial r WITH(NOLOCK) on rz.RazonSocialCodigo=r.Codigo 
		where rz.Codigo=@CierreCodigo
