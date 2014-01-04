.. This is an included how-to. 

.. To target a |gunicorn| virtual environment:

.. code-block:: ruby

   python_pip "gunicorn" do
     virtualenv "/home/ubunut/virtualenvs/myapp"
     action :install
   end
