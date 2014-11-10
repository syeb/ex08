part of association;

// La fonction model a été modifié selon l'exemple association retrouvé sur https://github.com/dzenanr/association

class MembershipModel {
  var associations = new Associations();
  var members = new Members();

  init() {

    // Ici on ajoute les membres dans les listes respectives, soit: members, associations et memberships.
    //

    // Ajout d'une association
    var association1 = new Association();
    association1.name = 'IS';
    association1.description = 'Information System';
    associations.add(association1);

    var association2 = new Association();
    association2.name = 'CS';
    association2.description = 'Computer Science';
    associations.add(association2);


    //Ajout des membres
    var member1 = new Member();
    member1.firstName = 'Dzenan';
    member1.lastName = 'Ridjanovic';
    member1.email = 'dr@gmail.com';
    members.add(member1);

    var member2 = new Member();
    member2.firstName = 'Robert';
    member2.lastName = 'Nelson';
    member2.email = 'rn@gmail.com';
    members.add(member2);

    var member3 = new Member();
    member3.firstName = 'David';
    member3.lastName = 'Curtis';
    member3.email = 'dc@gmail.com';
    members.add(member3);


    //Association des membres avec leurs descriptions
    var membership1 = new Membership();
    membership1.association = association1;
    membership1.member = member1;
    membership1.description = 'develop projects';
    association1.memberships.add(membership1);
    member1.memberships.add(membership1);

    var membership2 = new Membership();
    membership2.association = association1;
    membership2.member = member2;
    membership2.description = 'write about projects';
    association1.memberships.add(membership2);
    member2.memberships.add(membership2);

    var membership3 = new Membership();
    membership3.association = association2;
    membership3.member = member3;
    membership3.description = 'Computer Science';
    association2.memberships.add(membership3);
    member3.memberships.add(membership3);
  }

  display() {
    print('===========');
    print('Association and members');
    print('===========');
    for (var association in associations) {
      print('  Association');
      print('  -------');
      print(association.toString());
      print('    Members');
      print('    -----');
      for (var membership in association.memberships) {
        print(membership.toString());
      }
    }
    print('===========');
    for (var members in members) {
      print('  Member');
      print('  --------');
      print(members.toString());
      print('    Associations');
      print('    -----');
      for (var membership in members.memberships) {
        print(membership.toString());
      }
    }
    print(
      '=========== =========== =========== '
      '=========== =========== =========== '
    );
  }
  }






