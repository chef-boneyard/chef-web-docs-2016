.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the |splunk| application for |chef analytics| to gather insights about nodes that are under management by |chef|. The |splunk| application for |chef analytics| requires |chef analytics| version 1.1.4 (or later).

.. image:: ../../images/splunk_app_nodes_activity.png

.. image:: ../../images/splunk_app_server_activity.png

.. note:: |splunk| Enterprise is required for |chef analytics|. |splunk| Light does not support the installation of packaged |splunk| applications.

To set up the |splunk| application for |chef analytics|, do the following:

#. Download and install |chef analytics|.
#. Configure a notification for the |splunk| server.
#. Go to the **Notifications** tab in the |chef analytics| web user interface.
#. Click the plus symbol (**+**) and select |splunk|.
#. Name the configuration. For example: ``splunk-notifier``.
#. Configure the hostname, port, username, and password for the |splunk| server.
#. The port must be ``8089``.
#. You can choose what data to send to the |splunk| server by type. Valid types are ``action``, ``run_converge``, ``run_resource``, ``run_control``, and ``run_control_group``. Add the following rules to enable data to be sent to the |splunk| server:

   .. code-block:: ruby

      rules 'Splunk'
        rule on action
        when
          true
        then
          notify('splunk-notifier')
        end

        rule on run_converge
        when
          true
        then
          notify('splunk-notifier')
        end

        rule on run_resource
        when
          true
        then
          notify('splunk-notifier')
        end
      end

The ``rules`` block **MUST** be exactly as shown. If these rules do not match exactly, the |splunk| application for |chef analytics| may not work correctly.
