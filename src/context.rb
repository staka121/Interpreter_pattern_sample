# frozen_string_literal: true

class Context
  def initialize(tokens)
    @tokenizedString = tokens
    @tokenIndex = 0
  end

  def nextToken()
    if (!@tokenizedString[@tokenIndex + 1].nil?)
      @tokenIndex += 1
      @tokenizedString[@tokenIndex]
    end
  end

  def currentToken()
    return @tokenizedString[@tokenIndex]
  end

  def currentIndex()
    return @tokenIndex
  end

  def skipToken(str)
    if str != currentToken
      raise '[構文エラー] 期待したトークンじゃなかったです'
    end

    nextToken()
  end

  # rubyで実装する上では不要そう
  def currentNumber()
    currentToken.to_i
  end
end
