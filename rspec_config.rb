RSpec.configure do |c|
  c.fail_fast = true
  c.color = true
end

#!# I added the following to suppress the should/expect syntax deprecation warnings I get when I run the rake command.

RSpec.configure do |config|
  # ...
  config.mock_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end
