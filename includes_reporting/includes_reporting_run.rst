.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A "|chef client| run" is the term used to describe a series of steps that are taken by the |chef client| when it is configuring a node. |reporting|, when configured, is also tracked during the |chef client| run. The following diagram shows how |reporting| fits into the |chef client| run, and then the list below the diagram describes in greater detail each of those stages.

.. image:: ../../images/reporting_run.png

When reports are generated as part of a |chef client| run, in addition to what normally occurs during the |chef client| run, the following happens:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Stages
     - Description
   * - **Generate Reporting ID**
     - At the beginning of the |chef client| run, the |chef client| pings |reporting| to notify it that a |chef client| run is starting and to generate a unique identifier for the |chef client| run so that it can be associated with the reporting data.
   * - **Send the Reporting Data to the Server**
     - At the end of the |chef client| run, the |chef client| pings |reporting| and sends it the data that was collected during the |chef client| run.