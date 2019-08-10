# frozen_string_literal: true

require_relative 'node'

# <primitive command> ::= "go" | "right" | "left"
class PrimialCommandNode < Node
  def initialize
    @name = ''
  end

  def parse(context)
    @name = context.currentToken
    context.nextToken
    unless ["go", "right", "left"].include?(@name)
      raise '[構文エラー] コマンド間違ってますよ'
    end
  end

  def play
    if @name === 'go'
      p '↑'
    elsif @name === 'right'
      p '→'
    elsif @name === 'left'
      p '←'
    else
      raise 'ここに来ることはないはず'
    end
  end
end
