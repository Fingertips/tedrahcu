$:.unshift File.expand_path('../lib', __FILE__)

require 'date'

Gem::Specification.new do |spec|
  spec.name     = "tedrahcu"
  spec.version  = '1.0.0'
  spec.licenses = ['MIT']
  spec.date     = Date.today

  spec.summary  = "Ruby wrapper for uchardet"
  spec.description = "Uchardet tries to guess the encoding of a byte stream."
  spec.authors  = ["Manfred Stienstra"]
  spec.homepage = "http://github.com/Manfred/tedrahcu"
  spec.email = ['manfred@fngtps.com']

  spec.extensions << 'ext/extconf.rb'
  spec.files = Dir.glob('{bin,lib,ext}/**/*') + [
    'README.md',
    'COPYING'
  ]
  spec.extra_rdoc_files = %w(
    README.md
    COPYING
  )
end
