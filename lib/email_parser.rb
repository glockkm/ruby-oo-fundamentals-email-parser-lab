# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser # new class called EmailAddressParser

    attr_accessor :emails # set up reader/writer using a macro

    def initialize(emails) # new instance will get initialized with a string of emails
        @emails = emails
    end

    def parse  # parse those email addresses into a useful array using an instance method, parse.
        emails.split(/[,\s]+/).uniq # regex character set denoted by [brackets mean match any characters in this set] and + is there because you want to treat multiple spaces between emails as a single separator. split emails on , or space and only keep unique emails
        # .split = splits the given string into an array of substrings based on a pattern specified
        # .uniq returns only unique values
    end

end