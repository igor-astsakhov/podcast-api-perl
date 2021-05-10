#!/usr/bin/perl
#use warnings;
use strict;
use warnings;
# Create a user agent object
use LWP::UserAgent;
my $ua = LWP::UserAgent->new;
$ua->agent("PodcastApi");
#
my $strUrl = 'http://listen-api-test.listennotes.com/api/v2/search';
# my $strUrl = 'http://tester.com/api/v2/search';
# Create a request
my $req = HTTP::Request->new(GET => $strUrl);
# $req->content_type('application/json');
# $req->authorization_basic("admin", "secret");
#
# Pass request to the user agent and get a response back
my $res = $ua->request($req);

# Check the outcome of the response
if ($res->is_success) {
  print $res->content, "\n";
} else {
  print "Error: ", $res->status_line, "\n";
}
