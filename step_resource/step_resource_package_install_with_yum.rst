.. This is an included how-to. 

.. To install a |yum| package with a specified architecture:

.. code-block:: ruby

   yum_package 'glibc-devel' do
     arch 'i386'
   end
