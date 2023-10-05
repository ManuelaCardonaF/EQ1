DECLARE @Bandera INT = 1
75056766
WHILE @Bandera < 2
BEGIN
    DECLARE @ReciboCodigo BIGINT,
            @Castigado BIT
    SELECT
        TOP 1
        @ReciboCodigo = p.NroPago,
        @Castigado = ISNULL(ca.Castigado,0)
    FROM InterfaceAX.PagoAX p
    JOIN SisteDesktop.CreditoAdicion ca
        ON ca.CreditoCodigo=p.NroObligacion
    LEFT JOIN InterfaceAX.DIANInvoiceInfo i
        ON i.NroObligacion = p.NroPago
    WHERE i.Id IS NULL AND (Mora >0 OR Financiacion>0 OR Legales>0 OR (Capital>0 AND @Castigado = 1))
    SELECT @ReciboCodigo,@Castigado

    EXEC [InterfaceAX].[DianInvoiceRecaudoCreate] @ReciboCodigo, 2, @Castigado
    
	SET @Bandera = @Bandera + 1
END

SELECT  top 100
	InvoiceissueDate,
	InvoiceStatusID,
	InvoiceStatusDescription,
	SendSelectionDate,
	*
FROM 
	InterfaceAX.DIANInvoiceInfo 

ORDER BY 
Id DESC
select *
FROM 
	InterfaceAX.DIANInvoiceDetails

ORDER BY 
Idinvoice DESC
select * 
FROM 
	InterfaceAX.DIANInvoicingResponses

ORDER BY 
IdInvoice DESC

 
  update d set InvoiceIssueDate='2023-08-15' FROM 
	InterfaceAX.DIANInvoiceInfo d where InvoiceStatusID=31

	Regla: FAD09c, Rechazo: La fecha de emision es anterior en mas de 10 dias de la fecha actual Regla: SinCódigo, Notificación: La validación del estado del RUT próximamente estará disponible. Regla: SinCódigo, Notificación: La validación del estado del RUT próximamente estará disponible.