class logrotate::install::add(
	$pack = 'undef',
){
	if $operatingsystem == 'Ubuntu'{
		package{'$pack':
			ensure => installed,
		}
	}
}

