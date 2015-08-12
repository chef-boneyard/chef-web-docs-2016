.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


**Reason**

The database template ``template1`` does not exist.

**Possible Causes**

* The ``template1`` database template has been removed from the remote server
* xxxxx

**Verify**

* Run the following command (as a superuser):

  .. code-block:: bash

     CREATE DATABASE template1 TEMPLATE template0

  or:

  .. code-block:: bash

     createdb -T template0 template1
