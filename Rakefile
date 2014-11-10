task :default => :spec

desc "run examples"
task :spec do
  sh "rspec -I. spec/my_sinatra_app_specs.rb"
end

task :server do
  sh "ruby my_sinatra_app.rb"
end

# Had many problems installing nokogiri 1.6.4 on my mac.
# solved this way:

# gem install nokogiri -- --use-system-libraries
#        [--with-xml2-config=/path/to/xml2-config]
#        [--with-xslt-config=/path/to/xslt-config]
desc "Install nokogiri 1.6.4 (11/2014)"
task :nokogiri do
 command = "gem install nokogiri -- --use-system-libraries "+
   "--with-xml2-config=/usr/local/Cellar/libxml2/2.9.1/lib "+
   "--with-xslt-config=/usr/local/Cellar/libxml2/2.9.1/include/"
  sh command
end
