/*
  # Prune Old Categories and Orphaned Items

  Keeps only the categories introduced for R3publika:
  inasal-meals, pancit, appetizers, soups, extras, drinks, dessert
*/

DO $$
DECLARE
  allowed_categories text[] := ARRAY[
    'inasal-meals', 'pancit', 'appetizers', 'soups', 'extras', 'drinks', 'dessert'
  ];
BEGIN
  -- Delete menu items whose category is not in the allowed list
  DELETE FROM menu_items
  WHERE category NOT IN (SELECT unnest(allowed_categories));

  -- Delete categories not in the allowed list
  DELETE FROM categories
  WHERE id NOT IN (SELECT unnest(allowed_categories));
END $$;


