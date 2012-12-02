Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.0.5"
  s.date = "2012-12-2"

  # Gem Details
  s.name = "fittext"
  s.authors = ["Casey Olson"]
  s.summary = %q{Compass extension for inflating type with media queries.}
  s.description = %q{Compass extension for inflating type with media queries.}
  s.email = "casey.m.olson@gmail.com"
  s.homepage = "http://www.bookcasey.com/fittext/"

  # Gem Files
  s.files = %w(README.md)
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")

  # Gem Bookkeeping
  s.has_rdoc = false
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", [">= 0.10.0.rc3"])
end