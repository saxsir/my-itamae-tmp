all: Gemfile.lock
	bundle exec itamae local roles/vagrant.rb

Gemfile.lock: Gemfile
	bundle install --path vendor/bundle

clean:
	rm -rf Gemfile.lock vendor
