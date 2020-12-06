#!/usr/bin/env ruby

require 'yaml'
files = Dir.glob('*.ipynb')
out = {}
docs = files.map {|f| File.basename(f, '.*') }.sort
out['file'] = docs.last
out['sections'] = docs.map {|doc| { 'file' => doc }}
puts YAML.dump(out, indentation: 2)
