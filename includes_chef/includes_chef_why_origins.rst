.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|opscode| began as a consulting company named HJK Solutions, which built fully automated infrastructure for startups. Everything from installing operating systems to full application development. Over the course of building a dozen or so different startups on the same basic infrastructure timeline (over a one year period), we realized that getting to a place where everyone could have a fully automated infrastructure, regardless of the expertise of their system administrators, was possible. Only a few things stood in the way:

* A fully automated infrastructure is a fully integrated infrastructure. The different components need to be able to communicate with each other. (Your application informs your infrastructure, just like your infrastructure informs your application.)
* Configuration management is the fundamental bedrock of infrastructure automation. For the infrastructure to be fully automated, it must expose configuration management as a service.
* Share the code that builds the infrastructure is difficult; the available tools required a level of specificity that made sharing difficult.
* No other open source tools met the requirements.

We solve these problems by:

* Building a systems integration framework on top of a configuration management system, powered by |ruby| and a simple DSL. This approach makes it easy for beginners.
* Making it possible to easily extend the capabilities of |chef| and by allowing the |chef client| to take instruction from ad-hoc sources.
* Every decision about |chef| was made with an eye to keeping as much as possible inside of cookbooks, which are sharable chunks of automation that are easily reused and extended.
* Sharing an open source version with everyone, creating an outstanding community, with a license that allows everyone to safely integrate |chef| into their environment. |chef| (and |ohai|) are licensed under the Apache License Version 2.0, a liberal, non-copyleft free software license. We maintain Contributor License Agreements, which allows anyone who uses |chef| (or |ohai|) to know they are free from any copyright or patent entanglements. 

The goal is to remove people from the process of building automated infrastructure, as much and as often as possible. |chef| is the first part of a framework that will allow all of us to do that.