class logrotate::uninstall::remove(
		$pack = 'undef',
){
	if $operatingsystem == 'Ubuntu'{
		package{'$pack':
			ensure => purged,
		}
	}
}

