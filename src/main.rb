# frozen_string_literal: true

require_relative 'node/program_node'
require_relative 'context'

puts 'Put your code'
str = gets

# スペースでトークンを切る
tokens = str.split(" ")
node = ProgramNode.new()
node.parse(Context.new(tokens)) # 構文解析する
node.play # 解析後、書かれた処理を実行する
