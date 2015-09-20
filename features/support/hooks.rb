Before do
  p "hooks.rb: Before each scenario"
end

Before do |scenario|
  p "hooks.rb: Starting scenario: #{scenario.title}"
end
After do |scenario|
  p "hooks.rb: After scenario: #{scenario.title}"
  if scenario.failed?
    p "hooks.rb: Scenario failed"
  end
end

AfterStep do |scenario|
  p "hooks.rb: After AfterStep"
end

at_exit do
  p "hooks.rb: at_exit"
end
