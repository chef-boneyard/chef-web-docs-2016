.. This is an included how-to. 

.. To test SSH configuration:

.. code-block:: ruby

  describe ssh_config do
    its('Host') { should eq '*' }
    its('Tunnel') { should eq nil }
    its('SendEnv') { should eq 'LANG LC_*' }
    its('HashKnownHosts') { should eq 'yes' }
  end
