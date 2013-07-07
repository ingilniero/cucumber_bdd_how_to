Given(/^there is a comment on this post$/) do
  @post.comments.create! name: "Wayne", email: "admin@wayne.com", content: "Test deleting comment"
end

When(/^I click "(.*?)"$/) do |arg1|
  click_on "Delete Comment"
end

Then(/^the comment should be deleted$/) do
  find("#comments-list").should have_no_content("Wayne")
end
