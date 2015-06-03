require File.expand_path('../../../spec_helper.rb', __FILE__)

describe "Apt repository configuration" do
  describe file('/etc/apt/sources.list.d/hdp.list') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_mode 644 }
    its(:content) { should match /http:\/\/public-repo-1.hortonworks.com\/HDP\/ubuntu12\/2.x\/updates\/2.2.4.2 HDP main/ }
  end
end

describe "Logrotate configuration files" do

  describe file('/etc/logrotate.d') do
    it { should be_directory }
  end

  describe file('/etc/logrotate.conf') do
    it { should be_file }
  end

end
