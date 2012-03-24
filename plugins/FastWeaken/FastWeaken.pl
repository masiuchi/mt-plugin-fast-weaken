package MT::Plugin::FastWeaken;
use strict;
use warnings;
use base qw( MT::Plugin );

our $VERSION = '0.01';
our $NAME    = ( split /::/, __PACKAGE__ )[-1];

my $plugin = __PACKAGE__->new({
    name        => $NAME,
    id          => lc $NAME,
    key         => lc $NAME,
    l10n_class  => $NAME . '::L10N',
    version     => $VERSION,
    author_name => 'masiuchi',
    author_link => 'https://github.com/masiuchi/',
    plugin_link => 'https://github.com/masiuchi/mt-plugin-fast-weaken/',
    description => '<__trans phrase="You can make MT little faster by using mt-fast-weaken.cgi.">',
});
MT->add_plugin( $plugin );

1;
__END__
