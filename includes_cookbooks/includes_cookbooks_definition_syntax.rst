.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A definition has three components:

* A resource name
* One (or more) arguments that are used to define a parameter and set its default value; if a default value is not specified, it is assumed to be ``nil``
* A hash that is used within a definition to provide access to parameters and their values

The parameter values that are provided are used as the default values, in case a value is not provided when the resource is invoked.

The basic syntax of a definition:

.. code-block:: ruby

   define :resource_name, :parameter => :argument, :parameter => :argument do
     params_hash
   end

For example, a definition named ``apache_site`` with an parameter called ``action`` with an argument for ``enable`` would look something like:

.. code-block:: ruby

   define :apache_site, :action => :enable do
     if params[:action] == :enable
        ...
     else
        ...
     end
   end

Or the following definition, which looks like a resource when used in a recipe, but also contains resources---|resource directory| and |resource file|---that are repeated, but with slightly different parameters:

.. code-block:: ruby

   define :host_porter, :port => 4000, :hostname => nil do
     params[:hostname] ||= params[:name]
   
     directory "/etc/#{params[:hostname]}" do
       recursive true
     end
   
     file "/etc/#{params[:hostname]}/#{params[:port]}" do
       content "some content"
     end
   end

which is then used in a recipe like this:

.. code-block:: ruby

   host_porter node['hostname'] do
    port 4000
   end
   
   host_porter "www1" do
     port 4001
   end

