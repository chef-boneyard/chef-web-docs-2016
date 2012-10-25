.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

**jamescott: THE DESCRIPTIONS HERE NEED TO BE EDITED DOWN FOR THE METADATA.RB FILE. THE VERSION OPERATORS AND OTHER SMALL PIECES HERE MAYBE SHOULD BE INCLUDED IN THE METADATA.RB FILE JUST FOR GOOD MEASURE. IT CANNOT HURT. SAME EXAMPLES FOR BOTH IDEALLY. AND REMOVE OPERATOR DISCUSSION FROM DESCRIPTIONS.**

Versions and version constraints can be specified in a cookbook's |metadata rb| file by using the following functions. Each function accepts a name and an optional version constraint; if a version constraint is not provided, ``>= 0.0.0`` is used as the default.

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Function
     - Description
   * - ``conflicts``
     - |metadata rb conflicts| For example:
       ::

          conflicts "apache2", "< 3.0"

       Or:
       ::

          conflicts "daemon-tools"


   * - ``depends``
     - |metadata rb depends| For example:
       ::

          depends "opscode-base"

       Or:
       ::

          depends "opscode-github", "> 1.0.0"

       Or:
       ::

          depends "runit", "~> 1.2.3"
   * - ``provides``
     - |metadata rb provides|
   * - ``recommends``
     - |metadata rb recommends|
   * - ``replaces``
     - |metadata rb replaces|
   * - ``suggests``
     - |metadata rb suggests|
   * - ``supports``
     - |metadata rb supports|