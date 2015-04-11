guard :rspec, cmd: 'bundle exec rescue rspec' do
  watch(%r{^spec/(.*)_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})         { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^spec/spec_helper\.rb$}) { 'spec' }
  watch(%r{^bin/textstat$}) { |m| 'spec/binary_spec.rb' }
end
