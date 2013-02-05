.. The contents of this file may be included in multiple topics.
.. The contents of this file should only be changed by Opscode.

|opscode| initially determines the level of incident severity based on a number of criteria.  This includes the extent of impact to Customer in use of |chef private| functionality, the level of repeatability/constancy in issue occurrence, and the availability of a functional work around.

Customer may seek to increase the initially determined |opscode| Severity Level by following the detail found in Escalation to |opscode|.



Private Chef API calls that can cause a Chef-Client run to finish are not available.  Data loss.

:: - 
                           - 
:: - 

.. list-table::
   :widths: 200 300
   :header-rows: 0

   * - Support Response Targets
     - Opscode will begin addressing immediately.
       
       If code change is needed, we will work with you to supply the necessary fixes.
   * - Customer Response Targets
     - Customer first contact must be by phone.
       
       Customer will respond within 30 service minutes following service hour based receipt of report.
       
       Subsequent updates hourly.

.. note:: Severity 1 classifications are based in the loss or limitation of Private Chef functionality, not in responding to questions on how to utilize the product.


Private Chef functionality is available but severely limited. There is no available work around.

.. list-table::
   :widths: 200 300
   :header-rows: 0

   * - Support Response Targets
     - Begin addressing as soon as possible.
       
       Prioritized bug and product release cycle as required.
   * - Customer Response Targets
     - Customer first contact must be by phone.
       
       Customer response within 2 service hours following service hour based receipt of report.
       
       Subsequent updates every 2 hours.

.. note:: Severity 2 classifications are based in the loss or limitation of Private Chef functionality, not in responding to questions on how to utilize the product.


Private Chef functionality is usable with minor degradation in service. There is an available work around for issue.

.. list-table::
   :widths: 200 300
   :header-rows: 0

   * - Support Response Targets
     - Address as soon as possible.
       
       Standard bug and product release cycle as required.
   * - Customer Response Targets
     - Customer response within 1 service day following service hour based receipt of report.
       
       Subsequent updates as warranted, or as agreed.


Issue causes little impact to functionality or Private Chef use. A reasonable circumvention to the problem has been found.

.. list-table::
   :widths: 200 300
   :header-rows: 0

   * - Support Response Targets
     - Address as time permits, best effort.
   * - Customer Response Targets
     - Customer response within 2 service days following service hour based receipt of report.
       
       Subsequent updates as warranted, or as agreed.

The following items will rarely be classified above Severity 3:

* Questions regarding the use of cookbooks, recipes, attributes, data bags, or any other individual portions of the Chef architecture.
* Debugging a customer written or modified cookbook or recipe.
* Deployment questions that are of a “how to” nature
