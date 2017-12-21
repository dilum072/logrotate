define logrotate::useradd(
	$username = 'undef',
	$group = 'undef',

){
	user { "$username":
                ensure => present,
                groups => "$group",
        }
        group{ "$group":
                ensure => present,
	}
	Group["$group"] -> User["$username"]
}
