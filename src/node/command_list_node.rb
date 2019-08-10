# frozen_string_literal: true

require_relative 'node'
require_relative 'command_node'

# <command list> ::= <command>* end
class CommandListNode < Node
  def initialize
    @command_list = []
  end

  def parse(context)
    loop do
      if context.currentToken.nil?
        raise '[warning] "end" not found'
      elsif context.currentToken === 'end'
        context.skipToken('end')
        break
      else
        commandNode = CommandNode.new
        commandNode.parse(context)
        @command_list.push(commandNode)
      end
    end
  end

  def play
    @command_list.each { |command| command.play }
  end
end
