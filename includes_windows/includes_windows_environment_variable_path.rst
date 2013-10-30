.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


On |windows|, the |chef client| must have two entries added to the ``PATH`` environment variable:

* ``C:\opscode\chef\bin``
* ``C:\opscode\chef\embedded\bin``

This is typically done during the installation of the |chef client| automatically. If these values (for any reason) are not in the ``PATH`` environment variable, the |chef client| will not run properly.