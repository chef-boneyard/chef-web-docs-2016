This cookbook uses `bundler <http://gembundler.com/>`_, `berkshelf <http://berkshelf.com/>`_, and `strainer <https://github.com/customink/strainer>`_ to isolate dependencies and run tests.

Tests are defined in Strainerfile.

To run tests:

.. code-block:: bash

   $ bundle install # install gem dependencies
   $ bundle exec berks install # install cookbook dependencies
   $ bundle exec strainer test # run tests
