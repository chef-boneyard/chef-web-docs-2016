.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


For a |github enterprise| or GitHub.com integrated user of |chef delivery|:

#. The standard |github| process should be followed: clone the desired repo, make and test changes locally, submit the change (create a pull request) which initiates the |chef delivery| review process.

   The |github| web UI will display a **Delivery Status** box showing what part of the pipeline the pull request is at. When the pull request has passed the **Verify** stage, |github| will message you in the |github| web UI that approval must be manually entered for the pipeline to proceed.

#. When the "Approval Required" message appears, enter ``@delivery approve`` in the comment box.

   The pull request moves to the next stage of the |chef delivery| pipeline, **Build** and **Acceptance**.

#. When the pull request has passed the **Acceptance** stage, |github| will add another message indicating that that the ``deliver`` command must be issued for the pipeline to proceed. When this message appears, enter ``@delivery deliver`` in the comment box.

   The pull request moves to the final three stages, **Union**, **Rehearsal**, and **Delivered**. Other changes in the pipeline that would conflict with a change in the **Union** stage, are blocked from proceeding to the **Acceptance** stage.

   When the final **Delivered** stage is passed, |github| updates the **Delivery Status** at the top of the |github| web UI page.
