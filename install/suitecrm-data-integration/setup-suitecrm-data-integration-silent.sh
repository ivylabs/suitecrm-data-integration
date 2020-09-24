#/bin/sh

WORKING_DIR=$(pwd);

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


		
		
		
		
		
		
		
		
		
		
		
		
		cd ${WORKING_DIR}/setup/
		./check-db-connections.sh

		if [ ! -f suitecrm-db-passed ]; then


			START_LINE=$(grep -n "ETL LOG START" ../logs/check-database-connections.log | cut -f1 -d:)
			END_LINE=$(grep -n "ETL LOG END" ../logs/check-database-connections.log | cut -f1 -d:)


		else


			rm -Rf suitecrm-db-passed

			if [ ! -f suitecrm-dwh-db-passed ]; then


                        	START_LINE=$(grep -n "ETL LOG START" ../logs/check-database-connections.log | cut -f1 -d:)
                        	END_LINE=$(grep -n "ETL LOG END" ../logs/check-database-connections.log | cut -f1 -d:)


			else

				rm -Rf suitecrm-dwh-db-passed

				# Execute DDL Scripts


				./execute-ddl-scripts.sh

				if [ ! -f ddl-passed ]; then


                                	START_LINE=$(grep -n "ETL LOG START" ../logs/create-tables.log | cut -f1 -d:)
                                	END_LINE=$(grep -n "ETL LOG END" ../logs/create-tables.log | cut -f1 -d:)


                		else


					rm -Rf ddl-passed


					./populate-control.sh

					#echo ""
					#echo " Populate Custom Field Mapping table"

					#./populate-custom-fields-mapping.sh


					 # Install Demo Data

       						
						./populate-demo-data.sh

						if [ ! -f suitecrm-db-demo-passed ]; then


							START_LINE=$(grep -n "ETL LOG START" ../logs/populate-demo-data.log | cut -f1 -d:)
							END_LINE=$(grep -n "ETL LOG END" ../logs/populate-demo-data.log | cut -f1 -d:)


						else

							rm -Rf suitecrm-db-demo-passed

						   	
						fi
						
					fi
				fi
			fi
		
		
		if [ "$SMTP_ENABLED" -eq "1" ]; then

			./send-test-email.sh
			
 		fi
 		else

	exit

fi

