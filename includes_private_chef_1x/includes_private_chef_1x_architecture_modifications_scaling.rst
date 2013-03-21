.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The topology options supported by |opscode| allow for a wide range of successful |chef private| environments, and are not likely to require any modifications even for our larger customers.

The individual components of the |chef private| server are commonly available technologies and we expect that many of our customers are already familiar with them. However, |opscode| has taken the guesswork out of configuring |chef private| and has given you configurations that represent everything we have learned while building and running |chef hosted|.

Scaling individual components presents configuration and failover challenges to your |chef private| environment, and is not supported. We discourage our customers from going rogue and scaling things anyway; please give us a chance to work on your scaling issues before deviating your environment from the supported technologies.

If you find that your environment is having problems converging all of your nodes on the schedule you want them to be converged on, please contact our Support team and file a ticket. There may be an underlying cause that we are already aware of or suspect that can be fixed in a timely manner. If not, our support folks will work with the members of our engineering team who know the components you are having issues with to determine a course of action.

We want any and all modifications made to |chef private| to make sense, and we want to be able to support them for you when you need us. We also want to be able to provide you with updates and upgrades that happen as smoothly as possible. We can best meet those goals if we are able to fashion sustainable solutions to customer issues as they arise.