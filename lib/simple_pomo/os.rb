module SimplePomo
	module OS

          def has_notification_center?
            return false unless OS.mac?

            full_version = `/usr/bin/sw_vers -productVersion`.to_s.chomp
            version = /(10\.\d+)(\.\d+)?/.match(full_version).captures.first.to_f
            return (version >= 10.8)
          end

	end
end
