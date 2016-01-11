.. This is an included how-to.

The |profiles| command will be used to remove the configuration profile specified by the provided identifier.

.. code-block:: ruby

  osx_profile 'Remove screensaver profile' do
    identifier 'com.company.screensaver'
    action :remove
  end

