.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the |resource user| resource to add users, update existing users, remove users, and to lock/unlock user passwords.

.. note:: System attributes are collected by |ohai| at the start of every |chef client| run. By design, the actions available to the |resource user| resource are processed **after** the start of the |chef client| run. This means that system attributes added or modified by the |resource user| resource during the |chef client| run must be reloaded before they can be available to the |chef client|. These system attributes can be reloaded in two ways: by picking up the values at the start of the (next) |chef client| run or by using the `ohai resource <http://docs.chef.io/resource_ohai.html>`_ to reload the system attributes during the current |chef client| run.
