# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

#turn a string of comma and/or space separated emails into an array
#t.split(Regexp.union(delimiters)).reject { |e| e.empty? }
class EmailAddressParser

  attr_accessor :name, :emails

  def initialize(emails)
    @emails = emails
  end
  def parse
  @emails.split(Regexp.union([',', ' '])).reject { |e| e.empty? }.uniq
end
end

# uriah_emails.parse
