//TYPE NAME(PARAMS){}

void main() {
  MinhaClasse minhaClasse = MinhaClasse();
  printHelloWorld(message: "DEU CERTO");
  print(minhaClasse.message);
}

void printHelloWorld({required String message}) {
  print(message.replaceAll("DEU", "NÃO DEU"));
}

//Class NomeDaClasse{}

class MinhaClasse {
  String message = "Hello World";
}
