.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Newlines may be used in search queries for versions of the |chef client| 10.x and earlier. For example:

.. code-block:: ruby

   search(:node, "my_attribute:test AND (roles:first_role 
                                    OR roles:second_role 
                                    OR roles:third_role 
                                    OR roles:fourth_role)")

Starting with version 11.x, newlines are no longer supported and search queries must not contain them. For example:

.. code-block:: ruby

   search(:node, "my_attribute:test AND (roles:first_role OR roles:second_role OR roles:third_role OR roles:fourth_role)")