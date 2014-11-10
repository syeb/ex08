import 'package:ex08/fcn08.dart';
import 'package:ex08/association.dart';
// L'exercice 08 a été inspiré de l'exemple association retrouvé sur https://github.com/dzenanr/association

ex08_1 () {

  var members =
    [{'name': 'IS', 'description': 'Informations Systems', 'firstName': 'Dzenan', 'lastName': 'Ridjanovic', 'email': 'dr@gmail.com'},
     {'name': 'IS', 'description': 'Informations Systems', 'firstName': 'Robert', 'lastName': 'Nelson', 'email': 'rn@gmail.com'},
     {'name': 'CS', 'description': 'Computer Science', 'firstName': 'David', 'lastName': 'Curtis', 'email': 'dc@gmail.com'} ];

  List association = [
                    {"name": "IS", "Description": "Information System", "members":
                      [{"firstName": "Dzenan", "lastName": "Ridjanovic", "email": "dr@gmail.com"},
                       {"firstName": "Robert", "lastName": "Nelson", "email": "rn@gmail.com"}]},
                       {"name": "CS", "Description": "Computer Science",  "members":
                         [{"firstName": "David", "lastName": "Curtis", "email": "dc@gmail.com"}]} ];

  var letter = 'R';

  print("Question 1: \nCreate a list of associations of members, where a member is represented as a map with the following keys:\nfirstName, lastName and email.\n");
   print("Voici la liste selon les nom de familles:");
   print(orderlastName(members));
   print("Voici la liste selon les prénoms:");
   print(orderfirstName(members));
   print("Voici les noms qui débutent par R:");
   print(startwithLetter(members, letter));


}


void main() {
ex08_1();

var model = new MembershipModel();
model.init();
model.display();

}


