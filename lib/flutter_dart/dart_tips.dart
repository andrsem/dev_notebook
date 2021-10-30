// spread operator in collections adds elements of collection in new collection, it is like collection extracts its values and then add them to new collection
void main() {
  const bananas = 5;
  const apples = 6;
  const grains = {
    'pasta': '500g',
    'rice': '1kg',
  };
  const addGrains = true;
  final shoppingList = <String, dynamic>{
    if (bananas > 0) 'bananas': bananas,
    if (apples > 0) 'apples': apples,
    if (addGrains) ...grains
  };

  print(shoppingList);
  // prints {bananas: 5, apples: 6, pasta: 500g, rice: 1kg}
}

final colors = [
  'grey',
  'blue',
  ...['red', 'brown'],
];

// here use if collection to add some fields using spread operator if certain condition is met
const ratings = [4.0, 4.5, 3.5];
final restaurant = <String, dynamic>{
  'name': 'Pizza Buena',
  'cuisine': 'Spanish',
  if (ratings.length > 3) ...<String, dynamic>{
    'rating': ratings,
    'isPopular': true,
  },
};

// ----------Copying collections------------
// when we assign a collection to a new collection we make a new reference to the same collection
// Create a reference
final list = [1, 2, 3];
final newReference = list;

// Create a copy of list
final copy = [...list];
