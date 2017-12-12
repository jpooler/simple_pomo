module SimplePomo
  module Task
  	attr_accessor :started_at
  
  	def initialize()
  		@started_at = Time.now
  	end
  
  	def start()
  		notifier = SimplePomo::Notifier.new
  		#say "Started #{self}, you have 25 minutes to go!"
  		notifier.notify "Let's go do this #{self}", :header => 'GO Time', :type => :warning
  		puts "we did a thing"
  	end
  end
end
