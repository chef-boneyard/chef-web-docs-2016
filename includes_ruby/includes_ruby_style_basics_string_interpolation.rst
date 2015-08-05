.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


When strings have quotes within quotes, use double quotes (``" "``) on the outer quotes, and then single quotes (``' '``) for the inner quotes. For example:

.. code-block:: ruby

   Chef::Log.info("Loaded from aws[#{aws['id']}]")

.. code-block:: ruby

   "node['mysql']['secretpath']"

.. code-block:: ruby

   "#{ENV['HOME']}/chef.txt"

.. code-block:: ruby

   antarctica_hint = hint?('antarctica')
   if antarctica_hint['snow']
     "There are #{antarctica_hint['penguins']} penguins here."
   else
     'There is no snow here, and penguins like snow.'
   end
