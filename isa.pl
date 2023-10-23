#!/usr/bin/perl 

use v5.38;
use feature 'class';
no warnings 'experimental::class';

class LDAP::Object::top { }

class LDAP::Object::person :isa(LDAP::Object::top) {
    # MUST
	field $cn :param :reader;
    field $sn :reader :param;
	# field ($cn, $sn) :param :reader;

    # MAY
    field $description :reader;
    field $seeAlso :reader;
    field $telephoneNumber :reader;
    field $userPassword :reader;
}

class LDAP::Object::organizationalPerson :isa(LDAP::Object::person) {
    # MAY
    field $title :reader;
    field $x121Address :reader;
    field $registeredAddress :reader;
    field $destinationIndicator :reader;
    field $preferredDeliveryMethod :reader;
    field $telexNumber :reader;
    field $teletexTerminalIdentifier :reader;
    field $telephoneNumber :reader;
    field $internationaliSDNNumber :reader;
    field $facsimileTelephoneNumber :reader;
    field $street :reader;
    field $postOfficeBox :reader;
    field $postalCode :reader;
    field $postalAddress :reader;
    field $physicalDeliveryOfficeName :reader;
    field $ou :reader;
    field $st :reader;
    field $l :reader;
}

my $person = LDAP::person->new({$cn = 'Emmanuel Seyman', $sn = 'Seyman'});
