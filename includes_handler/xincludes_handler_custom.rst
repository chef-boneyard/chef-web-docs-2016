.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A custom exception and report handler can be created to support any situation. The easiest way to build a custom handler is to extend the ``chef_handler`` cookbook and then use the lightweight provider in that cookbook to build a recipe and then add that recipe to a node's run-list.

https://github.com/opscode/chef/blob/master/lib/chef/handler.rb


