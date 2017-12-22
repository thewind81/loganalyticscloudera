#!/bin/bash
solrctl instancedir --generate /var/lib/solr/collection1
mv /var/lib/solr/collection1/conf/schema.xml /var/lib/solr/collection1/conf/schema.xml.old
wget https://raw.githubusercontent.com/thewind81/loganalyticscloudera/master/schema.xml -O /var/lib/solr/collection1/conf/schema.xml
solrctl instancedir --create collection1 /var/lib/solr/collection1
solrctl collection --create collection1 -s 1
