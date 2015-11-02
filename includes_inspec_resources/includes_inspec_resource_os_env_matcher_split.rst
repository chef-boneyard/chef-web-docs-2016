.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``split`` splits the content with the ``:``` deliminator:

.. code-block:: ruby

   its('split') { should include ('') }

or:

.. code-block:: ruby

   its('split') { should_not include ('.') }

Use ``-1`` to test for cases where there is a trailing colon (``:``), such as ``dir1::dir2:``:

.. code-block:: ruby

   its('split') { should include ('-1') }
