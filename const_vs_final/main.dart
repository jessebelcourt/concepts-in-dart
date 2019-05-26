
void getAge() => 28;

class User {
  final String firstName;
  static const age = 28;  
  User(this.firstName);
}

main() {
  try {
    User me = User('Jesse');
    print(me.firstName);

  } catch(e) {
    print(e);
  }
}