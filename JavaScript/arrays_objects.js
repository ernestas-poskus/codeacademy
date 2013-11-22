newArray = [[2, 3, 4], [5, 6, 2], [45, 6, 4]];



jagged = [[[4], 3, 4], [[44], 6, 2, 4]];



var phonebookEntry = {};

phonebookEntry.name = 'Oxnard Montalvo';
phonebookEntry.number = '(555) 555-5555';
phonebookEntry.phone = function() {
  console.log('Calling ' + this.name + ' at ' + this.number + '...');
};

phonebookEntry.phone();