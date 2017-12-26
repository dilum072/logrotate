class logrotate::uninstall::remove{
	if $operatingsystem == 'Ubuntu'{
		package{'$packagename':
			ensure => purged,
		}
	}
}

