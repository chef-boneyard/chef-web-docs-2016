=====================================================
|chef analytics_title|
=====================================================

.. include:: ../../includes_analytics/includes_analytics.rst


|chef analytics_title| Components
=====================================================
The following diagram shows the relationships between the various elements of |chef analytics|, including how information is routed from various nodes to the |chef analytics| server (through the |chef server|) nodes, where reports about |chef client| run outcomes may be viewed, where rules are processed, and where analytics data may be viewed. As you are reviewing the rest of this topic, use the icons in the tables to refer back to this image.

.. image:: ../../images/chef_analytics.png

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - Controls
     - .. include:: ../../includes_analytics/includes_analytics_controls.rst
   * - Audit Mode
     - .. include:: ../../includes_chef_client/includes_chef_client_audit_mode.rst
   * - Messages
     - Messages are created for events such as the start of the |chef client| run, the end of the |chef client| run, each resource that is converged during the |chef client| run, and the presence of ``control`` and ``control_group`` audits.
       
       .. include:: ../../includes_actions/includes_actions.rst
   * - |reporting_title|
     - .. include:: ../../includes_reporting/includes_reporting.rst
   * - |rules_analytics_title|
     - .. include:: ../../includes_analytics_rules/includes_analytics_rules.rst

The following sections discuss these elements (and their various components) in more detail.


Controls
=====================================================
.. include:: ../../includes_analytics/includes_analytics_controls.rst

|dsl recipe| Methods
-----------------------------------------------------
The following methods are built into the |dsl recipe| and may be used to configure tests that are run while the |chef client| is run in |chef client_audit|:

* ``control`` method: Use the ``control`` method to define a specific series of tests that comprise an individual audit. A ``control`` method MUST be contained within a ``control_group`` block.  Each audit may be configured to run against files, directories, packages, ports, and services. For example, to test if a package is installed, a service is running, if a file or directory allows access to only specific groups or users, and so on.
* ``control_group`` method: Use the ``control_group`` method to define one (or more) ``control`` methods that comprise a single audit. The name of each ``control_group`` must be unique within the organization.

Audit Mode
=====================================================
.. include:: ../../includes_chef_client/includes_chef_client_audit_mode.rst

|reporting_title|
=====================================================
.. include:: ../../includes_reporting/includes_reporting.rst

The Reporting Run
-----------------------------------------------------
.. include:: ../../includes_reporting/includes_reporting_run.rst

|rules_analytics_title|
=====================================================
.. include:: ../../includes_analytics_rules/includes_analytics_rules.rst

Rule Types
-----------------------------------------------------
Each individual ``rule`` must be associated with a specific audit message type. As a rule is triggered during the |chef client| run, a message is sent to the |chef analytics| server. A rule may be configured to send notifications about a message to recipients that are located outside of the |chef analytics| server.

The syntax for a ``rule`` is:

.. code-block:: java

   rule "name" on message_type
   when
     // comment
     function()
   then
     // comment
     function()
   otherwise
     // comment
     function()
   end
   
where:

* ``"name"`` is the (optional) name of the ``rule`` block
* ``message_type`` is one of the following audit message types:

  .. list-table::
     :widths: 60 420
     :header-rows: 1
  
     * - Message Type
       - Description
     * - ``action``
       - Use to build rules for messages about actions that occur on the |chef server|.
     * - ``run_control``
       - Use to build rules for a single audit to be evaluated.
     * - ``run_control_group``
       - Use to build rules for a group of audits to be evaluated.
     * - ``run_converge``
       - Use to build rules for messages that are sent at the end of a |chef client| run.
     * - ``run_resource``
       - Use to build rules for messages that are sent as each resource is converged during a |chef client| run.
     * - ``run_start``
       - Use to build rules for messages that are sent at the start of a |chef client| run.



Messages
=====================================================
.. include:: ../../includes_actions/includes_actions.rst

