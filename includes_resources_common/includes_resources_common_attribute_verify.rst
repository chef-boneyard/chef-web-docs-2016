.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A block is arbitrary |ruby| defined within the resource block by using the ``verify`` property. When a block is ``true``, the |chef client| will continue to update the file as appropriate. For example:

.. code-block:: ruby

   template '/tmp/baz' do
     verify { 1 == 1 }
   end

or:

.. code-block:: ruby

   template '/etc/nginx.conf' do
     verify 'nginx -t -c %{path}'
   end

or:

.. code-block:: ruby

   template '/tmp/bar' do
     verify { 1 == 1}
   end

or:

.. code-block:: ruby

   template '/tmp/foo' do
     verify do |path|
       true
     end
   end

should all return ``true``. Whereas, the following should return ``false``:

.. code-block:: ruby

   template '/tmp/turtle' do
     verify '/usr/bin/false'
   end

If a string or a block return ``false``, the |chef client| run will stop and an error is returned.
