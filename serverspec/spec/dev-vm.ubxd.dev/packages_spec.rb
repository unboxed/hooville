require File.expand_path('../../../spec_helper.rb', __FILE__)

packages = [
    'apticron',
    'bind9-host',
    'bzip2',
    'bsdutils',
    'coreutils',
    'cron',
    'git-all',
    'gnupg',
    'iproute',
    'logrotate',
    'man-db',
    'manpages',
    'ntp',
    'ntpdate',
    'openjdk-7-jre-headless',
    'openssh-server',
    'openssl',
    'python3-software-properties',
    'psmisc',
    'rsyslog',
    'screen',
    'software-properties-common',
    'sudo',
    'tcpdump',
    'ufw',
    'ulogd',
    'unzip',
    'vim',
    'wget'
  ]

describe "Default packages for #{ENV['TARGET_HOST']} are installed." do

  packages.each do|pkg|
    describe package(pkg) do
      it { should be_installed }
    end
  end

end

describe "OpenJDK 7 should be installed" do

  # Java version should return something like the following...

  # java version "1.7.0_79"
  # OpenJDK Runtime Environment (IcedTea 2.5.5) (7u79-2.5.5-0ubuntu0.14.04.2)
  # OpenJDK 64-Bit Server VM (build 24.79-b02, mixed mode)

  describe command('java -version') do
    its(:stdout) { should match /java version \"1.7.*\"/ }
    its(:stdout) { should match /OpenJDK Runtime Environment/ }
  end
end

describe "Hadoop core packages should be installed" do
  hadoop_core = [
    'hadoop',
    'hadoop-hdfs',
    'libhdfs0',
    'hadoop-yarn',
    'hadoop-mapreduce',
    'hadoop-client',
    'openssl'
  ]

  hadoop_core.each do |hdp|
    describe package(hdp) do
      it { should be_installed }
    end
  end

end
