.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


When using the ``not_if`` and ``only_if`` guards with the |resource execute| resource, the current working directory property (``cwd``) is **not** inherited from the resource. For example:

.. code-block:: ruby

   execute 'bundle install' do
     cwd '/myapp'
     not_if 'bundle check' # This is not run inside /myapp
   end
