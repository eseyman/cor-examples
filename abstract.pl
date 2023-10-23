#!/usr/bin/perl 

use v5.38;
use feature 'class';
no warnings 'experimental::class';

# roles are not implemented yet!!!

role CMDB::Server {
	field $host_name :param :reader;
	field $owner :reader;

	field $cpu_count :reader;
	field $cpu_speed :reader;
	field $cpu_model :reader;

	field $os :reader;
	field $os_address_width :reader;

	field $ram :reader;

	field $environment :reader;
	field $used_for :reader;
	field $virtual :reader;
}

class CMDB::LinuxServer :isa(CMDB::Server) {
	field $kernel_release :reader
}

class CMDB::WindowsServer :isa(CMDB::Server) {
	field $os_service_pack :reader
}

role CMDB::UNIXServer :isa(CMDB::Server) {
}

class CMDB::AIXServer :isa(CMDB::UNIXServer) {
	field $mainframe :reader
}

class CMDB::HPUXServer :isa(CMDB::UNIXServer) {
}
