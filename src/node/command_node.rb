# frozen_string_literal: true

require_relative 'node'
require_relative 'repeat_command_node'
require_relative 'primial_command_node'

# <command> ::= <repeat command> | <primitive command>
class CommandNode < Node
  def initialize
    @node = nil
  end

  def parse(context)
    if context.currentToken === 'repeat'
      @node = RepeatCommandNode.new
      @node.parse(context)
    else
      @node = PrimialCommandNode.new
      @node.parse(context)
    end
  end

  def play
    @node.play
  end
end
