require 'pry'
require 'debugger'

module Debugger
  class PryCommand < Command
    def regexp
      /^\s* pry
        (?:\s+(-d))?
        \s*$/x
    end

    def execute
      unless @state.interface.kind_of?(LocalInterface)
        print "Command is available only in local mode.\n"
        throw :debug_error
      end

      get_binding.pry
    end

    class << self
      def help_command
        'pry'
      end

      def help(cmd)
        %{
          pry\tstarts a Pry session.
        }
      end
    end

  end
end
