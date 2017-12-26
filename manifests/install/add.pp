class logrotate::install::add{
	if $operatingsystem == 'Ubuntu'{
		package{'$packagename':
			ensure => installed,
		}
	}
}
