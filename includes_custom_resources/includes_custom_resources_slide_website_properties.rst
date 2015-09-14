.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.
.. This file is hooked into a slide deck


Custom properties are defined in the resource. This custom resource needs two:

* ``instance_name``
* ``port``

These properties are defined as variables in the ``httpd.conf.erb`` file. A |resource template| block in recipes will tell the |chef client| how to apply these variables.
