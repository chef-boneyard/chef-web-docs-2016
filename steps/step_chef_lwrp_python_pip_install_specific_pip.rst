.. This is an included how-to. 

To install a specific pip version

.. code-block:: ruby

   python_pip "django" do
     version "1.1.4"
     action :install
   end
