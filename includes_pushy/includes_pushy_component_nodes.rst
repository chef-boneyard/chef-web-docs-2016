.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |pushy| client is used to receive job messages from the |pushy| server and to verify the heartbeat status of the |pushy| environment. The |pushy| client uses the same authorization / authentication model as the |chef client|. The |pushy| client listens for heartbeat messages from the |pushy| server. If there is no heartbeat from the |pushy| server, the |pushy| client will finish its current job, but then stop accepting any new jobs until the heartbeat from the |pushy| server resumes.
