require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "apply" do
    mail = UserMailer.apply
    assert_equal "Apply", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
