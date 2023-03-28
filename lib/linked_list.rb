require './lib/node'
require 'pry'

class = LinkedList 
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

  