def nokogiri_install_cmd(ruby_dir)
  "#{ruby_dir}/bin/gem install nokogiri --no-ri --no-rdoc"
end

def ssl_cmd(ruby_dir)
  %{ #{ruby_dir}/bin/ruby -rnet/http -e "Net::HTTP.get(URI('https://letsencrypt.org/'))" }
end

%w(2.4.2 jruby-9.1.13.0).each do |rubie|
  ruby_dir = File.join('/usr/local/ruby', rubie)

  describe directory(ruby_dir) do
    it { should be_directory }
  end

  describe command(nokogiri_install_cmd(ruby_dir)) do
    its('exit_status') { should eq 0 }
  end

  describe command(ssl_cmd(ruby_dir)) do
    its('exit_status') { should eq 0 }
  end
end

describe file('/usr/local/bin/ruby-build') do
  it { should be_file }
  it { should be_executable }
end

describe command('/usr/local/bin/ruby-build --definitions') do
  its('exit_status') { should eq 0 }
end
