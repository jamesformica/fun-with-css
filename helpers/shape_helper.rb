module ShapeHelper

	def self.square_solution
		return	".square {\n"\
				"  background: crimson;\n"\
				"  width: 200px;\n"\
				"  height: 200px;\n"\
				"}"
	end

	def self.circle_solution
		return	".circle {\n"\
				"  background: crimson;\n"\
				"  width: 200px;\n"\
				"  height: 200px;\n"\
				"  border-radius: 50%;\n"\
				"}"
	end

	def self.semi_circle_solution
		return	".semi-circle {\n"\
				"  background: crimson;\n"\
				"  width: 200px;\n"\
				"  height: 100px;\n"\
				"  border-radius: 100px 100px 0 0;\n"\
				"}"
	end

	def self.triangle_solution
		return	".triangle {\n"\
				"  width: 0;\n"\
				"  height: 0;\n"\
				"  border: 100px solid transparent;\n"\
				"  border-bottom-color: crimson;\n"\
				"}"
	end

end