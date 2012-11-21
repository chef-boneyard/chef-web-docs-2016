.. This is an included how-to. 

To install the beta version of ``Horde_Url`` from the |horde| channel (pear.horde.org):

.. code-block:: ruby

   hc = php_pear_channel "pear.horde.org" do
     action :discover
   end
   php_pear "Horde_Url" do
     preferred_state "beta"
     channel hc.channel_name
     action :install
  end
