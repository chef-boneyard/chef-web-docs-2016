.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A |cookbook type_base| cookbook abstracts core component applications into reusable building blocks:

* Operating systems, such as |centos| and |redhat|
* Package managers, such as |yum| and |apt|
* Core services, such as |ntp| and |cron|
* Storage, such as |raid| and |lvm|
* Networking, such as host files, |dns|, firewalls, route tables, and ports
* Programming languages, such as |php|, |perl|, |ruby|, and |java|
* Common libraries, such as -- chef run-time (chef sugar, etc.) and/or system (make, gcc, etc.) 

Some common charactistics of a |cookbook type_base| cookbook:

* Defines the desired state for core components, i.e. "creates building blocks that can be used anywhere"
* Is typically associated 1:1 with a core component
* Frequently uses libraries, definitions, attributes, and custom resources
* Is often defined by a community cookbook
* Is never forked from a |github| repository
* Typically does not have a dependency on another cookbook

See https://github.com/chef-cookbooks for a good starting point for cookbooks that can be leveraged as |cookbook type_base| cookbooks. Some standouts include chef-splunk, windows, apt, and homebrew.
