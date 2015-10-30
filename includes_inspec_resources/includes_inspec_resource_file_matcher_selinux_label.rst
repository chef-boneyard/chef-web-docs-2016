.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``selinux_label`` matcher tests if the |selinux| label for a file matches the specified value:

.. code-block:: ruby

   its('product_version') { should eq 'system_u:system_r:httpd_t:s0' }
