.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``attribute``
     - |metadata attributes| For example:
       ::

          attribute 'pets/cat/name',
           :display_name => "Cat Name",
           :description => "The name of your cat",
           :choice => \[
             'kitty kitty',
             'peanut',
             'einstein',
             'honey' \],
           :type => "string",
           :required => "recommended",
           :recipes => \[ 'cats::eat' \],
           :default => "kitty kitty"

   * - ``conflicts``
     - |metadata rb conflicts| For example, if a cookbook conflicts with another cookbook named "docs":
       ::

          conflicts "dogs"

       Or if the cookbook conflicted with a cookbook named "dogs" and greater than version 1.0:
       ::

          conflicts "dogs", "> 1.0"
   * - ``depends``
     - |metadata rb depends| For example, to set a dependency a cookbook named "cats":
       ::

          depends "cats"

       Or, to set a dependency on the same cookbook, but only when the version is less than 1.0:
       ::

          depends "cats", "< 1.0"
   * - ``description``
     - |description cookbook| For example:
       ::

          description 'A fancy cookbook that manages a herd of cats!'
   * - ``grouping``
     - |grouping| For example:
       ::

          grouping 'pets/cat',
           :title => "Cat Options",
           :description => "Describe your cat using the options below"
   * - ``licensing``
     - |license| For example:
       ::

          license 'Apache v2.0'

       or:
       ::

          license 'GPL v3'

       or:
       ::

          license 'MIT'

       or:
       ::

          license 'Proprietary - All Rights Reserved'
   * - ``long_description``
     - |long description| For example, to embed the long description within the field itself:
       ::

          long_description <<-EOH
          = DESCRIPTION:

          Complete Debian/Ubuntu style Apache2 configuration.

          = REQUIREMENTS:

          Debian or Ubuntu preferred.

          Red Hat/CentOS and Fedora can be used but will be converted to
          a Debian/Ubuntu style Apache as it's far easier to manage
          with Chef.

          = ATTRIBUTES:

          The file attributes/apache.rb contains the following attribute
          types:

          * platform specific locations and settings.
          * general settings
          * pre-fork attributes
          * worker attributes

          General settings and pre-fork/worker attributes are tunable.
          EOH

       Or to read the contents from a specified file:
       ::

          long_description IO.read(File.join
            (File.dirname(__FILE__), 'README.rdoc')
          )
   * - ``maintainer``
     - |maintainer| For example:
       ::

          maintainer 'Adam Jacob'
   * - ``maintainer_email``
     - |maintainer email| For example:
       ::

          maintainer_email 'adam@example.com'
   * - ``name``
     - |name cookbook| This field is inferred unless specified. For example:
       ::

          name 'cats'
   * - ``provides``
     - |metadata rb provides| For example, for recipes:
       ::

          provides "cats::sleep"
          provides "cats::eat"

       For definitions:
       ::

          provides "here(:kitty, :time_to_eat)"

       And for resources:
       ::

          provides "service[snuggle]"
   * - ``recipe``
     - |description recipe| For example:
       ::

          recipe "cats::sleep", "For a crazy 20 hours a day."

       Or:
       ::

          recipe "cats::eat", "When they are not sleeping."
   * - ``recommends``
     - |metadata rb recommends| For example:
       ::

          recommends "dogs"

       Or, to recommend a cookbook named "dogs" and for version 1.0 (or higher):
       ::

          recommends "dogs", "> 1.0"
   * - ``replaces``
     - |metadata rb replaces| For example, to replace a cookbook named "dogs" with this cookbook:
       ::

          replaces "dogs"

       Or to replace a cookbook named dogs, but only for versions prior to 4.0:
       ::

         replaces "dogs", "< 4.0"
   * - ``suggests``
     - |metadata rb suggests| For example:
       ::

          suggests "cats"

       Or, to suggest a cookbook named "cats", but only for versions 1.0 and higher.
       ::

          suggests "cats", "> 1.0"
   * - ``supports``
     - |metadata rb supports| For example, to support every version of |ubuntu|:
       ::

          supports 'ubuntu'

       Or, to support versions of |ubuntu| between 8.04 and 9.10:
       ::

          supports 'ubuntu', ">= 8.04"

       Or, to support only |ubuntu| 9.10:
       ::

          supports 'ubuntu', '= 9.10'
   * - ``version``
     - |version cookbook| For example:
       ::

          version "1.9.0"

