class logrotate::uninstall::remove{
	if $operatingsystem == 'Ubuntu'{
		package{'logrotate':
			ensure => purged,
		}
	}
}
