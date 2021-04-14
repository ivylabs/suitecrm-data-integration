#/bin/sh

WORKING_DIR=$(pwd);

buildfile="./build.properties"

if [ -f "$buildfile" ]
then

    while IFS='=' read -r key value
    do
            key=$(echo $key | tr '.' '_')
            eval ${key}=\${value}
    done < "$buildfile"



else
        echo "$buildfile not found."
fi

versionfile="./version"

if [ -f "$versionfile" ]
then

    while IFS='=' read -r key value
    do
            key=$(echo $key | tr '.' '_')
            eval ${key}=\${value}
    done < "$versionfile"



else
        echo "$versionfile not found."
fi

rm -Rf install/suitecrm-analytics/documentation/*.pdf

wget https://docs.google.com/document/${SUITECRM_DATA_INTEGRATION_INSTALLATION}/export?format=pdf -O install/suitecrm-data-integration/documentation/suitecrm-data-integration-installation-${VERSION}.pdf
