import 'Login.dart';
class LoginRepository{
  List<Login> usuarios = [];

  void save(Login login) {
    bool usuarioJaExiste = false;
    
    for (var u in usuarios) {
      if (u.username == login.username) {
        usuarioJaExiste = true;
        print("Erro: Nome de usuário já existe.");
        break;
      }
    }
    
    if (!usuarioJaExiste) {
      login.id = usuarios.length+1;
      usuarios.add(login);
    }
  }

   List<Login> findAll() {
    return usuarios;
  }

  Login finByLogin(Login login){
    var loginEncontrado;
    for (var u in usuarios) {
      if(u.username == login.username && u.senha == login.senha){
        loginEncontrado = u;
      }
    }
    return loginEncontrado;
  }
}