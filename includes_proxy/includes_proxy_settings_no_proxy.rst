.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``no_proxy`` setting is used to specify addresses for which the proxy should
not be used. This can be a single address or a comma-separated list of
addresses. Wildcard matching will work in this list.

Example:

.. code-block:: ruby

   no_proxy 'test1.example.com,*.example2.com,*.*.example3.*'
