require 'simple_pomo/notifier/notification_center_notifier'

module SimplePomo
	class Notifier
		def initialize()
			@notifier = SimplePomo::Notifier::NotificationCenterNotifier.new
		end
		def notify(message, opts = {})
			@notifier.notify(message,opts)
		end
	end
end
