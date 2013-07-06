Then(/^I can see list of (\d+) posted blogposts$/) do |count|
  page.should have_selector("table#posts-list > tbody > tr:eq(#{count})")
end
