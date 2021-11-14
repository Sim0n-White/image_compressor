require "test_helper"

class ImageMailerFailMailerTest < ActionMailer::TestCase
  test "image_fail" do
    mail = ImageMailerFailMailer.image_fail
    assert_equal "Image fail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
