class Message 
    
    @@messages_sent = 0
    
    def initialize from, to 
        @from = from, @to = to;
        @@messages_sent += 1
    end
end


my_message = Message.new 'Jack', 'Tom'

class Email < Message
    def initialize subject
        @subject = subject
    end
end



# Call parent and pass parameters method: 
# super!

class Message 
    
    @@messages_sent = 0
    
    def initialize from, to 
        @from = from, @to = to;
        @@messages_sent += 1
    end
end


my_message = Message.new 'Jack', 'Tom'

class Email < Message
    def initialize from, to
        super!
    end
end