.. This is an included how-to. 

.. To test for blocking .htaccess files on CentOS:

.. code-block:: ruby

   describe apache_conf do
     its('AllowOverride') { should eq 'None' }
   end
