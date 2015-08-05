.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the ``rescue`` clause to make sure that a log message is always provided. For example:

.. code-block:: ruby

   rescue LoadError => e
     Ohai::Log.debug('ip_scopes: cannot load gem, plugin disabled: #{e}')
   end
