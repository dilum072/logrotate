# [cron_name]
#this should be equal to $logrotate::config::appname

#example
#        logrotate::cron{"test1":
#                cron_name        => test1,
#                ensure      => present,
#                hour        => '*',
#                minute      => '*',
#                month       => '*',
#                monthday    => '*',
#                weekday     => '*',
#                user        => root

define logrotate::cron(
	        $cron_name        = 'undef', 
                $ensure      = 'undef',
                $hour        = 'undef',
                $minute      = 'undef',
                $month       = 'undef',
                $monthday    = 'undef',
                $user        = 'undef',
                $weekday     = 'undef',

){
	cron{"$cron_name":
  		ensure      => $ensure,
  		command     => "/etc/cron.daily/logrotate -f /etc/logrotate.d/$cron_name",
  		hour        => $hour, 
  		minute      => $minute,
  		month       => $month,
  		monthday    => $monthday,
  		weekday     => $weekday,
  		user        => $user,
	}
}
