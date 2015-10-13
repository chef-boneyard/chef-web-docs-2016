.. This is an included how-to. 


To verify if the alphabetic parts of a |fqdn| are all lowercase, run the following command:

.. code-block:: bash

   $ hostname -f | grep -E '^([[:digit:]]|[[:lower:]]|\.|-|_)+$' && echo yes

If the hostname is all lowercase, it will return something like:

.. code-block:: bash

   mychefserver.example.com
   yes

If the hostname's alphabetic parts are not all lowercase, it must be configured so that they are.
