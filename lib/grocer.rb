# find_item_by_name_in_collection should be able to take the string name of a particular item and a collection of items like we have above. It should then iterate over the collection and check the value of :item in each nested hash. If a match is found, the method should return that entire hash.

def find_item_by_name_in_collection(name, collection)
  # binding.pry
  collection.each do |item_hash|
    # binding.pry 
    if item_hash[:item] == name
      return item_hash
    end
  end
  nil
end

def consolidate_cart(cart)
  # binding.pry
  updated_cart = []
  item_count = 0
  cart.each do |item_hash|
    # binding.pry
    new_item = find_item_by_name_in_collection(cart[item_count][:item], updated_cart)
    # binding.pry
    if new_item != nil
      new_item[:count] += 1
      # binding.pry
    else
      new_item = {
        :item => cart[item_count][:item],
        :price => cart[item_count][:price],
        :clearance => cart[item_count][:clearance],
        :count => 1
      }
      # binding.pry
    end
    item_count += 1
  end
  updated_cart
end

# def find_item_by_name_in_collection(name, collection)
#   counter = 0 
#   while counter < collection.length 
#     if collection[counter][:item] == name
#       return collection[counter] 
#     end
#     counter += 1 
#   end
#   nil
# end

# def consolidate_cart(cart)
#   new_cart = []
#   counter = 0
#   while counter < cart.length
#     new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
#     if new_cart_item != nil
#       new_cart_item[:count] += 1
#     else
#       new_cart_item = {
#         :item => cart[counter][:item],
#         :price => cart[counter][:price],
#         :clearance => cart[counter][:clearance],
#         :count => 1
#       }
#       new_cart << new_cart_item
#     end
#     counter += 1
#   end
# end

  