.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``sha256sum`` matcher tests if the |sha256| checksum for a file matches the specified value:

.. code-block:: ruby

   its('sha256sum') { should eq 'b837ch38lh19bb8eaopl8jvxwd2e4g58jn9lkho1w3ed9jbkeicalplaad9k0pjn' }
