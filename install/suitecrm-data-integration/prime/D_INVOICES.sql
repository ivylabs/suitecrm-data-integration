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
	,INVOICE_DATE_ENTERED
	,INVOICE_DATE_MODIFIED
	,INVOICE_DELETED
	,INVOICE_CURRENCY_ID
	,INVOICE_QUOTE_NUMBER
	,INVOICE_QUOTE_DATE
	,INVOICE_DATE
	,INVOICE_DUE_DATE
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
        ,{ts '1900-01-01 00:00:00.'}
        ,{ts '1900-01-01 00:00:00.'}
        ,0
        ,'Not Set'
        ,0
        ,{ts '1900-01-01 00:00:00.'}
        ,{ts '1900-01-01 00:00:00.'}
        ,{ts '1900-01-01 00:00:00.'}
);
