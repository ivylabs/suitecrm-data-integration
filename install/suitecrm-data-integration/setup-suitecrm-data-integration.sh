#/bin/sh

echo ""
echo " We are about to setup SuiteCRM Analytics Data Integration"
echo " Make sure you have configured the install.properties correctly"
echo ""
echo " *** IMPORTANT! *** Running this setup will discard any previous installations!"
echo ""

WORKING_DIR=$(pwd);

read -r -p " Have you configured install.properties? [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
	echo ""
	echo " Installing..."
	echo ""

	file="./install.properties"

	if [ -f "$file" ]
	then

		while IFS='=' read -r key value
		do
			key=$(echo $key | tr '.' '_')
			eval ${key}=\${value}
		done < "$file"

		cp -Rf setup/configuration/{.[!.],}* configuration

		sed -i 's|@@SOLUTION_ROOT_DIR@@|'${WORKING_DIR}'|' configuration/config
		sed -i 's|@@JVM_SIZE@@|'${JVM_SIZE}'|' configuration/config

		# JNDI Configuration

		sed -i 's|@@SUITECRM_HOST@@|'${SUITECRM_HOST}'|'  configuration/simple-jndi/jdbc.properties
		sed -i 's|@@SUITECRM_DATABASE@@|'${SUITECRM_DATABASE}'|'  configuration/simple-jndi/jdbc.properties
		sed -i 's|@@SUITECRM_PORT@@|'${SUITECRM_PORT}'|'  configuration/simple-jndi/jdbc.properties
		sed -i 's|@@SUITECRM_USERNAME@@|'${SUITECRM_USERNAME}'|'  configuration/simple-jndi/jdbc.properties
		sed -i 's|@@SUITECRM_PASSWORD@@|'${SUITECRM_PASSWORD}'|'  configuration/simple-jndi/jdbc.properties

		sed -i 's|@@SUITECRM_ANALYTICS_HOST@@|'${SUITECRM_ANALYTICS_HOST}'|'  configuration/simple-jndi/jdbc.properties
		sed -i 's|@@SUITECRM_ANALYTICS_PORT@@|'${SUITECRM_ANALYTICS_PORT}'|'  configuration/simple-jndi/jdbc.properties
		sed -i 's|@@SUITECRM_ANALYTICS_DATABASE@@|'${SUITECRM_ANALYTICS_DATABASE}'|'  configuration/simple-jndi/jdbc.properties
		sed -i 's|@@SUITECRM_ANALYTICS_USERNAME@@|'${SUITECRM_ANALYTICS_USERNAME}'|'  configuration/simple-jndi/jdbc.properties
		sed -i 's|@@SUITECRM_ANALYTICS_PASSWORD@@|'${SUITECRM_ANALYTICS_PASSWORD}'|'  configuration/simple-jndi/jdbc.properties

		sed -i 's|@@ETL_ROOT_DIR@@|'${WORKING_DIR}/solution'|'  configuration/.kettle/kettle.properties
		
		sed -i 's|@@SUITECRM_DATABASE@@|'${SUITECRM_DATABASE}'|'  configuration/.kettle/kettle.properties
		
		

		# Run ETL scripts to check DB connections and create DDL

		echo " Checking database Connections..."

		
		
		
		
		
		
		
		
		
		
		
		
		cd ${WORKING_DIR}/setup/
		./check-db-connections.sh

		if [ ! -f suitecrm-db-passed ]; then
			echo ""
			echo " We could not establish a connection to the SuiteCRM database!"
			echo " Please check the JDBC connection properties and run setup again."
		else
			echo ""
			echo " Connection to the SuiteCRM database was successful!"

			rm -Rf suitecrm-db-passed

			if [ ! -f suitecrm-dwh-db-passed ]; then
				echo ""
	                        echo " We could not establish a connection to the SuiteCRM Analytics database!"
        	                echo " Please check the JDBC connection properties and run setup again."
			else
				echo ""
				echo " Connection to the SuiteCRM Analytics database was successful!"
				echo ""

				rm -Rf suitecrm-dwh-db-passed

				# Execute DDL Scripts

				echo " Creating tables..."

				./execute-ddl-scripts.sh

				if [ ! -f ddl-passed ]; then
					echo ""
                        		echo " We could not create all the tables in the SuiteCRM DWH!"
                        		echo " Please make sure the SuiteCRM Analytics user has create table privileges and run setup again."
                		else
					echo ""
                        		echo " The SuiteCRM DWH tables were created successfully!"

					rm -Rf ddl-passed

					echo ""
					echo " Populate Control table with additional properties"

					./populate-control.sh

					#echo ""
					#echo " Populate Custom Field Mapping table"

					#./populate-custom-fields-mapping.sh
				fi
                	fi
		fi

		if [ "$SMTP_ENABLED" -eq "1" ]; then
			echo " We will configure your email properties and send you a test email"
                        echo " If you do not get this email then please check the log in logs/"
			./send-test-email.sh

                fi

		echo ""
                echo "-------------------------------------------------------------"
                echo ""
                echo " Installation is complete!"
                echo ""
                echo "-------------------------------------------------------------"


		

	else
		echo "$file not found."
	fi

	
else
	echo " Exiting!"
	echo ""
	exit

fi



