.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


There are two ways to trigger a handler during a |chef client| run:

* By adding the ``chef_handler`` resource to a recipe, and then adding that recipe to the run-list for a node
* By adding the handler to one of the following settings in the node's client.rb file: ``exception_handlers``, ``report_handlers``, and ``start_handlers``.

