require "marcjaramillo_palindrome/version"

module MarcjaramilloPalindrome
  def palindrome?
    downcased_string == downcased_string.reverse
  end

  private

  def downcased_string
    self.to_s.scan(/[a-z\d]/i).join.downcase
  end
end

class String
  include MarcjaramilloPalindrome
end

class Integer
  include MarcjaramilloPalindrome
end