.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A custom handler can be created to support any situation. The easiest way to build a custom handler:

#. Download the |cookbook chef_handler| cookbook
#. Create a custom handler
#. Write a recipe using the |resource chef_handler| resource
#. Add that recipe to a node's run-list, often as the first recipe in that run-list
