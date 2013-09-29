# Public: Install LimeChat to /Applications
#
# Examples
#
#  include limechat
class limechat {
  package { 'LimeChat':
    provider => 'compressed_app',
    source   => 'http://surfnet.dl.sourceforge.net/project/limechat/limechat/LimeChat_2.37.tbz',
  }
}
