DECLARE @Bandera INT = 1

 

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




SELECT  

	InvoiceStatusID,
	InvoiceStatusDescription,
	SendSelectionDate,
	*
FROM 
	InterfaceAX.DIANInvoiceInfo 


ORDER BY 
	Id DESC


	update d   set InvoiceIssueDate='2023-08-29'  FROM InterfaceAX.DIANInvoiceInfo d where InvoiceIssueDate='2017-07-18'
Realizar conteo
	SELECT COUNT (*) FROM InterfaceAX.DIANInvoiceInfo WHERE InvoiceStatusID=39
	 select * from InterfaceAX.DIANInvoicingResponses where IdInvoice= 28090
	 select * from InterfaceAX.DIANInvoiceStatus


	 select*from InterfaceAX.DIANCreditNote