.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |windows| registry key can be used as a string in |ruby| code, such as when a registry key is used as the name of a recipe. In |ruby|, when a registry key is enclosed in a double-quoted string (``" "``), the same backslash character (``\``) that is used to define the registry key path separator is also used in |ruby| to define an escape character. Therefore, the registry key path separators must be escaped. For example, the following registry key:

.. code-block:: ruby

   HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Themes

will not work when it is defined like this:

.. code-block:: ruby

   registry_key 'HKCU\SOFTWARE\path\to\key\Themes' do
     ...
     action :some_action
   end

but will work when the path separators are escaped properly:

.. code-block:: ruby

   registry_key 'HKCU\\SOFTWARE\\path\\to\\key\Themes' do
     ...
     action :some_action
   end
