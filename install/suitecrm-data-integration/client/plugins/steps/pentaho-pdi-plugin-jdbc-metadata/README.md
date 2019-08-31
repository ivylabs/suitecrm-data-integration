pentaho-pdi-plugin-jdbc-metadata
================================

A transformation step for pentaho data integration that gives access to the various metadata resultsets of the JDBC DatabaseMetaData object.

## Building

The plugin uses a standard maven build, to generate the artifact run the following:

```
mvn clean package
```

The package phase has a small ant snippet running that will generate the artifact to the dist folder for marketplace availability.