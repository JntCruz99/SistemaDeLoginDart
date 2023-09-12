import 'dart:io';
import 'Login.dart';
import 'LoginRepository.dart';

void main() {
  LoginRepository loginRepository = new LoginRepository();
  var sair = '0';

  do {
    print(loginRepository.findAll());

    print('1 - criar usuario: ');
    print('2 - logar no sistema: ');
    print('3 - quantidade de usuario no sistema: ');
    print('sair - sair: ');
    String opcao = stdin.readLineSync()!;
    switch (opcao) {
      case '1':
        print("------Criando novo Usuario-------");
        print('digite seu username: ');
        String username = stdin.readLineSync()!;
        print('digite sua senha: ');
        String senha = stdin.readLineSync()!;
        Login usuario = new Login();
        usuario.username = username;
        usuario.senha = senha;
        loginRepository.save(usuario);
        print("usuario criado com sucesso");
        break;
      case '2':
        print("2");
        break;
      case '3':
        sair = '2';
        break;
    }
  } while (sair == '0');
}
