Gem::Specification.new do |s|
  s.name = "allvehicles"
  s.version = "1.0.0"
  s.licenses = ['MIT']
  s.authors = ["Soundararajan"]
  s.email = "soundararajan@usa.net"
  s.summary = "Vehicle hierarchy"
  s.description = File.read(File.join(File.dirname(__FILE__), "README.md"))
  s.homepage = "www.nerdvantage.com"


  s.executable = ['allvehicles']

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'

end