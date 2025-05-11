# 📰 News Aggregator App

A full-stack News Aggregator App built using *Flutter* (frontend) and *Node.js + Express* (backend). The app allows users to view the latest news, filter by categories, search for news, and save favorites locally.

---

## 📁 Project Structure


news_aggregator_app/
├── backend/
│   ├── server.js           # Entry point for Node.js backend
│   ├── .env                # Environment variables
│   └── package.json        # Backend dependencies and scripts
└── frontend/
    ├── lib/
    │   ├── controllers/
    │   │   └── news_controller.dart    # Manages state and interaction logic
    │   ├── models/
    │   │   └── article.dart            # News article model
    │   ├── screens/
    │   │   └── home_screen.dart        # UI for main home screen
    │   ├── services/
    │   │   └── news_service.dart       # Handles API requests
    │   └── main.dart                   # App entry point
    ├── pubspec.yaml        # Flutter dependencies
    └── android/ios/web/    # Auto-generated platform-specific folders


---

## ⚙ Features

- Fetch latest news using News API
- View news articles with title, image, and description
- Search news by keyword
- Filter news by category
- Save favorite articles locally (no backend storage)
- Cross-platform (Android, iOS, Web)

---

## 🚀 Getting Started

### Backend Setup (Node.js + Express)

1. Navigate to the backend folder:
   bash
   cd news_aggregator_app/backend
   

2. Install dependencies:
   bash
   npm install
   

3. Create a .env file:
   
   PORT=5000
   NEWS_API_KEY=your_news_api_key_here
   

4. Start the server:
   bash
   node server.js
   

### Frontend Setup (Flutter)

1. Navigate to the frontend folder:
   bash
   cd news_aggregator_app/frontend
   

2. Get Flutter dependencies:
   bash
   flutter pub get
   

3. Run the app:
   bash
   flutter run
   

---

## 🛠 Technologies Used

### Frontend:
- Flutter
- Dart
- GetX (for state management)
- HTTP package

### Backend:
- Node.js
- Express.js
- Axios or Node-fetch (for API calls)
- Dotenv (for managing environment variables)

---

## 🔐 Environment Variables

Create a .env file in the /backend directory:


PORT=5000
NEWS_API_KEY=your_news_api_key_here


You can get a free API key from [NewsAPI.org](https://newsapi.org/).

---

## 📦 API Routes (Backend)

- GET /news – Get latest news
- GET /news?category=technology – Filter news by category
- GET /news/search?q=flutter – Search news by keyword

---

## 📱 Screenshots

You can add screenshots here of the mobile UI for visual reference.

---

## ✨ Future Improvements

- Add Firebase authentication
- Sync saved news to cloud
- Dark mode support
- Multi-language support

---

## © License

This project is licensed under the MIT License.

---

## 👨‍💻 Author

Created by *Katta Akshaya*  
BCA Student, Chaitanya Deemed to be University


