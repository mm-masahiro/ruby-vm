module Saria
	class VirtualMachine
		attr_reader :iseq

		def initialize(iseq)
			@iseq = iseq
		end

		def run
			iseq.to_a.last.each do |instruction|
				next unless instruction.is_a?(Array)
				execute(instruction)
			end
		end

		def execute(instruction)
			opecode = instruction.first
			operand = instruction[1..-1]
			$stderr.puts "=== #{opecode}(#{operand.map(&:inspect).join(', ')})"
		end
	end
end
