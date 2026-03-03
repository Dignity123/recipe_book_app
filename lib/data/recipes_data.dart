import '../models/recipe.dart';

final List<Recipe> sampleRecipes = [

  // 1️⃣ Spaghetti
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
    instructions: [
      'Cook pasta according to package directions.',
      'Brown ground beef with onion and garlic.',
      'Add tomato sauce and simmer.',
      'Combine pasta with sauce and serve.',
    ],
  ),

  // 2️⃣ Whole Brazino
  Recipe(
    name: 'Whole Brazino',
    imagePath: 'assets/images/whole_brazino.jpg',
    ingredients: [
      'Extra virgin olive oil',
      'Whole brazino fish',
      'Kosher salt',
      'Black pepper',
      'Lemon slices',
      'Red onion',
      'Cherry tomatoes',
      'Fresh dill',
      'Ladolemono sauce',
    ],
    instructions: [
      'Preheat oven to 400°F.',
      'Pat fish dry and cut slits on both sides.',
      'Season inside and outside with salt and pepper.',
      'Stuff cavity with onion and lemon.',
      'Roast 5 minutes per side until flaky.',
      'Broil 3–4 minutes to char skin.',
      'Top with sauce, tomatoes and dill. Serve immediately.',
    ],
  ),

  // 3️⃣ Nigerian Jollof Rice
  Recipe(
    name: 'Nigerian Jollof Rice',
    imagePath: 'assets/images/jollof_rice.jpg',
    ingredients: [
      'Oil',
      'Roma tomatoes',
      'Red bell peppers',
      'Red onions',
      'Scotch bonnet',
      'Tomato paste',
      'Curry powder',
      'Thyme',
      'Bay leaves',
      'Stock',
      'Butter',
      'Long grain rice',
    ],
    instructions: [
      'Blend tomatoes, peppers, onions and stock.',
      'Simmer mixture for 10–12 minutes.',
      'Fry sliced onions with spices.',
      'Add tomato paste and blended mixture.',
      'Add stock and bring to boil.',
      'Add rice, cover tightly and steam 30 minutes.',
      'Adjust seasoning and steam until fully cooked.',
    ],
  ),

  // 4️⃣ Mac and Cheese
  Recipe(
    name: 'Mac and Cheese',
    imagePath: 'assets/images/mac_and_cheese.jpg',
    ingredients: [
      'Cavatappi pasta',
      'Cheddar cheese soup',
      'White cheddar cheese',
      'Milk',
      'Cayenne pepper',
      'Panko',
      'Butter',
    ],
    instructions: [
      'Cook pasta according to package directions.',
      'Mix soup, cheese, milk and cayenne.',
      'Transfer to baking dish.',
      'Mix panko, butter and remaining cheese.',
      'Sprinkle topping over pasta.',
      'Bake at 375°F for 20 minutes.',
    ],
  ),

  // 5️⃣ Beef and Broccoli
  Recipe(
    name: 'Beef and Broccoli Stir Fry',
    imagePath: 'assets/images/beef_and_broccoli.jpg',
    ingredients: [
      'Sirloin beef',
      'Broccoli florets',
      'Cornstarch',
      'Bouillon',
      'Seasoning sauce',
      'Red wine vinegar',
      'Sugar',
      'Ginger',
      'Garlic',
      'Oil',
      'Rice',
    ],
    instructions: [
      'Combine sauce ingredients in a bowl.',
      'Heat oil and cook ginger and garlic.',
      'Add beef and cook until browned.',
      'Add broccoli and cook briefly.',
      'Stir in sauce and cook until thickened.',
      'Serve over rice.',
    ],
  ),

  // 6️⃣ Kung Poa Chicken
  Recipe(
    name: 'Kung Poa Chicken',
    imagePath: 'assets/images/kung_poa_chicken.webp',
    ingredients: [
      'Boneless skinless chicken breast',
      'Dried chili peppers',
      'Soy sauce',
      'Rice or sherry vinegar',
      'Cornstarch',
      'Sugar',
      'Toasted sesame oil',
      'Canola oil',
      'Red and green bell peppers',
      'Cashews',
      'Fresh garlic',
      'Fresh ginger',
    ],
    instructions: [
      'Mix soy sauce, vinegar and sugar to make the sauce.',
      'Slice chicken into uniform strips.',
      'Heat oil in skillet or wok.',
      'Cook chicken until crispy and fully cooked.',
      'Stir-fry bell peppers briefly.',
      'Add garlic, ginger, cashews and dried chilies.',
      'Return chicken to pan.',
      'Pour in sauce and stir until thickened.',
      'Serve immediately.',
    ],
  ),
];