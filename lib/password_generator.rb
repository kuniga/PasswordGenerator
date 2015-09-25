class PasswordGenerator
  def initialize
    @capital_letters    = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
    @small_letters      = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
    @numeric_characters = %w(0 1 2 3 4 5 6 7 8 9)
    @all_characters     = @capital_letters + @small_letters + @numeric_characters
  end

  def generate(n)
    raise if n < 8
    raise if n > 32

    temp  = @capital_letters.sample
    temp += @small_letters.sample
    temp += @numeric_characters.sample
    (n - 3).times do
      temp += @all_characters.sample
    end
    temp.split("").shuffle.join
  end
end