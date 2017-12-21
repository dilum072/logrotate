# [appname]
#Create a file $appname in /etc/logrotate.d/ which holds a configuration
# 
#[log_path]
#Monitors the /var/log/test1.log file and does log rotation on a daily basis
#
# [timebased]
#Does log rotation on a daily basis
#
# [size_based]
#Does log roation on size based. Note that If both size and rotation interval are set, then size is taken as a higher priority.
#
# [retention_period]
#four logs will be kept without deleting
#
# [compress]
#logfiles can be compressed using the gzip format 
#
# [delaycompress]
#delays the compression process till the next log rotation
#
# [missingok]
#avoids halting on any error and carries on with the next log file
#
# [notifempty]
#avoid log rotation if the logfile is empty
#
# [user] [group]
#creates a new empty file with the specified properties after log-rotation.
#
#Example
#logrotate::config{'test1':
#                appname => 'test1',
#                log_path => '/var/log/test1.log',
#                timebased => 'daily',
#                size_based => '1M',
#                retention_period => '4',
#                compress => 'yes',
#                delaycompress => 'yes',
#                missingok => 'yes',
#                notifempty => 'yes',
#                user => 'test1',
#                group => 'test1',
#}
#
#
#
define logrotate::config(
	$appname = 'undef',
	$log_path = 'undef',
	$timebased = 'undef',
	$size_based = 'undef',
	$retention_period = 'undef',
	$compress = 'yes',
	$delaycompress = 'yes',
	$missingok = 'yes',
	$notifempty = 'yes',
	$user = 'undef',
	$group = 'undef',
){	
	file { "/etc/logrotate.d/$appname":
		ensure => present,
		content => template("logrotate/logrotate.conf.erb"),
	}
}	
