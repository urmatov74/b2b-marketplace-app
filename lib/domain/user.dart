class Userr {
  String id;
  String email;
  String password;
  String name;
  Userr({String id, String email, String password, String name}) {
    this.id = id;
    this.email = email;
    this.password = password;
    this.name = name;
  }
}

List<Userr> users = [
  Userr(
    id: '1',
    email: 'test@gmail.com',
    password: 'testpassword',
    name: 'TestName',
  )
];
