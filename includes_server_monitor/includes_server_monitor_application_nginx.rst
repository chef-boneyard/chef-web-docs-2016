.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use |nginx| to monitor for services that may be returning 504 errors. Use the following command on a front-end machine:

.. code-block:: bash

   $ grep 'HTTP/1.1" 504' /var/log/opscode/nginx/access.log

and then extract the URLs and sort them by ``uniq`` count:

.. code-block:: bash

   $ grep 'HTTP/1.1" 504' nginx-access.log | cut -d' ' -f8 | sort | uniq -c | sort

In a large installation, restricting these results to a subset of results may be necessary:

.. code-block:: bash

   $ tail -10000 nginx-access.log | grep 'HTTP/1.1" 504' | cut -d' ' -f8 | sort | uniq -c | sort

