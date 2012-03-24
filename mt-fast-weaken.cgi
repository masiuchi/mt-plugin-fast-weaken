#!/usr/bin/perl
use strict;
use warnings;

use lib $ENV{MT_HOME} ? "$ENV{MT_HOME}/lib" : 'lib';

BEGIN {
    require MT::Util;
    no warnings;
    if ( eval 'use Scalar::Util; 1' && Scalar::Util->can( 'weaken' ) ) {
        *MT::Util::weaken = sub {
            return Scalar::Util::weaken( $_[0] );
        };
    } else {
        *MT::Util::weaken = sub {
            return;
        };
    }
}

use MT::Bootstrap App => 'MT::App::CMS';

