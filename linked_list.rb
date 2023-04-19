# Problem 3:

# Write a function, linked_list_values, that takes in the head of a linked list as an argument. The function should return an array containing all values of the nodes in the linked list.

# NOTE: In the problems below, a linked list is a series of Node class instances in which the @next value is the following Node. So if we started with "a" as our root node, a.next would be the "b" node, and b.next would be the "c" node.

class Node
   attr_accessor :val, :next_in_line

    def initialize(val, next_in_line = nil)
        @val = val
        @next_in_line = next_in_line
    end

    def linked_list_values
        q = [self]
        final = [@val]
        until q.empty?
            first = q.shift
            if first.next_in_line
                final << first.next_in_line.val 
                q << first.next_in_line
            end
        end

        final


    end
 end

# test_00:
a = Node.new("a")
b = Node.new("b")
c = Node.new("c")
d = Node.new("d")

a.next_in_line = b
b.next_in_line = c
c.next_in_line = d



p a.linked_list_values
# [ 'a', 'b', 'c', 'd' ]



