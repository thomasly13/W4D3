# PROBLEM 2 - breadth_first_values

# Write a method, breadth_first_values, that takes in the root of a binary tree. The method should return an array containing all values of the tree in breadth-first order.

# The node class below is used for your binary tree.

class Node 

	attr_accessor :val, :left, :right

    def initialize(val) 
        @val = val
        @left = nil
        @right = nil
    end

    # start q with the root node val
    # shift it out
    # 
    
    def breadth_first_values
        q = [self] # queue needs node instances
        final = [@val] # final result only needs values
        until q.empty?
            first = q.shift
            if first.left
                q << first.left
                final << first.left.val
            end
            if first.right
                q << first.right
                final << first.right.val
            end
        end
        return final
    end

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

# p a.breadth_first_values
# //    -> ['a', 'b', 'c', 'd', 'e', 'f']


# TEST CASE 2:

# a = Node.new('a')
# b = Node.new('b')
# c = Node.new('c')
# d = Node.new('d')
# e = Node.new('e')
# f = Node.new('f')
# g = Node.new('g')
# h = Node.new('h')

# a.left = b
# a.right = c
# b.left = d
# b.right = e
# c.right = f
# e.left = g
# f.right = h

# //      a
# //    /   \
# //   b     c
# //  / \     \
# // d   e     f
# //    /       \
# //   g         h

# p a.breadth_first_values
# //   -> ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']


# TEST CASE 3:

# a = Node.new('a')

# //      a

# p breadth_first_values(a); 
# //    -> ['a']


# TEST CASE 4:



# //      a
# //       \
# //        b
# //       /
# //      c
# //    /  \
# //   x    d
# //         \
# //          e


# //    -> ['a', 'b', 'c', 'x', 'd', 'e']


# TEST CASE 5:

# p breadth_first_values(nil)
# //    -> []