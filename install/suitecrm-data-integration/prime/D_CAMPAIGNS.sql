INSERT INTO D_CAMPAIGNS
(
	CAMPAIGN_TK
	,VERSION
	,DATE_FROM
	,DATE_TO
	,CAMPAIGN_ID
	,CAMPAIGN_NAME
	,CAMPAIGN_CREATED_BY
	,CAMPAIGN_DELETED
	,CAMPAIGN_TRACKER_KEY
	,CAMPAIGN_TRACKER_COUNT
	,CAMPAIGN_REFER_URL
	,CAMPAIGN_TRACKER_TEXT
	,CAMPAIGN_START_DATE
	,CAMPAIGN_END_DATE
	,CAMPAIGN_STATUS
	,CAMPAIGN_IMPRESSIONS
	,CAMPAIGN_BUDGET
	,CAMPAIGN_EXPECTED_COST
	,CAMPAIGN_ACTUAL_COST
	,CAMPAIGN_EXPECTED_REVENUE
	,CAMPAIGN_TYPE
	,CAMPAIGN_OBJECTIVE
	,CAMPAIGN_CONTENT
	,CAMPAIGN_FREQUENCY
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
        ,0
        ,0
        ,'Not Set'
        ,'Not Set'
        ,{ts '1900-01-01 00:00:00.'}
        ,{ts '1900-01-01 00:00:00.'}
        ,'Not Set'
        ,0
        ,0
        ,0
        ,0
        ,0
        ,'Not Set'
        ,'Not Set'
        ,'Not Set'
        ,'Not Set'
);
