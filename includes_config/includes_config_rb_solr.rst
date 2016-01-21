.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|config rb solr| This file is the default configuration file and is loaded every time these executable are run. The |chef solr| and |chef solr indexer| executables can be run as a daemon. (The |chef solr rebuild| executable cannot be run as an daemon.) 

The configuration file is located at: |path chef solr rb|. When a |config rb solr| file is present in this directory, the settings contained within that file will override the default configuration settings.