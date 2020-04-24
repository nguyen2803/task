# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include PhotosHelper
end

# ssh -R 80:localhost:3000 ssh.localhost.run
# http:// thanh-92f052c7 . localhost .run/
# https://github.com/C190353/task/tree/like-photo
#
# ID: example@example.com
# Pass: example
#
# Tui đã làm được tới chổ search và trả về kết quả.  (views/photos/index.html.erb)
#
# Bây giờ tui muốn lưu thông tin của tấm ảnh vào DB
# bằng cách click vào 1 button, nhưng code mình đang viết
# như vậy thì không xài được. (views/photos/create.html.erb)
#
# Mọi người có thể chỉ tui keyword nào để tìm xem làm như thế nào được không?
