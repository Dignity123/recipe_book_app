import '../models/recipe.dart';

final List<Recipe> sampleRecipes = [

  // 1️⃣ Spaghetti Bolognese
  Recipe(
    name: 'Spaghetti Bolognese',
    imagePath: 'assets/images/spaghetti.jpeg',
    ingredients: [
      'Spaghetti',
      'Ground beef',
      'Tomato sauce',
      'Onion',
      'Garlic',
    ],
    instructions:
        'Cook pasta. Brown beef with onion & garlic. Add sauce. Combine & serve.',
  ),

  // 2️⃣ Whole Brazino
  Recipe(
    name: 'Whole Brazino',
    imagePath: 'assets/images/whole_brazino.jpg',
    ingredients: [
      'Extra virgin olive oil',
      '1 lb whole branzino (cleaned)',
      'Kosher salt',
      'Black pepper',
      '1/2 lemon (sliced)',
      '1/2 red onion (sliced)',
      '1 cup cherry tomatoes (halved)',
      '1/2 cup fresh dill',
      'Ladolemono sauce',
    ],
    instructions:
        'Preheat oven to 400°F. Pat fish dry and make slits on both sides. '
        'Season with salt and pepper. Stuff cavity with lemon and onion. '
        'Roast 5 minutes per side until cooked and flaky. Broil 3–4 minutes to char skin. '
        'Drizzle with ladolemono sauce, top with tomatoes and fresh dill. Serve immediately.',
  ),

  // 3️⃣ Nigerian Jollof Rice
  Recipe(
    name: 'Nigerian Jollof Rice',
    imagePath: 'assets/images/jollof_rice.jpg',
    ingredients: [
      '1/3 cup oil',
      '6 Roma tomatoes',
      'Red bell peppers',
      '3 red onions',
      'Scotch bonnet pepper',
      'Tomato paste',
      'Curry powder',
      'Thyme',
      'Bay leaves',
      'Stock',
      'Butter (optional)',
      '4 cups long grain rice',
      'Salt and pepper',
    ],
    instructions:
        'Blend tomatoes, peppers, onions and stock. Simmer 10–12 minutes. '
        'Fry sliced onions with spices. Add tomato paste and reduced blend. '
        'Add stock and bring to boil. Add rice, cover tightly and steam on low 30 minutes. '
        'Adjust seasoning. For smoky party rice, increase heat 3–5 minutes to toast slightly.',
  ),

  // 4️⃣ Mac and Cheese
  Recipe(
    name: 'Mac and Cheese',
    imagePath: 'assets/images/mac_and_cheese.jpg',
    ingredients: [
      '16 oz cavatappi pasta',
      'Cheddar cheese soup',
      '3 1/4 cups shredded white cheddar',
      '1 1/2 cups milk',
      'Cayenne pepper',
      '1/4 cup panko',
      '2 tbsp melted butter',
    ],
    instructions:
        'Cook pasta. Mix soup, cheese, milk and cayenne. '
        'Place in baking dish. Mix panko, butter and remaining cheese. '
        'Sprinkle on top. Bake at 375°F for 20 minutes until golden.',
  ),

  // 5️⃣ Beef and Broccoli Stir Fry
  Recipe(
    name: 'Beef and Broccoli Stir Fry',
    imagePath: 'assets/images/beef_and_broccoli.jpg',
    ingredients: [
      '1 lb sirloin beef',
      '4 cups broccoli florets',
      'Cornstarch',
      'MAGGI beef bouillon',
      'Seasoning sauce',
      'Red wine vinegar',
      'Sugar',
      'Ginger',
      'Garlic',
      'Vegetable oil',
      'Cooked rice',
    ],
    instructions:
        'Mix sauce ingredients. Heat oil and cook ginger and garlic. '
        'Add beef and cook until no longer pink. Add broccoli. '
        'Stir in sauce and cook until thickened. Serve over rice.',
  ),
];