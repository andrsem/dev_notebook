// spread operator in collections adds elements of collection in new collection, it is like collection extracts its values and then add them to new collection
void main() {
  print(colors);
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
