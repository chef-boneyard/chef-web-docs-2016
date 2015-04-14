.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|foodcritic| output:

* States a |foodcritic| rule. For example: ``FC003``
* Describes the rule, based on the results of the evaluation. For example: ``Check whether you are running with chef server before using server-specific features``
* Specifies the file path. For example: ``./recipes/ip-logger.rb``
* Specifes the line number. For example: ``1``

A |foodcritic| evaluation has the following syntax:

.. code-block:: bash

   RULENUMBER: MESSAGE: FILEPATH:LINENUMBER

For example:

.. code-block:: bash

   FC008: Generated cookbook metadata needs updating: ./metadata.rb:3
