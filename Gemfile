# Use `bundle install` in order to install these gems
# Use `bundle exec rake` in order to run the specs using the bundle
source "http://rubygems.org"
gemspec

gem 'rake'

platforms :mri_18 do
  gem 'SystemTimer'
end

group :development do
  platforms :mri_18 do
    gem 'ruby-debug'
  end

  platforms :mri_19 do
    gem 'debugger'
  end
end

