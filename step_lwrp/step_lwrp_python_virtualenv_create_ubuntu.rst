.. This is an included how-to. 

To create a virtual |python| 2.6 environment that is owned by an |ubuntu| user:

.. code-block:: ruby

   python_virtualenv "/home/ubunut/virtualenvs/myapp" do
     owner "ubuntu"
     group "ubuntu"
     action :create
   end
