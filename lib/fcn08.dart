library fcn08;


//Exercice 01
//https://api.dartlang.org/apidocs/channels/stable/dartdoc-viewer/dart:core.Comparable

// Tri selon le nom de famille
orderlastName(var members) {
  members.sort((x, y) => x["lastName"].compareTo(y["lastName"]));
  for (var orderLast in members) {
    print(orderLast);
  }
  return ('');
}

//Tri selon le prénom
orderfirstName(var members) {
  members.sort((x, y) => x["firstName"].compareTo(y["firstName"]));
  for (var orderFirst in members) {
    print(orderFirst);
  }
  return ('');
}

//Provide a way to obtain only members of all associations whose last name starts with a given letter.
//

startwithLetter(var members, var firstLetter) {
  for(var r in members) {
    if(r['lastName'][0] == firstLetter)
           print(r);}
  return('');
  }



//Exercice 02
//Basé sur l'exemple association retrouvé sur github.com/dzenanr/association
//

addMembers(var members, var name, var description, var firstName, var lastName, var email) {
  members.add({
    'name' : name,
    'description' : description,
    'firstName': firstName,
    'lastName': lastName,
    'email': email
  });
  for (var ajout in members) {
    print(ajout);
  }
  return ("");
}

//Fonction delete inspiré de alJul/ex08
//

removeMembers(var membres, var firstName) {
  for (var r = 0; r < membres.length; r++) {
    Map deletemembre = membres[r];
    var name = deletemembre["firstName"];
    if (firstName == name) {
      membres.remove(deletemembre);
    }
  }
  for (var remove in membres) {
    print(remove);
  }
  return ("");
}
