import 'package:ex08/fcn08.dart';


void main() {
  var members =
    [{'name': 'IS', 'description': 'Informations Systems', 'firstName': 'Dzenan', 'lastName': 'Ridjanovic', 'email': 'dr@gmail.com'},
     {'name': 'IS', 'description': 'Informations Systems', 'firstName': 'Robert', 'lastName': 'Nelson', 'email': 'rn@gmail.com'},
     {'name': 'CS', 'description': 'Computer Science', 'firstName': 'David', 'lastName': 'Curtis', 'email': 'dc@gmail.com'} ];
  var letter = 'R';

  print("Question 1: \nCreate a list of associations of members, where a member is represented as a map with the following keys:\nfirstName, lastName and email.\n");
  print("Voici la liste selon les nom de familles:");
  print(orderlastName(members));
  print("Voici la liste selon les prénoms:");
  print(orderfirstName(members));
  print("Voici les noms qui débutent par R:");
  print(startwithLetter(members, letter));




  print("Question 2 : \n 1)Create a class model with associations and members \n 2) Provide the maintenance by providing additions, removals and updates of entities.\n");
  print("Add a member:");
  print (addMembers(members, 'CS', 'Computer Science','Jean', 'Jacques', 'jj@gmail.com'));
  print("Remove a member");
  print(removeMembers(members, 'David'));
  print(removeMembers(members, 'Robert'));

}


