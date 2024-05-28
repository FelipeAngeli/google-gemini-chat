# Gemini ChatBot Flutter Application

Este é um projeto de aplicativo de chat construído com Flutter, utilizando o package `flutter_gemini` para integração com a API do Gemini, além de utilizar o Provider para gerenciamento de estado. O projeto inclui uma tela de splash e uma interface de chat onde as mensagens do usuário são alinhadas à esquerda e as respostas do Gemini são alinhadas à direita.

## Capturas de Tela

<p align="center">
  <img src="assets/images/inicio.png" width="200" alt="Tela de Splash">
  <img src="assets/images/home.png" width="200" alt="Tela de Chat">

## Funcionalidades

- Tela de splash ao iniciar o aplicativo.
- Interface de chat com mensagens do usuário alinhadas à esquerda e respostas do Gemini alinhadas à direita.
- Integração com a API do Gemini usando o package `flutter_gemini`.
- Gerenciamento de estado utilizando o Provider.

## Requisitos

- Flutter SDK
- Chave de API do Gemini

## Instalação

1. Clone o repositório:

```bash
git clone https://github.com/seu-usuario/gemini-chatbot-flutter.git
```

2. Navegue até o diretório do projeto:

```bash
cd gemini-chatbot-flutter
```

3. Instale as dependências:

```bash
flutter pub get
```

4. Configure a chave da API:

- Crie um arquivo config.json dentro do diretório assets/config/.
- Adicione a chave da API no arquivo config.json conforme o exemplo abaixo:

```json
{
  "api_key": "sua-chave-de-api"
}
```

Inicialize o aplicativo:

- Inicie o aplicativo:

```bash
flutter run
```

## Estrutura do Projeto

O projeto é organizado da seguinte forma:

```json
lib/
├── components/
│   ├── chat_bubble.dart       # Widget de bolha de chat
│   └── splash_screen.dart     # Tela de splash
├── providers/
│   └── chat_provider.dart     # Provider para gerenciamento de estado do chat
├── utils/
│   └── config_loader.dart     # Utilitário para carregar configurações do arquivo JSON
├── main.dart                  # Ponto de entrada do aplicativo
└── chat_screen.dart           # Tela principal de chat
assets/
└── config/
    └── config.json            # Arquivo de configuração com a chave da API
```

## Packages Utilizados
- flutter_gemini: Integração com a API do Gemini.
- provider: Gerenciamento de estado.
- animated_text_kit: Animações de texto.
- progress_indicators: Indicadores de progresso.

## Licença

Este projeto é licenciado sob a licença MIT. Consulte o arquivo [LICENSE](LICENSE) para obter mais informações.
```

