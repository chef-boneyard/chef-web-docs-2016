.. This is an included how-to. 

.. The following example shows a simple ``case`` statement:

.. code-block:: ruby

   case node[:platform]
     when 'platform_1', 'platform_2'
       package 'foo' do
         action :install
       end
     when 'platform_3', 'platform_4', 'platform_5', 'platform_6'
       package 'bar' do
         action :install
       end
     end
