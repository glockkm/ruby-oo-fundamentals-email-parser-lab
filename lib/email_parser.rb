# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    attr_accessor :emails

    def initialize(emails) # gets initialized with a string of emails.
        @emails = emails
    end

    def parse  # parse those email addresses into a useful array using an instance method, parse.
        emails.split(/[,\s]+/).uniq
        # emails.split.collect do |address| # .collect = new array is returned which has the new values
        # address.split(',').uniq                # .split = splits the given string into an array of substrings based on a pattern specified
    end
# .uniq returns only unique values
end