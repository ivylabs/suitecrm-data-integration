# SuiteCRM Data Integration
SuiteCRM Data Integration handles the population of the Data Warehouse. Its job is to pull data from SuiteCRM, denormalise the data and prepare it for analytics using SuiteCRM Analytics

# Requirements

* Linux Environment
* OpenJDK 8 JRE
* wget
* unzip
* zip
* Mysql Server

# Install Java

* sudo apt-get update
* sudo apt-get install openjdk-8-jre

# Install MySQL

* https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-18-04

# Build Instructions

* Clone the Repository
* Run the build.sh

# Server Setup Instructions

* Unzip suitecrm-analytics-server.zip
* Create an empty MySQL database for the Data Warehouse tables
* Change Dirctory to suitecrm-data-integration-server/

# Configure Installation
    • Open the install.properties in a text editor
    • Configure the database connection properties
        ◦ Properties that start with SUITECRM_ should point to your existing SuiteCRM Installation
        ◦ Properties that start with SUITECRM_ANALYTICS_ should point to the newly created database in the previous steps.
        ◦ NOTE: The user for the SUITECRM_ANALYTCS database should have root permissions so that the installation can create the Data Warehouse tables

* Execute setup-suitecrm-data-integration.sh

# Populate the Data Warehouse
Now that the solution is configured we can populate the Data Warehouse with data from SuiteCRM. Simply run:

* ./run-suitecrm-data-integration.sh

This script will get all the data from from SuiteCRM on the first run and with any future runs, it will get the latest changed data. This means the first run could take some time but subsequent runs will be faster depending on the volume of new data.
Check The Data Warehouse
Once the script above has been completed without errors you can log into MySQL to check that the SuiteCRM Data Warehouse contains data.


