# Public: Install LimeChat to /Applications
#
# Examples
#
#  include limechat
class limechat(
  $version = '2.42',
){
  package { 'LimeChat':
    provider => 'compressed_app',
    source   => "http://surfnet.dl.sourceforge.net/project/limechat/limechat/LimeChat_${$version}.tbz",
  }
}
