.. This is an included how-to.

The |profiles| command will be used to remove the configuration profile specified by the provided identifier.

.. code-block:: ruby

  osx_profile 'com.company.screensaver' do
    action :remove
  end
