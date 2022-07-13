# Netflix - App Settings - UI Adaptative

Esse projeto tem como objetivo apresentar técnicas para personalização do app de acordo com a plataforma (Android e iOS).

## Navegação Personalizada

Para realizar a navegação padrão de cada guideline (Material e Cupertino), podemos utilizar o MaterialPageRoute e o CupertinoPageRoute.

```dart
onTap: defaultTargetPlatform == TargetPlatform.android
                    ? () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (final _) => const VideoQualityPage()),
                        )
                    : () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (final _) => const VideoQualityPage()),
                        ),
```

### Exemplo

[Navegação Android (Material)](https://user-images.githubusercontent.com/19857523/178768112-ae0aef5e-7138-4f7a-938b-06c424bb9fb3.mp4)

[Navegação iOS (Cupertino)](https://user-images.githubusercontent.com/19857523/178768189-a251f1c1-8ef9-4289-92e3-aba464eccd76.webm)

## Widgets Adaptive

Alguns widgets possuem o contrutor adaptive, que automaticamente ajustam a sua apresentação conforme a plataforma.

```dart
Icon(Icons.adaptive.arrow_back)
```

```dart
Switch.adaptive(activeColor: Colors.blue,
                value: true,
                onChanged: (bool value) {}),
```

### Exemplo

![adaptive_android](assets/adaptive_android.png) 

![adaptive_ios](assets/adaptive_ios.png)

## Ícones Personalizados

Ao criar um projeto Flutter, a dependência cupertino_icons é adicionada automaticamente. Com ela podemos apresentar o icone correspondente a plataforma.

```dart
defaultTargetPlatform == TargetPlatform.android
                ? const Icon(
                    Icons.check,
                    color: Colors.blue,
                  )
                : const Icon(
                    CupertinoIcons.check_mark,
                    color: Colors.blue,
                  ),
```

### Exemplo

![icons_android](assets/icons_android.png)

![icons_ios](assets/icons_ios.png)
