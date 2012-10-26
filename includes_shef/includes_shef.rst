.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|shef| is tool that allows |knife| to be run using an Interactive Ruby (IRb) session. |shef| currently supports recipe and attribute file syntax, as well as interactive debugging features. |shef| has three run modes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Mode
     - Description
   * - Standalone
     - No cookbooks are loaded, and the run list is empty. This mode is the default.
   * - Solo
     - |shef| acts as a |chef solo| client. It attempts to load the |chef solo| configuration file and JSON attributes. If the JSON attributes set a run list, it will be honored. Cookbooks will be loaded in the same way that |chef solo| loads them. Solo mode is activated with the -s or --solo command line option, and JSON attributes are specified in the same way as for |chef solo|, with -j /path/to/chef-solo.json.
   * - Client
     - |shef| acts as a |chef client|. During startup, it reads the |chef client| configuration file and contacts the |chef server| to get attributes and cookbooks. The run list will be set in the same way as normal |chef client| runs. Client mode is activated with the -z or --client options. You can also specify the configuration file with -c CONFIG and the server URL with -S SERVER_URL.

