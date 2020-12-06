#!/usr/bin/env ruby

require 'yaml'
files = Dir.glob('*.ipynb')
docs = files.map {|f| File.basename(f, '.*') }.sort.reverse
out = docs.map {|doc| { 'file' => doc }}
puts YAML.dump(out, indentation: 2)
