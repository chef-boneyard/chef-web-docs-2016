.. This is an included how-to. 


To view |chef client| details:

#. Open **Chef Manage**.
#. Click |webui reports|.
#. Click |webui reports_run_history|.
#. Select the range of |chef client| runs to show, the correct environment, and correct status.
#. Select a |chef client| run.
#. Select the |webui tab_details| tab:

   .. image:: ../../images/step_manage_webui_reports_history_view_details.png

   where:

   .. list-table::
      :widths: 60 420
      :header-rows: 1
   
      * - Setting
        - Description
      * - ``Step``
        - The order in which resources were executed during the |chef client| run.
      * - ``Type``
        - The type of resource. http://docs.chef.io/resource.html#resources
      * - ``Name``
        - A string that describes the action taken. For example, a log entry or the name of the service that is enabled.
      * - ``Action``
        - The action taken by the resource type.
      * - ``Duration``
        - The amount of time required to complete the action.
      * - ``Diff``
        - The difference between the current state and the previous state. This setting is available for files managed by the |resource cookbook_file|, |resource file|, |resource remote_file|, and |resource template| resources.
      * - ``Parameters``
        - Opens the |webui db_run_details| dialog box, which lists all of the parameters on the node that were changed during the |chef client| run.