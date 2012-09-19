.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A handler is a feature of |chef| that is used to trigger certain behaviors in response to certain situations, typically identified during a |chef run|.

* An exception handler is used to trigger behaviors when a defined aspect of a |chef| run fails.
* A report handler is used to trigger behaviors when a defined aspect of a |chef| run is successful. 

Both types of handlers can be used to gather data about a |chef| run, and when used across the entire |chef| organization, can provide rich levels of data about all types of |chef| usage that can be used later for trending and analysis. **jamescott: this really needs to be re-written. Basically, Chef can track GOBS of data based on the success/fail of a Chef run and then once collected, the customer can do LOTS OF THINGS with it, including to trigger custom actions based on exceptions (and probably not based on reports) so that the system can adjust in real-time to things that go wrong. JUST A GUESS.**

