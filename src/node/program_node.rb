# frozen_string_literal: true

require_relative 'node'
require_relative 'command_list_node'

# <program> ::= program <command list>
class ProgramNode < Node
  def initialize
    @command_list_node = nil
  end

  def parse(context)
    context.skipToken('program')
    @command_list_node = CommandListNode.new
    @command_list_node.parse(context)
  end

  def play
    @command_list_node.play
  end
end
