#/bin/sh

echo ""
echo " We are about to build SuiteCRM Analytics Data Integration"
echo ""

WORKING_DIR=$(pwd);

echo ""
echo " Installing..."
echo ""

if [ ! -d install/installation-files ]; then

    echo " Downloading Data Integration Zip"

    mkdir install/installation-files

    wget --progress=dot:giga https://downloads.sourceforge.net/project/pentaho/Pentaho%208.0/client-tools/pdi-ce-8.0.0.0-28.zip?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fpentaho%2Ffiles%2FPentaho%25208.0%2Fclient-tools%2Fpdi-ce-8.0.0.0-28.zip -O install/installation-files/suitecrm-client.zip

    # For local testing ONLY
    #wget --progress=dot:giga http://localhost:8000/pdi-ce-8.0.0.0-28.zip -O install/installation-files/suitecrm-client.zip

fi

    echo " Extracting files.."
    echo ""

    unzip install/installation-files/suitecrm-client.zip -d install/installation-files/ | awk 'BEGIN {ORS=" "} {if(NR%100==0)print "."}'



mkdir suitecrm-data-integration-server

mv install/installation-files/data-integration/ suitecrm-data-integration-server/client/

#cp -Rf install/suitecrm-data-integration/{.[!.],}* suitecrm-data-integration/configuration


#cp -Rf install/suitecrm-data-integration-server/{.[!.],}* suitecrm-data-integration-server/configuration
cp -Rf install/mysql-connector-java-5.1.47.jar suitecrm-data-integration-server/client/lib/

# Package the DDL into a single file

if [ -f install/suitecrm-data-integration/setup/DDL/SUITECRM_ANALYTICS.sql ]; then

	rm -Rf install/suitecrm-data-integration/setup/DDL/SUITECRM_ANALYTICS.sql
fi


awk 'FNR==1{print ""}{print}' install/suitecrm-data-integration/setup/DDL/*.sql > install/suitecrm-data-integration/setup/DDL/SUITECRM_ANALYTICS
mv install/suitecrm-data-integration/setup/DDL/SUITECRM_ANALYTICS install/suitecrm-data-integration/setup/DDL/SUITECRM_ANALYTICS.sql

cp -Rf install/suitecrm-data-integration/{.[!.],}* suitecrm-data-integration-server/
cp -Rf install/solution/ suitecrm-data-integration-server/




echo ""
read -r -p " Would you like to package the installation? This will create a zip file and remove the ready to use application server. [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
        zip -r suitecrm-data-integration-server.zip suitecrm-data-integration-server/
	
	rm -Rf suitecrm-data-integration-server/


fi



echo ""
read -r -p " Would you like to remove the installation files? This will save disk space. [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
	rm -Rf install/installation-files/
fi

echo ""
echo "-------------------------------------------------------------"
echo ""
echo " Build is complete!"
echo ""
echo "-------------------------------------------------------------"		
	


