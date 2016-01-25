.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following properties:

``backup``
   **Ruby Types:** FalseClass, Integer

   |backups_kept| Default value: ``5``.

``cookbook``
   **Ruby Type:** String

   |cookbook file_location| The default value is nil.

``group``
   **Ruby Types:** Integer, String

   |group resource link|

``hash``
   **Ruby Type:** Hash

   This is used to optionally pass a hash of all the key/value options used to create a launchd plist.

``label``
   **Ruby Type:** String

   The label for the launchd daemon/agent, which is used to create the launchd plist name. |resource_block_default| |see syntax|

``mode``
   **Ruby Types:** Integer, String

   |mode resource_file| Default value: ``777``.

   The behavior is different depending on the platform.

   |unix| systems: |mode *nix|

``notifies``
   **Ruby Type:** Symbol, 'Chef::Resource[String]'

   |notifies|

   .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

   .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst

``owner``
   **Ruby Types:** Integer, String

   |owner resource launchd|

``path``
   **Ruby Type:** String

   |path full_path_to_file| For example: ``/Launchd/LaunchDaemons/com.chef.plist"``.

``provider``
   **Ruby Type:** Chef Class

   Optional. |provider resource_parameter|

``retries``
   **Ruby Type:** Integer

   |retries| Default value: ``0``.

``retry_delay``
   **Ruby Type:** Integer

   |retry_delay| Default value: ``2``.

``source``
   **Ruby Types:** String, Array

   |source cookbook_file| Can be used to distribute specific files to specific platforms. |see file_specificity| |see syntax|

``subscribes``
   **Ruby Type:** Symbol, 'Chef::Resource[String]'

   |subscribes|

   .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

   |subscribes timers|

``type``
   **Ruby Type:** String

   type is used to define the type of launchd plist you would like to create. Options are [daemon, agent], Daemon will create LaunchDaemon, and Agent will create a LaunchAgent. Default: daemon


Apple Launchd Properties
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
These parameters are Apples keys/values that you can add to a launch daemon or agent. For more details see: https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man5/launchd.plist.5.html#//apple_ref/doc/man/5/launchd.plist

``program``
   **Ruby Type:** String

   This key maps to the first argument of execvp(3). If this key is missing, then the first element of the array of strings provided to the ProgramArguments will be used instead. This key is required in the absence of the ProgramArguments key

``program_arguments``
   **Ruby Type:** Array

   This key maps to the second argument of execvp. This key is required in the absence of the Program key. Please note: many people are confused by this key. Please read execvp very carefully!

``abandon_process_group``
   **Ruby Type:** String

   When a job dies, launchd kills any remaining processes with the same process group ID as the job. Set-ting Setting ting this key to true disables that behavior.

``debug``
   **Ruby Types:** TrueClass, FalseClass

   This optional key specifies that launchd should adjust its log mask temporarily to LOG_DEBUG while dealing with this job.

``disabled``
   **Ruby Types:** TrueClass, FalseClass

   This optional key is used as a hint to launchctl(1) that it should not submit this job to launchd when loading a job or jobs.

``enable_globbing``
   **Ruby Types:** TrueClass, FalseClass

   This flag causes launchd to use the glob(3) mechanism to update the program arguments before invocation.

``enable_transactions``
   **Ruby Types:** TrueClass, FalseClass

   This flag instructs launchd that the job promises to use vproc_transaction_begin(3) and vproc_transaction_end(3) to track outstanding transactions that need to be reconciled before the process can safely terminate. If no outstanding transactions are in progress, then launchd is free to send the SIGKILL signal.


``environment_variables``
   **Ruby Type:** Hash

   This optional key is used to specify additional environmental variables to be set before running the job.

``exit_timeout``
   **Ruby Type:** Integer

   The amount of time launchd waits before sending a SIGKILL signal. The default value is 20 seconds. The value zero is interpreted as infinity.

``ld_group``
   **Ruby Type:** String

   This optional key specifies the group to run the job as. This key is only applicable when launchd is running as root. If UserName is set and GroupName is not, the the group will be set to the default group of the user.

``hard_resource_limits``
   **Ruby Type:** Hash

   Resource limits to be imposed on the job. These adjust variables set with setrlimit(2).

``inetd_compatibility``
   **Ruby Type:** Hash

   The presence of this key specifies that the daemon expects to be run as if it were launched from inetd.

``init_groups``
   **Ruby Types:** TrueClass, FalseClass

   This optional key specifies whether initgroups(3) should be called before running the job. The default is true in 10.5 and false in 10.4.

``keep_alive``
   **Ruby Types:** TrueClass, FalseClass

   This optional key is used to control whether your job is to be kept continuously running or to let demand and conditions control the invocation.

``launch_only_once``
   **Ruby Types:** TrueClass, FalseClass

   This optional key specifies whether the job can only be run once and only once. In other words, if the job cannot be safely respawned without a full machine reboot, then set this key to be true.

``limit_load_from_hosts``
   **Ruby Type:** String

   This configuration file only applies to hosts NOT listed with this key

``limit_load_to_hosts``
   **Ruby Type:** Array

   This configuration file only applies to the hosts listed with this key

``limit_load_to_session_type``
   **Ruby Type:** String

   This configuration file only applies to sessions of the type specified

``low_priority_io``
   **Ruby Types:** TrueClass, FalseClass

   This optional key specifies whether the kernel should consider this daemon to be low priority when doing file system I/O.

``mach_services``
   **Ruby Type:** Hash

   This optional key is used to specify Mach services to be registered with the Mach bootstrap sub ystem.

``nice``
   **Ruby Types:** TrueClass, FalseClass

   This optional key specifies what nice(3) value should be applied to the daemon.

``on_demand``
   **Ruby Types:** TrueClass, FalseClass

   This key was used in Mac OS X 10.4 to control whether a job was kept alive or not.

``process_type``
   **Ruby Type:** String

   This optional key describes, at a high level, the intended purpose of the job. The system will apply resource limits based on what kind of job it is. [Background, Standard, Adaptive, Interactive]

``queue_directories``
   **Ruby Type:** Array

   Much like the WatchPaths option, this key will watch the paths for modifications. The difference being that the job will only be started if the path is a directory and the directory is not empty.

``root_directory``
   **Ruby Type:** String

   This optional key is used to specify a directory to chroot(2) to before running the job.

``run_at_load``
   **Ruby Types:** TrueClass, FalseClass

   This optional key is used to control whether your job is launched once at the time the job is loaded. The default is false.

``sockets``
   **Ruby Type:** Hash

   This optional key is used to specify launch on demand sockets that can be used to let launchd know when to run the job.

``soft_resource_limits``
   **Ruby Type:** Array

   Resource limits to be imposed on the job. These adjust variables set with setrlimit(2).

``standard_error_path``
   **Ruby Type:** String

   This optional key specifies what file should be used for data being sent to stderr when using stdio(3).

``standard_in_path``
   **Ruby Type:** String

   This optional key specifies what file should be used for data being supplied to stdin when using stdio(3).

``standard_out_path``
   **Ruby Type:** String

   This optional key specifies what file should be used for data being sent to stdout when using stdio(3).

``start_calendar_interval``
   **Ruby Type:** Hash

   This optional key causes the job to be started every calendar interval as specified.

``start_interval``
  **Ruby Type:** Integer

  This optional key causes the job to be started every N seconds.

``start_on_mount``
   **Ruby Types:** TrueClass, FalseClass

   This optional key causes the job to be started every time a filesystem is mounted.

``throttle_interval``
   **Ruby Type:** Integer

   This key lets one override the default throttling policy imposed on jobs by launchd. The value is in seconds, and by default, jobs will not be spawned more than once every 10 seconds.

``time_out``
   **Ruby Type:** Integer

   The recommended idle time out (in seconds) to pass to the job. If no value is specified, a default time out will be supplied by launchd for use by the job at check in time.

``umask``
   **Ruby Type:** Integer

   This optional key specifies what value should be passed to umask(2) before running the job.

``username``
   **Ruby Type:** String

   This optional key specifies the user to run the job as. This key is only applicable when launchd is running as root.

``wait_for_debugger``
   **Ruby Types:** TrueClass, FalseClass

   This optional key specifies that launchd should instruct the kernel to have the job wait for a debugger to attach before any code in the job is executed.

``watch_paths``
   **Ruby Type:** String

   This optional key causes the job to be started if any one of the listed paths are modified.

``working_directory``
   **Ruby Type:** String

   This optional key is used to specify a directory to chdir(2) to before running the job.
