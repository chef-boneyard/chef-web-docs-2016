.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A start handler is a newer feature within the larger set of handler functionality. They became necessary when |company_name| started building add-ons for |chef server oec|. The |reporting| add-on is designed to create reporting data based on a |chef client| run. And since |reporting| needs to be able to collect data for the entire |chef client| run, |reporting| needs to be enabled before anything else happens.