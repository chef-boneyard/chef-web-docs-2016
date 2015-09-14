.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Unlike definitions, custom resources are able to use :doc:`common resource properties </resource_common>`. For example, ``only_if``:

.. code-block:: ruby

   host_porter 'www1' do
     port 4001
     only_if '{ node['hostname'] == 'foo.bar.com' }'
   end
