#!/usr/bin/ruby env

require "socket"
$hostname = Socket.gethostname

forge 'http://forge.puppetlabs.com'

mod 'puppetlabs/stdlib', '4.17.0'
mod 'rtyler-jenkins', '1.7.0'
mod 'puppet/archive', '1.3.0'
mod 'puppetlabs/java', '1.6.0'

# Not needed with CentOS
# puppetlabs/apt (>= 0.0.3 < 3.0.0) # ubuntu/debian?
# darin/zypprepo (>= 1.0.1 < 2.0.0) # Suse?
