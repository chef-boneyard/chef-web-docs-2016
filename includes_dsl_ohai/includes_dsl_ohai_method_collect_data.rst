.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``collect_data`` method is a block of |ruby| code that is called by |ohai| when it runs. One (or more) ``collect_data`` blocks can be defined in a plugin, but only a single ``collect_data`` block is ever run. The ``collect_data`` block that is run is determined by the platform on which the node is running, which is then matched up against the available ``collect_data`` blocks in the plugin. 

* A ``collect_data(:default)`` block is used when |ohai| is not able to match the platform of the node with a ``collect_data(:platform)`` block in the plugin; ``collect_data`` can also be used to represent the default block
* A ``collect_data(:platform)`` block is required for each platform

When |ohai| runs, if there isn't a matching ``collect_data`` block for a platform, the ``collect_data(:default)`` block is used. The syntax for the ``collect_data`` method is:

.. code-block:: ruby

   collect_data(:default) do
     # some Ruby code
   end

or: 

.. code-block:: ruby

   collect_data(:platform) do
     # some Ruby code
   end

where:

* ``:default`` is the name of the default ``collect_data`` block
* ``:platform`` is the name of the platform, such as ``:aix`` for |ibm aix| or ``:windows`` for |windows|
