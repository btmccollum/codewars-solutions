require_relative '../Ruby/square-matrix-multiplier'

context "square matrix multiplier" do 
  describe "takes in two multi-dimensonal arrays and returns the product of the two" do
    it "returns [ [5,4], [11,8] ]" do
      matrix_a = [[1,2],[3,2]]
      matrix_b = [[3,2],[1,1]]
      expect(matrix_mult(matrix_a, matrix_b)).to eq([[5,4], [11,8]])
    end
  end
    
    #   Test.assert_equals(matrix_mult(
    #     [ [1, 2],
    #       [3, 2] ],
    #   #      x
    #     [ [3, 2],
    #       [1, 1] ]),
    #   #      =
    #     [ [5, 4],
    #       [11, 8] ])
      
    #   Test.assert_equals(matrix_mult(
    #     [ [9, 7],
    #       [0, 1] ],
    #   #      x
    #     [ [1, 1],
    #       [4, 12] ]),
    #   #      =
    #     [ [37, 93],
    #       [4, 12] ])
      
    #   Test.assert_equals(matrix_mult(
    #     [ [1, 2, 3],
    #       [3, 2, 1],
    #       [2, 1, 3] ],
    #   #       x
    #     [ [4, 5, 6],
    #       [6, 5, 4],
    #       [4, 6, 5] ]),
    #   #        =
    #     [ [28, 33, 29],
    #       [28, 31, 31],
    #       [26, 33, 31] ])
end