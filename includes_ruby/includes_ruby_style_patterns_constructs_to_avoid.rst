.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Avoid the following patterns:

* ``node.set`` / ``normal_attributes`` - Avoid using attributes at normal precedence since they are set directly on the node object itself, rather than implied (computed) at runtime.
* ``node.set_unless`` - Can lead to weird behavior if the node object had something set. Avoid unless altogether necessary (one example where it's necessary is in ``node['postgresql']['server']['password']``)
* if ``node.run_list.include?('foo')`` i.e. branching in recipes based on what's in the node's run list. Better and more readable to use a feature flag and set its precedence appropriately.
* ``node['foo']['bar']`` i.e. setting normal attributes without specifying precedence. This is deprecated in Chef 11, so either use ``node.set['foo']['bar']`` to replace its precedence in-place or choose the precedence to suit.