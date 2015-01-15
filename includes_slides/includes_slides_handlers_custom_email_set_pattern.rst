.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.

We could modify the chef_handler cookbook to add a recipe for the email handler

However, we'd basically be "forking" an upstream cookbook

Instead, let's create our own cookbook and use chef_handler as a "library"

Code reusability!
