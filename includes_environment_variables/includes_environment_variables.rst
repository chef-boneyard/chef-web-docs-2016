.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In Unix, a process' environment is a set of key-value pairs made available to the process. Often, programs expect their environment to contain information required for the program to run. The details of how these key-value pairs are accessed depends on the API of the language being used. This article explains how environments of child processes interact with their parent process and how you can use Chef to ensure that services and applications are started with the proper environment.
