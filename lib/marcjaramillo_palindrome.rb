require "marcjaramillo_palindrome/version"

class String
  def palindrome?
    downcased_string == downcased_string.reverse
  end

  private

  def downcased_string
    self.scan(/[a-z]/i).join.downcase
  end
end