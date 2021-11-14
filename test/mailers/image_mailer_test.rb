require "test_helper"

class ImageMailerTest < ActionMailer::TestCase
  test "image_status" do
    mail = ImageMailer.image_status
    assert_equal "Image status", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
