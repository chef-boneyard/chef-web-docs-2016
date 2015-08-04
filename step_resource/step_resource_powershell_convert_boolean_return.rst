.. This is an included how-to. 

.. To return ``0`` for true, ``1`` for false:

Use the ``convert_boolean_return`` attribute to raise an exception when certain conditions are met. For example, the following fragments will run successfully without error:

.. code-block:: ruby

   powershell_script 'false' do
     code '$false'
   end

and:

.. code-block:: ruby

   powershell_script 'true' do
     code '$true'
   end

whereas the following will raise an exception:

.. code-block:: ruby

   powershell_script 'false' do
     convert_boolean_return true
     code '$false'
   end
