
Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Movie.create!(movie)
  end
 # assert false, "Unimplmemented"
end

Then /the director of "(.*)" should be "(.*)"/ do |e1, e2|
  assert page.body.match(/#{e2}/)!= nil&&Movie.find_by_title(e1).director.to_s == e2,"Assertion failed"
end

