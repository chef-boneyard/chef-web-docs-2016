.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``where`` matcher allows the test to be focused to one (or more) specific items:

.. code-block:: ruby

     etc_group.where(item: 'value', item: 'value')

where ``item`` may be one (or more) of:

* ``name: 'name'``
* ``group_name: 'group_name'``
* ``password: 'password'``
* ``gid: 'gid'``
* ``group_id: 'gid'``
* ``users: 'user_name'``
* ``members: 'member_name'``
