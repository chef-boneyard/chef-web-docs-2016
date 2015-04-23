.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


Run:

.. code-block:: bash

   $ kitchen verify

Returns:

.. code-block:: bash

   apache
     is awesome
     is installed (FAILED - 1)
   
     Failures:
   
       1) apache is installed
         Failure/Error: expect(package("httpd")).to be_installed
           expected Package "httpd" to be installed
           /bin/sh -c rpm\ -q\ httpd
           package httpd is not installed
