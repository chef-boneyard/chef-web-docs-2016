.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use ``array:contains()`` to look for an attribute in the |json| object, and then determine its value.

The syntax for this function:

.. code-block:: ruby

   array:contains(field, valueToFind)

where:

* ``field`` is an attribute in the |json| oject
* ``valueToFind`` is the value for that attribute

For example:

.. code-block:: ruby

   array:contains(organization_name = 'ponyville')
