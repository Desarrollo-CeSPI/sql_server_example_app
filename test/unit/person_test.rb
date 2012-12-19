require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test "if person is deleted also all his posts" do
    post_pre_count = Post.count
    people(:guiman_laba).destroy
    post_pos_count = Post.count
    raise "#{post_pre_count} > #{post_pos_count} Person count: #{Person.count}"
    assert post_pre_count > post_pos_count
  end
end
