# 🚀 OrbitalWatch

OrbitalWatch é um aplicativo Flutter desenvolvido para monitoramento e visualização de eventos espaciais, análise de riscos e navegação por informações relacionadas a objetos em órbita.

## 📱 Funcionalidades

- Splash Screen inicial
- Tela de Introdução
- Dashboard/Home
- Lista de Eventos
- Detalhes de Eventos
- Mapa de Risco
- Configurações do Usuário
- Navegação dinâmica entre telas
- Interface Dark Mode
- Material Design 3

---

## 🛠️ Tecnologias Utilizadas

- Flutter
- Dart
- Material Design 3

---

## 📂 Estrutura do Projeto

```text
lib/
│
├── main.dart
│
├── screens/
│   ├── splash_screen.dart
│   ├── intro_screen.dart
│   ├── home_screen.dart
│   ├── event_list_screen.dart
│   ├── event_detail_screen.dart
│   ├── risk_map_screen.dart
│   └── settings_screen.dart
```

---

## 🔄 Fluxo de Navegação

```text
Splash Screen
      ↓
 Intro Screen
      ↓
 Home Screen
      ↓
 ┌─────────────┬─────────────┬─────────────┐
 ↓             ↓             ↓
Events      Risk Map     Settings
 ↓
Event Detail
```

---

## 🎨 Tema da Aplicação

O aplicativo utiliza:

- Material 3
- Tema Escuro (Dark Theme)
- Cor principal: Azul Escuro (#0D47A1)
- Background preto para melhor visualização de dados espaciais

---

## 🧩 Rotas Disponíveis

| Rota | Tela |
|--------|--------|
| /splash | Splash Screen |
| /intro | Intro Screen |
| /home | Home Screen |
| /events | Lista de Eventos |
| /map | Mapa de Risco |
| /settings | Configurações |

### Rotas Dinâmicas

```text
/event/{id}
```

Exemplo:

```text
/event/1
/event/15
/event/100
```

---

## ▶️ Como Executar

### 1. Clonar o Repositório

```bash
git clone <URL_DO_REPOSITORIO>
```

### 2. Entrar na Pasta

```bash
cd orbitalwatch
```

### 3. Instalar Dependências

```bash
flutter pub get
```

### 4. Executar Projeto

```bash
flutter run
```

---

## 📋 Pré-requisitos

- Flutter SDK 3.x+
- Dart SDK
- Android Studio ou VS Code
- Emulador Android/iOS ou dispositivo físico

---

## 👨‍💻 Equipe

Projeto desenvolvido para a Global Solution FIAP.

### Integrantes

- Nome Integrante 1 - RM
- Nome Integrante 2 - RM
- Nome Integrante 3 - RM
- Nome Integrante 4 - RM

---

## 📄 Licença

Projeto acadêmico desenvolvido para fins educacionais.
