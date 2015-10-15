.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the |ruby| ``File`` class in a recipe. Because |chef| has the |resource file| resource, use ``File`` to use the |ruby| ``File`` class. For example:

.. code-block:: ruby

   execute 'apt-get-update' do
     command 'apt-get update'
     ignore_failure true
     only_if { apt_installed? }
     not_if { File.exist?('/var/lib/apt/periodic/update-success-stamp') }
   end
