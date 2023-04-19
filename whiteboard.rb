# PROBLEM 1 - depth_first_values

# Write a method, depth_first_values, that takes in the root of a binary tree. The method should return an array containing all values of the tree in depth-first order.

# The node class below is used for your binary tree.

class Node 

    attr_accessor :val, :left, :right

    def initialize(val) 
        @val = val
        @left = nil
        @right = nil 
    end

    def depth_first_values
        final = [@val] 
        if @left 
            final += @left.depth_first_values
        end
        if @right
            final += @right.depth_first_values
        end
        final
    end
# final = a
# final += f(b)
#final [a, b, d, e]
# final += f(c)

# final [b]
# final += [d]
#final = [b, d, e]
#

#final = [d]
  
end

# TEST CASE 1:

# a = Node.new('a')
# b = Node.new('b')
# c = Node.new('c')
# d = Node.new('d')
# e = Node.new('e')
# f = Node.new('f')

# a.left = b
# a.right = c
# b.left = d
# b.right = e
# c.right = f

# //      a
# //    /   \
# //   b     c
# //  / \     \
# // d   e     f

# p a.depth_first_values
# -> ['a', 'b', 'd', 'e', 'c', 'f']


# TEST CASE 2:

# a = Node.new('a')

# # //      a

# p a.depth_first_values
# //    -> ['a']


# TEST CASE 3:

# a = Node.new('a')
# b = Node.new('b')
# c = Node.new('c')
# d = Node.new('d')
# e = Node.new('e')

# a.right = b
# b.left = c
# c.right = d
# d.right = e

# p a.depth_first_values
# //    -> ['a', 'b', 'c', 'd', 'e']


# TEST CASE 4:

# p depth_first_values(nil)
# //    -> []