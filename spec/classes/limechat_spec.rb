require 'spec_helper'

describe 'limechat' do
  shared_examples 'it installs limechat' do
    it { should contain_class('limechat') }
    it { should contain_package('LimeChat').with_provider('compressed_app') }
  end

  context 'with no parameters' do
    it_behaves_like 'it installs limechat'
    it { should contain_package('LimeChat').with_source('http://downloads.sourceforge.net/project/limechat/limechat/LimeChat_2.42.tbz') }
  end

  context 'with a version' do
    let(:params) { { :version => '3.00' } }

    it_behaves_like 'it installs limechat'
    it { should contain_package('LimeChat').with_source('http://downloads.sourceforge.net/project/limechat/limechat/LimeChat_3.00.tbz') }
  end

  context 'with a URL base' do
    let(:params) { { :url_base => 'https://s3.amazonaws.com/boxen-downloads/limechat' } }

    it_behaves_like 'it installs limechat'
    it { should contain_package('LimeChat').with_source('https://s3.amazonaws.com/boxen-downloads/limechat/LimeChat_2.42.tbz') }
  end

end
