=====================================================
|chef delivery_cli| (executable)
=====================================================

.. include:: ../../includes_ctl_delivery/includes_ctl_delivery.rst

.. warning:: This command-line tool is only available from: https://github.com/chef/delivery-cli.

delivery api
=====================================================
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_api.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_api_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_api_options.rst

Examples
-----------------------------------------------------
A |github| user name must be associated with |chef delivery| in order for |github| pull requests to be able to create changes in |chef delivery|.

**Link a Github enterprise user name**

.. code-block:: bash

   $ delivery api put users/$DELIVERY_USERNAME/set-oauth-alias --data='{"app_name":"github","alias":"$GITHUB_USERNAME"}'

**Link a Github.com user name**

.. code-block:: bash

   $ delivery api put users/$DELIVERY_USERNAME/set-oauth-alias --data='{"app_name":"github-enterprise","alias":"$GITHUB_USERNAME"}'

.. note:: Two |github| accounts may not be linked to a single |chef delivery| user. Two |chef delivery| users may not share a single |github| user name.

delivery checkout
=====================================================
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_checkout.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_checkout_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_checkout_options.rst

Examples
-----------------------------------------------------
None.

delivery clone
=====================================================
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_clone.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_clone_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_clone_options.rst

Examples
-----------------------------------------------------
None.

delivery diff
=====================================================
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_diff.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_diff_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_diff_options.rst

Examples
-----------------------------------------------------
None.

delivery init
=====================================================
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_init.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_init_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_init_options.rst

Examples
-----------------------------------------------------
None.

delivery job
=====================================================
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_job.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_job_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_job_options.rst

Examples
-----------------------------------------------------

To verify a job with a stage name of ``verify unit``, run the following command:

.. code-block:: bash

   $ delivery job verify unit

which will return output similar to:

.. code-block:: bash

   Chef Delivery
   Loading configuration from /Users/adam/src/opscode/delivery/opscode/delivery-cli
   Starting job for verify unit
   Creating workspace
   Cloning repository, and merging adam/job to master
   Configuring the job
   Running the job
   Starting Chef Client, version 11.18.0.rc.1
   resolving cookbooks for run list: ["delivery_rust::unit"]
   Synchronizing Cookbooks:
     - delivery_rust
     - build-essential
   Compiling Cookbooks...
   Converging 2 resources
   Recipe: delivery_rust::unit
     * execute[cargo clean] action run
       - execute cargo clean
     * execute[cargo test] action run
       - execute cargo test
   
   Running handlers:
   Running handlers complete
   Chef Client finished, 2/2 resources updated in 32.770955 seconds

delivery pipeline
=====================================================
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_pipeline.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_pipeline_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_pipeline_options.rst

Examples
-----------------------------------------------------
None.

delivery review
=====================================================
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_review.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_review_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_review_options.rst

Examples
-----------------------------------------------------
None.

delivery setup
=====================================================
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_setup.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_setup_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_setup_options.rst

Examples
-----------------------------------------------------
None.

delivery token
=====================================================
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_token.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_token_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_delivery/includes_ctl_delivery_token_options.rst

Examples
-----------------------------------------------------
None.
