.. This is an included how-to. 

To install |apache maven|:

.. code-block:: ruby

   maven "mysql-connector-java" do
     group_id "mysql"
     version "5.1.19"
     dest "/usr/local/tomcat/lib/"
   end



