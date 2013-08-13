.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

Policy settings can be used to map business and operational requirements, such as process and workflow, to settings stored on the |chef server|:

* Roles define server types, such as "web server" or "database server"
* Environments define process, such as "dev", "staging", or "production"
* Certain types of data---passwords, user account data, and other sensitive items---can be placed in data bags, which are located in a secure sub-area on the |chef server| that can only be accessed by nodes that authenticate to the |chef server| with the correct |ssl| certificates
