package Koha::Plugin::HKS3::ApplyFrameworkDefaultsLibelle::Controller;

use Modern::Perl;

use base qw(Koha::Plugins::Base);


our $VERSION = "0.900";

our $metadata = {
    name            => 'ApplyFrameworkDefaultsLibelle',
    author          => 'Mark Hofstetterr, HKS3',
    date_authored   => '2023-11-08',
    date_updated    => '2023-11-08',
    minimum_version => '19.05.00.000',
    maximum_version => undef,
    version         => $VERSION,
    description     => 'ApplyFrameworkDefaultsLibelle'
};

sub new {
    my ( $class, $args ) = @_;

    $args->{'metadata'} = $metadata;
    $args->{'metadata'}->{'class'} = $class;

    my $self = $class->SUPER::new($args);
    return $self;
}

my $keep = {
    '000' => { '@' => 1 },
    '336' => { '2' => 1, 'a' => 1 , 'b' => 1 },
    '337' => { '2' => 1, 'a' => 1 , 'b' => 1 },
    '338' => { '2' => 1, 'a' => 1 , 'b' => 1 },
    '500' => { 'a' => 1 },
    '655' => { 'a' => 1 , 'b' => 1 },
    '773' => { 'i' => 1 },
    '942' => { 'c' => 1 },
};
    
sub framework_defaults_override {
    my ( $self, $tag, $subfield, $value, $form_mode ) = @_;
    my $r = {override_default_value => undef, apply_override => undef};
    if ( $keep->{$tag}->{$subfield} ) {
        $r->{apply_override} = 1;
    }
    return $r;
}

1;

__END__

ApplyFrameworkDefaultsLibelle

Leader 000
(300 $ a,b,c)  die 300er Felder bitte einmal ausblenden, muss noch mal über die Sinnhaftigkeit nachdenken 
336 $ 2,a,b
337 $ 2,a,b
338 $ 2,a,b
500 $ a
655 $ 9,a
773 $ i
(856 $ 3,z) Schau ich nochmal nach
942 $ c
