=====================================================
Glossary
=====================================================




**analytics rules**
   Event tracking during the |chef client| run that generates data made visible from |chef analytics|.

**Chef analytics**
   A feature of |chef| that provides real-time visibility into what is happening on the |chef server|, including what's changing, who made those changes, and when they occurred

**chef-apply**
   A command-line tool that allows a single recipe to be run from the command line.

**chef-client**
   A command-line tool that that runs |chef|. Also, the name of |chef| as it is installed on a node.

**chef-repo**
   The repository structure in which cookbooks are authored, tested, and maintained.

**chef-zero**
   A very lightweight |chef server| that runs in-memory on the local machine during the |chef client| run. Also known as local mode.

**cookbook**
   A cookbook is the fundamental unit of configuration and policy distribution.

**data bag**
   A data bag is a global variable that is stored as |json| data and is accessible from a |chef server|.

**definition**
   A definition is code that is reused across recipes, similar to a compile-time macro, and is defined in a cookbook.

**environment**
   An environment is a way to map an organization's real-life workflow to what can be configured and managed when using |chef server|.

**kitchen**
   |kitchen| is an integration framework that is used to automatically test cookbook data across any combination of platforms and test suites. |kitchen| is packaged in the |chef dk|.

**library**
   A library allows arbitrary |ruby| code to be included in a cookbook, either as a way of extending the classes that are built-in to the |chef client| or by implementing entirely new functionality,

**node**
   A node is any physical, virtual, or cloud machine that is configured to be maintained by a |chef client|.

**node object**
   A history of the attributes, run-lists, and roles that were used to configure a node that is under management by |chef|.

**organization**
   An organization is a single instance of a |chef server|, including all of the nodes that are managed by that |chef server| and each of the workstations that will run |knife| and access the |chef server| using the |api chef server|.

**policy**
   Policy settings can be used to map business and operational requirements, such as process and workflow, to settings and objects stored on the |chef server|. See roles, environments, and data bags.

**recipe**
   A recipe tells the |chef client| how to configure a node.

**resource**
   A resource is a statement of configuration policy that describes the desired state of an element of your infrastructure, along with the steps needed to bring that item to the desired state.

**role**
   A role is a way to define certain patterns and processes that exist across nodes in an organization as belonging to a single job function.

**run-list**
   A run-list defines all of the configuration settings that are necessary for a node that is under management by |chef| to be put into the desired state and the order in which these configuration settings are applied.

**test-kitchen**
   See kitchen.

