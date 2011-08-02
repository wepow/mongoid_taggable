# Use `bundle install` in order to install these gems
# Use `bundle exec rake` in order to run the specs using the bundle
source "http://rubygems.org"
gemspec

gem 'rake'

platforms :mri_18 do
  gem 'ruby-debug'
  gem 'SystemTimer'
end

platforms :mri_19 do
  gem 'ruby-debug19', :require => 'ruby-debug' if RUBY_VERSION < '1.9.3'
end

