require 'terminal-notifier'


module SimplePomo
	class Notifier
		class NotificationCenterNotifier

		  def notify(message, opts = {})
		  	title = 'Simple Pomo'

		  	TerminalNotifier.notify message, :title => title, :subtitle => opts[:header], :sender => 'com.apple.Terminal'
		  	system("say '#{message}'")
		  end
		end
	end

end
