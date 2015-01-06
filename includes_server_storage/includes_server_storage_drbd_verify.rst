.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To verify the results of resizing |drbd|, run the following commands and compare the results to the same data that was collected prior to resizing |drbd|:

.. code-block:: bash

   sudo lvdisplay -v --units 4096k /dev/opscode/drbd

and then:

.. code-block:: bash

   df -k /var/opt/opscode/drbd/data
