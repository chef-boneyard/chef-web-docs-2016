.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the ``ps_credential`` helper to embed a ``PSCredential`` object---security credentials, such as a user name or password---within a script.

For example, assuming the ``CertificateID`` is configured in the local configuration manager, the ``SeaPower1@3`` object is created and embedded within the ``seapower-user`` script:

.. code-block:: ruby

   dsc_script 'seapower-user' do
     code <<-EOH
       User AlbertAtom
       {
         UserName = 'AlbertAtom'
         Password = #{ps_credential('SeaPower1@3')}
       }
    EOH
    configuration_data <<-EOH
      @{
        AllNodes = @(
          @{
            NodeName = "localhost";
            CertificateID = 'A8D1234559F349F7EF19104678908F701D4167'
          }
        )
      }
    EOH
  end
