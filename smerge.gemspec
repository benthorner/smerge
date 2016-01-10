require 'semver'

Gem::Specification.new do |s|
  s.name = 'smerge'
  s.version = SemVer.find.format "%M.%m.%p%s"
  s.licenses = 'GNU GPL v2.0'
  s.summary = 'Advanced merge for hashes and other Ruby objects'
  s.description = 'Advanced merge for hashes and other Ruby objects.'
  s.authors = ['Ben Thorner']
  s.email = 'benthorner@outlook.com'
  s.files = Dir['lib/**/*.rb']
  s.required_ruby_version = '>= 2.2.2'
  s.homepage = 'https://github.com/benthorner/smerge'
end
