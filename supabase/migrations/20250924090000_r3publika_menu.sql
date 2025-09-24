/*
  # R3publika Menu: Categories and Items

  Inserts new categories and menu items for R3publika Chicken Inasal.
  Includes size variations for Simpleng Sisig.
*/

-- Categories
INSERT INTO categories (id, name, icon, sort_order, active) VALUES
  ('inasal-meals', 'Inasal Meals', '🍗', 1, true),
  ('pancit', 'Pancit', '🍝', 2, true),
  ('appetizers', 'Appetizers', '🥗', 3, true),
  ('soups', 'Soups', '🍲', 4, true),
  ('extras', 'Extras', '➕', 5, true),
  ('drinks', 'Drinks', '🥤', 6, true),
  ('dessert', 'Dessert', '🍨', 7, true)
ON CONFLICT (id) DO NOTHING;

-- Inasal Meals (RI 1 - RI 7)
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('RI 1 – Inasal na Paa', 'Signature Grilled Chicken Leg Quarter, Garlic Inasal Rice and Caldo of the Day', 175.00, 'inasal-meals', true, true, 'https://images.pexels.com/photos/410648/pexels-photo-410648.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('RI 2 – Inasal na Pecho', 'Signature Grilled Chicken Breast Wing Quarter, Garlic Inasal Rice and Caldo of the Day', 185.00, 'inasal-meals', true, true, 'https://images.pexels.com/photos/410648/pexels-photo-410648.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('RI 3 – Inasal na Liempo Sr.', 'Signature Grilled Pork Belly, Garlic Inasal Rice and Caldo of the Day', 225.00, 'inasal-meals', false, true, 'https://images.pexels.com/photos/410648/pexels-photo-410648.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('RI 4 – Inasal na Liempo Jr.', 'Signature Grilled Pork Belly Half, Garlic Inasal Rice and Caldo of the Day', 165.00, 'inasal-meals', false, true, 'https://images.pexels.com/photos/410648/pexels-photo-410648.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('RI 5 – Pork BBQ', 'Own version of Grilled Pork BBQ, Garlic Inasal Rice and Caldo of the Day (2 pcs)', 165.00, 'inasal-meals', false, true, 'https://images.pexels.com/photos/825661/pexels-photo-825661.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('RI 6 – Simpleng Sisig', 'Pampanga’s Grilled Pork Sisig, Garlic Rice and Caldo of the Day', 175.00, 'inasal-meals', true, true, 'https://images.pexels.com/photos/860974/pexels-photo-860974.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('RI 7 – Pares Amoranto', 'Version of Classic Beef Pares in Amoranto served with Rich Pares Broth and Garlic Inasal Rice and Caldo of the Day', 215.00, 'inasal-meals', true, true, 'https://images.pexels.com/photos/2338407/pexels-photo-2338407.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Variations for RI 6 – Simpleng Sisig (Half/Full)
INSERT INTO variations (menu_item_id, name, price) VALUES
  ((SELECT id FROM menu_items WHERE name = 'RI 6 – Simpleng Sisig'), 'Half Size', 175.00),
  ((SELECT id FROM menu_items WHERE name = 'RI 6 – Simpleng Sisig'), 'Full Size', 245.00)
ON CONFLICT DO NOTHING;

-- Pancit (RM 1 - RM 2)
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('RM 1 – Pancit Bam-i', 'Sauteed Assorted Meat and Julienne Vegetables tossed in both Egg and Vermicelli Noodles, served with Pandesal', 175.00, 'pancit', true, true, 'https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('RM 2 – Saucy Canton', 'Sauteed Meat and Vegetables topped with Fresh Quail Egg', 165.00, 'pancit', false, true, 'https://images.pexels.com/photos/628752/pexels-photo-628752.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Appetizers (RA 1 - RA 2)
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('RA 1 – Binakhaw', 'Signature Appetizer of Fresh Fish of the Day, seasoned with Ginger, Onion, Chili, and immersed in Coconut Vinegar', 175.00, 'appetizers', false, true, 'https://images.pexels.com/photos/1128678/pexels-photo-1128678.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('RA 2 – Kilawin na Pusit', 'Slices of Fresh Squid with Cucumber, Tomato and Shallots in Spiced Coconut Vinegar', 165.00, 'appetizers', false, true, 'https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Soups (RS 1 - RS 4)
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('RS 1 – Kansi nga Baboy', 'Signature Dish, Light and Rich Pork Shank Soup with Jackfruit, Pechay and Everyday Lemons', 195.00, 'soups', true, true, 'https://images.pexels.com/photos/1640770/pexels-photo-1640770.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('RS 2 – Molo Soup Overload', 'Pancit Molo Pork Dumpling with Tofu and Grilled Pork Belly', 195.00, 'soups', false, true, 'https://images.pexels.com/photos/248444/pexels-photo-248444.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('RS 3 – Batchoy Ramen', 'Signature Soup Noodle Dish, LaPaz Batchoy with a Japanese Twist', 195.00, 'soups', false, true, 'https://images.pexels.com/photos/2862153/pexels-photo-2862153.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('RS 4 – Special Pares Mami', 'Favorite Beef Pares Mami', 225.00, 'soups', false, true, 'https://images.pexels.com/photos/2338407/pexels-photo-2338407.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Extras
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Extra Steamed Rice', 'Steamed white rice', 25.00, 'extras', false, true, 'https://images.pexels.com/photos/699953/pexels-photo-699953.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Inasal Garlic Rice', 'Garlic Anatto Rice', 45.00, 'extras', false, true, 'https://images.pexels.com/photos/699953/pexels-photo-699953.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Atchara', 'Home Made Atchara', 25.00, 'extras', false, true, 'https://images.pexels.com/photos/302680/pexels-photo-302680.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Plain Caldo', 'Plain Caldo', 55.00, 'extras', false, true, 'https://images.pexels.com/photos/2862153/pexels-photo-2862153.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Extra Inasal Caldo of the Day', 'Extra serving of Inasal Caldo of the Day', 65.00, 'extras', false, true, 'https://images.pexels.com/photos/2862153/pexels-photo-2862153.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Extra Egg', 'Add an extra egg to your meal', 18.00, 'extras', false, true, 'https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Extra Pancit Batchoy Broth (500ml)', 'Rich Batchoy broth, 500ml', 65.00, 'extras', false, true, 'https://images.pexels.com/photos/2862153/pexels-photo-2862153.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Drinks
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Soda – Pepsi', 'Bottled soda', 55.00, 'drinks', false, true, 'https://images.pexels.com/photos/434295/pexels-photo-434295.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Soda – 7-Up', 'Bottled soda', 55.00, 'drinks', false, true, 'https://images.pexels.com/photos/434295/pexels-photo-434295.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Soda – Mirinda', 'Bottled soda', 55.00, 'drinks', false, true, 'https://images.pexels.com/photos/434295/pexels-photo-434295.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Soda – Royal', 'Bottled soda', 55.00, 'drinks', false, true, 'https://images.pexels.com/photos/434295/pexels-photo-434295.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Soda – Sprite', 'Bottled soda', 55.00, 'drinks', false, true, 'https://images.pexels.com/photos/434295/pexels-photo-434295.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Soda – Coke', 'Bottled soda', 55.00, 'drinks', false, true, 'https://images.pexels.com/photos/434295/pexels-photo-434295.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Soda – Sparkle', 'Bottled soda', 55.00, 'drinks', false, true, 'https://images.pexels.com/photos/434295/pexels-photo-434295.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Soda – Coke Zero', 'Bottled soda', 55.00, 'drinks', false, true, 'https://images.pexels.com/photos/434295/pexels-photo-434295.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Bottled Water', 'Bottled drinking water', 40.00, 'drinks', false, true, 'https://images.pexels.com/photos/416528/pexels-photo-416528.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Bottled Sparkle', 'Bottled Sparkle', 55.00, 'drinks', false, true, 'https://images.pexels.com/photos/434295/pexels-photo-434295.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Bottled Sprite', 'Bottled Sprite', 55.00, 'drinks', false, true, 'https://images.pexels.com/photos/434295/pexels-photo-434295.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Bottled Royal', 'Bottled Royal', 55.00, 'drinks', false, true, 'https://images.pexels.com/photos/434295/pexels-photo-434295.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Bottled Pepsi', 'Bottled Pepsi', 55.00, 'drinks', false, true, 'https://images.pexels.com/photos/434295/pexels-photo-434295.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Bottled Coke', 'Bottled Coke', 55.00, 'drinks', false, true, 'https://images.pexels.com/photos/434295/pexels-photo-434295.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Bottled Coke Zero', 'Bottled Coke Zero', 55.00, 'drinks', false, true, 'https://images.pexels.com/photos/434295/pexels-photo-434295.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Dessert
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Ice Cream of the Day', 'Rotating selection of ice cream flavors', 50.00, 'dessert', false, true, 'https://images.pexels.com/photos/461430/pexels-photo-461430.jpeg?auto=compress&cs=tinysrgb&w=800')
ON CONFLICT DO NOTHING;


