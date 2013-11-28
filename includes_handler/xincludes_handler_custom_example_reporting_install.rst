.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


To use a start handler, it must be installed on a node so that it available to the |chef client| at the very start of the run. There are two ways to do this:

* By using the |cookbook chef_client| cookbook
* By modifying the client.rb file, and then adding the appropriate information by using ``start_handlers`` setting

(The |reporting| add-on always uses the |cookbook chef_client| to install the start handler.)
