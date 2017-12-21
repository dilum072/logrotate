class logrotate::install::add{
	if $operatingsystem == 'Ubuntu'{
		package{'logrotate':
			ensure => installed,
		}
	}
}
