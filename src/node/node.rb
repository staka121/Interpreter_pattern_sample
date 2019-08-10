# frozen_string_literal: true

class Node
  def parse
    raise NotImplementedError, 'You must implement the parse method'
  end

  # 何かしらの処理を行う
  def play
    raise NotImplementedError, 'You must implement the parse method'
  end
end
