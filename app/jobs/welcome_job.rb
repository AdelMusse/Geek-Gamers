class WelcomeJob < ApplicationJob
  queue_as :default

#   def perform(*args)
#     # Do something later
#     sleep(10)
#     user.update(email: user.email.gsub!(".com", ".my"))
#   end
end
