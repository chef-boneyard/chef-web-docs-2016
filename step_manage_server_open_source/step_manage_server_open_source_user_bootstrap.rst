.. This is an included how-to. 

When using the ``bootstrap::server`` recipe, this is actually a randomly generated password, and set in ``/etc/chef/server.rb`` through the template, with the setting ``web_ui_admin_default_password``. This can be set to a different value by setting ``webui_admin_password`` in the ``chef.json``.
