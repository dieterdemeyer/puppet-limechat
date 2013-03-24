require 'spec_helper'

describe 'limechat' do

  it { should contain_class('limechat') }
  it { should contain_package('LimeChat').with_provider('compressed_app') }
  it { should contain_package('LimeChat').with_source('http://cloud.github.com/downloads/psychs/limechat/LimeChat_2.33a.tbz') }

end
