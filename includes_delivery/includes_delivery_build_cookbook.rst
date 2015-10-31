.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef delivery| uses the |chef client| to run recipes for each phase in a build pipeline. The phases are grouped into different stages. 

The following illustration shows the phases of each pipeline stage.

.. image:: ../../images/delivery_build_cookbook.svg
   :width: 600px
   :align: center

The recipes for these phases are run from the build cookbook. Build cookbooks vary by project type, because projects may use different tools for running unit tests, syntax checks, or lint analysis.
