#!/usr/bin/perl
my $input = <>;
chop $input;
my ($count, $vtakahashi, $vkame, $length) = split ' ', $input;

my $xtakahashi = 0;
my $xkame = $length;
foreach my $kai (1..$count) {
    my $sec = ($xkame - $xtakahashi) / $vtakahashi;
    my $dtakahashi = $vtakahashi * $sec;
    my $dkame = $vkame * $sec;
    $xtakahashi += $dtakahashi;
    $xkame += $dkame;
#    print "$kai回目の移動で、高橋君が距離 $dtakahashi メートルを $sec 秒で移動します。この時、カメは $dkame メートル先に進んでいます。\n";
}
my $ans = $xkame - $xtakahashi;
print "$ans\n";
