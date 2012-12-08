.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource windows_registry| resource in a recipe is as follows:

.. code-block:: ruby

   registry "name" do
     attribute "value"
     ...
     values [{
       :name => "name",
       :type => :string,
       :data => "data"
       }
       {
       :name => "name",
       :type => :string,
       :data => "data"
       }
       ...
       ]
     action :action
   end

where 

* ``registry`` tells |chef| to use the ``Windows::Registry`` provider during the |chef| run
* ``"name"`` is the path to the registry
* ``attribute`` is zero (or more) the available attributes
* ``values`` is the value of the registry key to be created or deleted. ``values`` is a hash that specifies the ``:name``, ``:type``, and ``:data`` values for the registry key.
* ``:type`` represents the values available for registry keys in |windows|. Use ``:binary`` for REG_BINARY, ``:string`` for REG_SZ (also the default), ``:multi_string`` for REG_MULTI_SZ, ``:expand_string`` for REG_EXPAND_SZ, ``:dword`` for REG_DWORD, ``:dword_big_endian`` for REG_DWORD_BIG_ENDIAN, or ``:qword`` for REG_QWORD.
* ``:action`` is the step that the resource will ask the provider to take during the |chef| run

The following is an example of how the |resource windows_registry| resource can work when used in a recipe. In this example, a |windows| registry key named "System" will get a new value called "NewRegistryKeyValue" and a mulit-string value named "foo bar":

.. code-block:: ruby

   registry "HKEY_LOCAL_MACHINE\...\System" do
     values [{
       :name => "NewRegistryKeyValue",
       :type => :multi_string,
       :value => foo\0bar\0\0
     }]
     action :create
   end

