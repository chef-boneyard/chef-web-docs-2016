.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the |dsl handler| to attach a callback to an event. If the event occurs during the |chef client| run, the associated callback is executed. For example:

* Sending email if a |chef client| run fails
* Sending a notification to chat application if an audit run fails
* Aggregating statistics about resources updated during a |chef client| runs to |statsd| 
