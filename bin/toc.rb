#!/usr/bin/env ruby

require 'yaml'
files = Dir.glob('*.ipynb')
out = {}
docs = files.map {|f| File.basename(f, '.*') }.sort
out['sections'] = docs.map {|doc| { 'file' => doc }}
out['file'] = docs.last
puts YAML.dump(out)
