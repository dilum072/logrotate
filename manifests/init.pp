class logrotate(
	$install = 'undef',
	$uninstall = 'undef',
){
	if $logrotate::install == 'yes'{
		include logrotate::install::add
	}
	if $logrotate::uninstall == 'yes'{
		include logrotate::uninstall::remove
	}
}
