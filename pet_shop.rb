def pet_shop_name(pet_shop)
	pet_shop[:name]
end

def total_cash(cash)
	cash[:admin][:total_cash]
end
#
# add AND remove an amount to/from an existing amount in a hash within a hash_COVERS BOTH TESTS
def add_or_remove_cash(pet_shop, amount)
	return pet_shop[:admin][:total_cash] += amount
	return pet_shop[:admin][:total_cash] -= amount
end

def pets_sold(pet_shop)
	pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pets_sold)
	pet_shop[:admin][:pets_sold] += 2
end

def stock_count(pet_shop)
	pet_shop[:pets].count()
end

# loop through pet_shop and check for breed, then return the total_COVERS BOTH TESTS
def pets_by_breed(pet_shop, breed)
	breed_total = []
	for pet in pet_shop[:pets]
		if pet[:breed].include?(breed)
			breed_total.push(pet)
		end
	end
		return breed_total
end

# return a pet and return nil_COVERS BOTH TESTS
def find_pet_by_name(pet_shop, name)
	for pet in pet_shop[:pets]
		if pet[:name] == name
			return pet
		end
	end
		return nil
end

def remove_pet_by_name(pet_shop, name)
	pet_removed = pet_shop[:pets]
	for pet in pet_shop[:pets]
		if pet[:name] == name
			pet_shop[:pets].delete(pet)
		end
	end
end

# add the new_pet hash to the pets array in pet_shop
def add_pet_to_stock(pet_shop, new_pet)
	pet_shop[:pets] << [:new_pet]
end

def customer_pet_count(customers)
	customers[:pets].count()
end

# add the new_pet hash to the first customer in customers array
def add_pet_to_customer(customer, new_pet)
	customer[:pets] << [:new_pet]
end
