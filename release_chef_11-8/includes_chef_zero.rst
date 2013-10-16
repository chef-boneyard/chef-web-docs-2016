.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef zero| is a |chef server| that runs in-memory on the local machine. 

|chef zero| allows the |chef client| to be run against the |chef repo| on as if it were running against the |chef server|.

|chef zero| is useful for testing and validating the behavior of the |chef client|, cookbooks, recipes, and run-lists.

|chef zero| does not perform any input validation, save any data, or do any type of authentication or authorization.

|chef zero| starts empty; the results of any previous use of |chef zero| are not saved or usable on subsequent uses of |chef zero|.

