.. This is an included how-to. 


To add an environment:

#. Open |opscode manage|.
#. Click |opscode manage policy|.
#. Click |opscode manage policy_environments|.
#. Click |opscode manage policy_environments_create|.
#. In the |opscode manage db_create_environment| dialog box, enter the name of the environment and a description.

   .. image:: ../../images/step_manage_webui_policy_environment_add.png

   Click |opscode manage button_next|.
#. Optional. Set a constraint by choosing a name, an operator, and a version:

   .. image:: ../../images/step_manage_webui_policy_environment_add_constraint.png

   Click |opscode manage button_add_constraint|. Continue this process until all constraints are added. When finished, click |opscode manage button_next|.
#. Optional. Add default attributes as |json| data:

   .. image:: ../../images/step_manage_webui_policy_environment_add_default_attribute.png

   Click |opscode manage button_next|.
#. Optional.  Add override attributes as |json| data:

   .. image:: ../../images/step_manage_webui_policy_environment_add_override_attribute.png

#. Click |opscode manage button_create_environment|.