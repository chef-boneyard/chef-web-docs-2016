.. This is an included how-to. 

.. To test owner and group permissions:

.. code-block:: ruby

  describe ssh_config do
    its('owner') { should eq 'root' }
    its('mode') { should eq 644 }
  end
