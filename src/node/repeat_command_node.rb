# frozen_string_literal: true

require_relative 'node'
require_relative 'command_list_node'

# <repeat command> ::= repeat <number> <command list>
class RepeatCommandNode < Node
  def initialize
    @number = 0
    @commandList = nil
  end

  def parse(context)
    context.skipToken('repeat')
    @number = context.currentNumber
    context.nextToken
    @commandList = CommandListNode.new
    @commandList.parse(context)
  end

  def play
    @number.times { |_| @commandList.play }
  end
end
