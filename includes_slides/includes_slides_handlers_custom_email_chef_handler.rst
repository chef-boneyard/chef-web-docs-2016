.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.

chef_handler is a resource packaged with the chef_handler cookbook

It has two actions: :enable and :disable

It has three arguments:

* source - the file containing the handler code
* arguments - any pieces of information needed to initialize the handler
* supports - :report, :exception

Defaults:

* :enable
* :report => true, :exception => true
