.. This is an included how-to. 


The following example will go through all nodes on the server, and then replace the word ``foobar`` with ``baz``:

.. code-block:: bash

   $ knife xargs --pattern /nodes/* | perl -ex "s/foobar/baz"
