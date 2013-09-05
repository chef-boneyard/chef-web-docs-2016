.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Cookbook testing uses `bundler <http://gembundler.com/>`_, `Berkshelf <http://berkshelf.com/>`_, and `strainer <https://github.com/customink/strainer>`_ to isolate dependencies and run tests. Tests are defined using a Strainerfile.

To run tests:

.. code-block:: bash

   $ bundle install # install gem dependencies
   $ bundle exec berks install # install cookbook dependencies
   $ bundle exec strainer test # run tests
