.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |lwrp apt repository| lightweight resource is used to manage |apt| repositories by dropping a ``sources.list`` in ``/etc/apt/sources.list.d``. This lightweight resource is only useful on distributions that have |apt| (for example, |debian| or |ubuntu| distributions). The ``sources.list`` file name is the same as the value for the ``repo_name`` attribute.
