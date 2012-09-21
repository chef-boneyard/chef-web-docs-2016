.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The recipe DSL provides access to data bags and data bag items with the following methods:

* ``data_bag(bag)``, where ``bag`` is the name of the data bag.
* ``data_bag_item('bag', 'item')``, where ``bag`` is the name of the data bag and ``item`` is the name of the data bag item.

The ``data_bag`` method returns an array with a key for each of the data bag items that are found in the data bag. For example, a data bag named "admins" with a single data bag item named "charlie" could be loaded with:

.. code-block:: ruby

   data_bag("admins")

to return this:

.. code-block:: ruby

   # => ["charlie"]

To load the contents of the data bag item named "charlie":

.. code-block:: ruby

   data_bag_item('admins', 'charlie')

to return something like this:

.. code-block:: ruby

   # => {"comment"=>"Crazy Charlie", "gid"=>1005, "id"=>"charlie", "uid"=>1005, "shell"=>"/bin/zsh"}