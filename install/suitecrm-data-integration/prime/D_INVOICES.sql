INSERT INTO D_INVOICES
(
	INVOICE_TK
	,VERSION
	,DATE_FROM
	,DATE_TO
	,INVOICE_ID
	,INVOICE_NAME
	,INVOICE_DESCRIPTION
	,INVOICE_NUMBER
	,INVOICE_STATUS
	,INVOICE_DELETED
	,INVOICE_CURRENCY_ID
	,INVOICE_QUOTE_NUMBER
)
VALUES (
        0
        ,1
        ,{ts '1900-01-01 00:00:00.'}
        ,{ts '2200-01-01 00:00:00.'}
        ,'N/A'
        ,'Not Set'
        ,'Not Set'
        ,0
        ,'Not Set'
        ,'No'
        ,'Not Set'
        ,0
);
