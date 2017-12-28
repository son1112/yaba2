lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yaba/version'

Gem::Specification.new do |spec|
  spec.name            = 'yaba'
  spec.version         = Yaba::VERSION
  spec.authors         = ['Anderson Reinkordt']
  spec.email           = ['anderson.reinkordt@gmail.com']

  spec.summary         = %q{Yet Another Budgeting Application}
  spec.description     = %q{Budgeting, the Anderson way...}
  #spec.homepage        = 'noneya'

  spec.files           = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir          = 'exe'
  spec.executables     = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths   = ['lib']
  /(?<ruby_version>^[0-9.]+)/ =~ File.read('.ruby-version')
  spec.required_ruby_version = "~> #{ruby_version}" # 2017-09-14 (2.3.5)

  #/(?<bundler_version>^[0-9.]+)/ =~ File.read('.bundler-version')
  #spec.add_runtime_dependency    "bundler",        "~> #{bundler_version}"
  spec.add_runtime_dependency    "bundler"
  spec.add_runtime_dependency    "rake",           "~> 10.5"
  spec.add_runtime_dependency    "httparty",       "0.11.0"
  spec.add_runtime_dependency    "nokogiri",       "~> 1.6"
  spec.add_runtime_dependency    "activerecord"
  spec.add_runtime_dependency    "mysql2"

  spec.add_development_dependency "rspec",                   "~> 3.7"              
  spec.add_development_dependency "byebug",                  "~> 9.1"              
  spec.add_development_dependency "pry"
end
