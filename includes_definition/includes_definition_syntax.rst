.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A definition has four components:

* A resource name
* Zero or more arguments that define parameters their default values; if a default value is not specified, it is assumed to be ``nil``
* A hash that can be used within a definition's body to provide access to parameters and their values
* The body of the definition

The basic syntax of a definition is:

.. code-block:: ruby

   define :resource_name do
     body
   end

More commonly, the usage incorporates arguments to the definition:

.. code-block:: ruby

   define :resource_name, :parameter => :argument, :parameter => :argument do
     body (likely referencing the params hash)
   end

The following simplistic example shows a definition with no arguments (a parameterless macro in the truest sense): 

.. code-block:: ruby

   define :prime_myfile do
     file '/etc/myfile' do
       content 'some content'
     end
   end

An example showing the more common usage pattern, a definition named ``apache_site`` with an parameter called ``action`` with an argument for ``enable``, would look something like:

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
   
     directory '/etc/#{params[:hostname]}' do
       recursive true
     end
   
     file '/etc/#{params[:hostname]}/#{params[:port]}' do
       content 'some content'
     end
   end

which is then used in a recipe like this:

.. code-block:: ruby

   host_porter node['hostname'] do
    port 4000
   end
   
   host_porter 'www1' do
     port 4001
   end
