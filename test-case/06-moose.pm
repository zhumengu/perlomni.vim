
# moose complete

has url => (
    metaclass => 'Labeled',
    is => 'wo'
    label     => "The site's URL",
    isa => 'AFS::Object',
    reader => 'url
    writer => '
);

# role

with 'Restartable' => {
    -alias => {
        stop  => '_stop',
        start => '_start'
    },
    -excludes => [ 'stop', 'start' ],
};
