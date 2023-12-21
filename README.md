# advogadox

A new Flutter application.

# RUNNER

flutter packages pub run build_runner build --delete-conflicting-outputs

#DEPLOY
flutter build apk --release
flutter build appbundle --target-platform android-arm,android-arm64
flutter build ios --release --no-codesign

#USER TEST
User: frosa@viceri.com.br
Pass: Teste@1234

User: lumena@advogadox.com.br
Pass: Lumena01

PJ:
User: pzampa@viceri.com.br
Pass: Teste@2345

#Geração de versão, alterar o arquivo pubpec.yaml e version.dart para a mesma versão

#Se alguma model que implementa JSON for alterada, rodar novamente o builder:
flutter pub run build_runner build --delete-conflicting-outputs

# Versão do flutter utilizada: v1.22.6

Opção 1) Instalar via https://flutter.dev/docs/development/tools/sdk/releases

Opção 2) Alterar branch na instalação do GIT do flutter:
```bash
#Pasta onde flutter está instalado
cd "$(dirname $(which flutter))"

git checkout .

git pull origin

git checkout 1.22.6

flutter doctor
```
