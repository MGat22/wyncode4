class Bank
	def transfer
		withdraw
		deposit
	end
	private
	def withdraw; end
	def depost; end
end

class Parent
	protected
	def a_protected_method; end
end

class Child < Parent
	def a_public_method
		a_protected_method
	end
end