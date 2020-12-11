require "marcjaramillo_palindrome/version"

module MarcjaramilloPalindrome
  def palindrome?
    if downcased_string.empty?
      false
    else
      downcased_string == downcased_string.reverse
    end
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