#!/usr/bin/perl
my %table = (
    'Sunday' => 0,
    'Monday' => 5,
    'Tuesday' => 4,
    'Wednesday' => 3,
    'Thursday' => 2,
    'Friday' => 1,
    'Saturday' => 0
);

my $input = <>;
chop $input;
print "$table{$input}\n";
