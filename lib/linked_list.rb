class  LinkedList 
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    correct_sound = check_sound(data)
    if correct_sound == true
      if @head.nil?                     
        @head = Node.new(data)        
        else                              
        current_node = @head              
        until current_node.next_node.nil?   
            current_node = current_node.next_node   
        end
          current_node.next_node = Node.new(data)   
        end
      data    
    else "Incorrect sound!"
    end
  end


  def count
    count = 0     
      current_node = @head
      until current_node.nil?   
        count += 1        
        current_node = current_node.next_node   
      end
    count   
  end
  

  def to_string
    string = ""   
    current_node = @head    
      until current_node.nil?   
        string << "#{current_node.data} "   
        current_node = current_node.next_node 
      end
      string.strip    
  end

  def prepend(data)
    correct_sound = check_sound(data)
    if correct_sound == true
      current_head = @head    
      @head = Node.new(data)    
      @head.next_node = current_head  
      data  
    else "Incorrect sound!"
   end
  end

  def insert(position, data)
    correct_sound = check_sound(data)
    if correct_sound == true
      current_node = @head     
      (position - 1).times do   
        current_node = current_node.next_node   
      end
      new_node = Node.new(data)   
      new_node.next_node = current_node.next_node 
      current_node.next_node = new_node   
      data
    else "Incorrect sound!"
    end
  end

  def find(position, number)
    array = self.to_string.split(" ") 
    array[position..position + number - 1].join(" ")
  end

  def includes?(data)
    self.to_string.include?(data)  
  end

  def pop
    current_node = @head
    while current_node.next_node.next_node        
      current_node = current_node.next_node     
    end
    result = current_node.next_node.data      
    current_node.next_node = nil              
    result                                    
  end
end
