# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('../../ext', __dir__))
require 'tedrahcu'
Tedrahcu.detect(File.read('tedrahcu.gemspec'))
