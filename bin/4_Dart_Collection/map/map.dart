void main() {
  Map<String, String> myDetails = {
    'name': 'Ahmed Darwish',
    'address': 'Giza , Egypt',
    'fathername': 'Khaled',
  };
  // displaying the output
  print(myDetails);
  print(myDetails.values);
  print(myDetails.keys);
  print(myDetails['name']);
  print(myDetails['fathername']);

  Map<String, String> myDe = {
    'name': 'Ahmed Darwish',
    'name': 'Ahmed omar',
    'name': 'Ahmed khaled',

    'address': 'Giza , Egypt',
    'fathername': 'Khaled',
  };
  // displaying the output
  print(myDe);
  print(myDe.values);
  print(myDe.keys);
  print(myDe['name']); // this will return the last value of the key name
  // because the keys are unique in the map
  // so the last value will be stored in the map
  // and the previous values will be removed

  print(myDe['fathername']);
}
