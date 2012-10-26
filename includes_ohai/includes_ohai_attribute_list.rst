.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following attributes are those which are re-written with each Ohai run, so they should be recognized as being unmodifiable when considering the use of attributes:

.. code-block:: bash

   ohai$ grep -R "provides" -h lib/ohai/plugins|sed 's/^\s*//g'|sed "s/\\\"/\'/g"|sort|uniq|grep ^provides