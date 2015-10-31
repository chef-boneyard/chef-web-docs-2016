.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef delivery| uses the |chef client| to run recipes for each phase in a build pipeline. The phases are grouped into different stages. 

.. list-table::
   :widths: 100 100 100 100 100 100     
   :header-rows: 1

   * - Verify
     - Build
     - Acceptance
     - Union
     - Rehearsal
     - Delivered
   * - Unit
     - Unit
     - Provision
     - Provision
     - Provision
     - Provision
   * - Lint
     - Lint
     - Deploy
     - Deploy
     - Deploy
     - Deploy
   * - Syntax
     - Syntax
     - Smoke
     - Smoke
     - Smoke
     - Smoke
   * - 
     - Quality
     - Functional
     - Functional
     - Functional
     - Functional
   * - 
     - Security
     - 
     - 
     - 
     - 
   * - 
     - Publish
     - 
     - 
     - 
     - 

The recipes for these phases are run from the build cookbook. Build cookbooks vary by project type, because projects may use different tools for running unit tests, syntax checks, or lint analysis.
