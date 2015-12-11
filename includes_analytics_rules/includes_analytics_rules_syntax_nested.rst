.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Some messages that contain nested fields or arrays. 

* Use dot syntax---``.foo``---to access integer values in nested fields.
* Use square bracket syntax---``[index]``---to access integer values in arrays.

.. note:: If the field does not exist, the rule will return false.

For example, accessing integer values in a nested field:

.. code-block:: ruby

   rules 'Control group matches'
     rule on run control group
       when
         run.chef_server_fqdn = 'mysql.production.foo.com'
           or
         // any node_name with 'production' in it's name
         run.node_name =~ '.*production.*'
       then
         alert:info('production control group match')
     end
   end

And accessing integer values in an array:

.. code-block:: ruby

   rules 'Run resource matches'
     rule on run resource
       when
         converge.run_list[0] = 'role[opscode-reporting]'
       or
         some_other.property[0].another_property[99] != 100
       then
         alert:error('Run resource match')
     end
   end
