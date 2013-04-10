=====================================================
knife cookbook site
=====================================================

.. include:: ../../includes_api_cookbooks_site/includes_api_cookbooks_site.rst

.. include:: ../../includes_knife/includes_knife_site_cookbook.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

download
=====================================================
.. include:: ../../includes_knife/includes_knife_site_cookbook_download.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_site_cookbook_download_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_site_cookbook_download_options.rst

**knife.rb File Settings**

.. include:: ../../includes_knife/includes_knife_using_knife_rb.rst

..note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_site_cookbook_download_settings.rst

**Examples**

For example:

.. code-block:: bash

   $ knife cookbook site download getting-started

to return something like:

.. code-block:: bash

   Downloading getting-started from the cookbooks site at version 0.3.0 to
     /Users/sdanna/opscodesupport/getting-started-0.3.0.tar.gz
   Cookbook saved: /Users/sdanna/opscodesupport/getting-started-0.3.0.tar.gz

install
=====================================================
.. include:: ../../includes_knife/includes_knife_site_cookbook_install.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_site_cookbook_install_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_site_cookbook_install_options.rst

**knife.rb File Settings**

.. include:: ../../includes_knife/includes_knife_using_knife_rb.rst

..note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_site_cookbook_install_settings.rst

**Examples**

For example, to install the cookbook "getting-started", enter:

.. code-block:: bash

   $ knife cookbook site install getting-started

to return something like:

.. code-block:: bash

   Installing getting-started to /Users/sdanna/opscodesupport/.chef/../cookbooks
   Checking out the master branch.
   Creating pristine copy branch chef-vendor-getting-started
   Downloading getting-started from the cookbooks site at version 0.3.0 to
     /Users/sdanna/opscodesupport/.chef/../cookbooks/getting-started.tar.gz
   Cookbook saved: /Users/sdanna/opscodesupport/.chef/../cookbooks/getting-started.tar.gz
   Removing pre-existing version.
   Uncompressing getting-started version /Users/sdanna/opscodesupport/.chef/../cookbooks.
   removing downloaded tarball
   1 files updated, committing changes
   Creating tag cookbook-site-imported-getting-started-0.3.0
   Checking out the master branch.
   Updating 4d44b5b..b4c32f2
   Fast-forward
    cookbooks/getting-started/README.rdoc              |    4 +++  
    cookbooks/getting-started/attributes/default.rb    |    1 +
    cookbooks/getting-started/metadata.json            |   29 ++++++++++++++++++++
    cookbooks/getting-started/metadata.rb              |    6 ++++
    cookbooks/getting-started/recipes/default.rb       |   23 +++++++++++++++
    .../templates/default/chef-getting-started.txt.erb |    5 +++
    6 files changed, 68 insertions(+), 0 deletions(-)
    create mode 100644 cookbooks/getting-started/README.rdoc
    create mode 100644 cookbooks/getting-started/attributes/default.rb
    create mode 100644 cookbooks/getting-started/metadata.json
    create mode 100644 cookbooks/getting-started/metadata.rb
    create mode 100644 cookbooks/getting-started/recipes/default.rb
    create mode 100644 cookbooks/getting-started/templates/default/chef-getting-started.txt.erb
   Cookbook getting-started version 0.3.0 successfully installed 

list
=====================================================
.. include:: ../../includes_knife/includes_knife_site_cookbook_list.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_site_cookbook_list_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_site_cookbook_list_options.rst

**Examples**

For example, to view a list of cookbooks at |url cookbook| server, enter:

.. code-block:: bash

   $ knife cookbook site list

to return::

   1password             homesick              rabbitmq
   7-zip                 hostname              rabbitmq-management
   AmazonEC2Tag          hosts                 rabbitmq_chef
   R                     hosts-awareness       rackspaceknife
   accounts              htop                  radiant
   ack-grep              hudson                rails
   activemq              icinga                rails_enterprise
   ad                    id3lib                redis-package
   ad-likewise           iftop                 redis2
   ant                   iis                   redmine
   [...truncated...]


search
=====================================================
.. include:: ../../includes_knife/includes_knife_site_cookbook_search.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_site_cookbook_search_syntax.rst

**Options**

|no_options|

**Examples**

For example, to search for all of the cookbooks that can be used with |apache|, enter:

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


share
=====================================================
.. include:: ../../includes_knife/includes_knife_site_cookbook_share.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_site_cookbook_share_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_site_cookbook_share_options.rst

**knife.rb File Settings**

.. include:: ../../includes_knife/includes_knife_using_knife_rb.rst

..note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_site_cookbook_share_settings.rst

**Examples**

For example:

.. code-block:: bash

   $ knife cookbook site share "apache2" "Web Servers"


show
=====================================================
.. include:: ../../includes_knife/includes_knife_site_cookbook_show.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_site_cookbook_show_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_site_cookbook_show_options.rst

**Examples**

For example:

.. code-block:: bash

   $ knife cookbook site show haproxy
   
to return something like:

.. code-block:: bash

   average_rating:
   category:        Networking
   created_at:      2009-10-25T23:51:07Z
   description:     Installs and configures haproxy
   external_url:
   latest_version:  http://cookbooks.opscode.com/api/v1/cookbooks/haproxy/versions/1_0_3
   maintainer:      opscode
   name:            haproxy
   updated_at:      2011-06-30T21:53:25Z
   versions:
      http://cookbooks.opscode.com/api/v1/cookbooks/haproxy/versions/1_0_3
      http://cookbooks.opscode.com/api/v1/cookbooks/haproxy/versions/1_0_2
      http://cookbooks.opscode.com/api/v1/cookbooks/haproxy/versions/1_0_1
      http://cookbooks.opscode.com/api/v1/cookbooks/haproxy/versions/1_0_0
      http://cookbooks.opscode.com/api/v1/cookbooks/haproxy/versions/0_8_1
      http://cookbooks.opscode.com/api/v1/cookbooks/haproxy/versions/0_8_0
      http://cookbooks.opscode.com/api/v1/cookbooks/haproxy/versions/0_7_0 

To view information in |json| format, use the ``-F`` common option as part of the command like this:

.. code-block:: bash

   $ knife cookbook site show haproxy -F json

Other formats available include ``text``, ``yaml``, and ``pp``.


unshare
=====================================================
.. include:: ../../includes_knife/includes_knife_site_cookbook_unshare.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_site_cookbook_unshare_syntax.rst

**Options**

|no_options|

**Examples**

For example, to unshare a cookbook named "getting-started", enter:

.. code-block:: bash

   $ knife cookbook site unshare getting-started


