.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``usernames`` matcher tests if the usernames in the test match usernames in ``/etc/passwd``:

.. code-block:: ruby

   its('usernames') { should eq ['root', 'www-data'] }
