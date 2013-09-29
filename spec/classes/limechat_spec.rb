require 'spec_helper'

describe 'limechat' do

  it { should contain_class('limechat') }
  it { should contain_package('LimeChat').with_provider('compressed_app') }
  it { should contain_package('LimeChat').with_source('http://surfnet.dl.sourceforge.net/project/limechat/limechat/LimeChat_2.37.tbz') }

end
