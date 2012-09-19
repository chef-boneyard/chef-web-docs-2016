.. This is an included how-to. 

To create a virtual |python| 2.4 environment:

.. code-block:: ruby

   python_virtualenv "/home/ubuntu/virtualenvs/myapp" do
     interpreter "python2.4"
     owner "ubuntu"
     group "ubuntu"
     action :create
   end
