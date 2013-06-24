.. This is an included how-to. 


To search for all of the cookbooks that can be used with |apache|, enter:

.. code-block:: bash

   $ knife cookbook site search apache*

to return something like:

.. code-block:: bash

   apache2:
     cookbook:              http://cookbooks.opscode.com/api/v1/cookbooks/apache2
     cookbook_description:  Installs and configures apache2 using Debian symlinks with helper definitions
     cookbook_maintainer:   opscode
     cookbook_name:         apache2
   instiki:
     cookbook:              http://cookbooks.opscode.com/api/v1/cookbooks/instiki
     cookbook_description:  Installs instiki, a Ruby on Rails wiki server under passenger+Apache2.
     cookbook_maintainer:   jtimberman
     cookbook_name:         instiki
   kickstart:
     cookbook:              http://cookbooks.opscode.com/api/v1/cookbooks/kickstart
     cookbook_description:  Creates apache2 vhost and serves a kickstart file.
     cookbook_maintainer:   opscode
     cookbook_name:         kickstart
   [...truncated...]
