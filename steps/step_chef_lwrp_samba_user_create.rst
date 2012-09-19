.. This is an included how-to. 

To create a user:

.. code-block:: ruby

   samba_user "jtimberman" do
     password "SuperSecret"
     action :create
   end
