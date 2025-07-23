# WBB Hub 

**WBB Hub** is a cross‑platform Flutter application that brings real‑time women’s basketball (WNBA & NCAA) data, insights, and community features to fans everywhere.

## 🚀 Key Features

* **Live Scores**: Instant updates on ongoing games.
* **Betting Analytics**: Free‑tier odds + implied probability calculations.
* **Stats & Rankings**: Team/player box scores and season leaderboards.
* **Schedules & Calendar Sync**: Monthly schedules with “Add to Calendar.”
* **Multilingual News**: RSS‑driven headlines in English and Spanish.
* **Push Notifications**: Breaking news, game reminders, record alerts.
* **Merch Links**: Shop your favorite team gear.
* **Glossary & Learning Banners**: In‑app pop‑ups that teach fouls, turnovers, records, and more.
* **Responsive Design**: Optimized for iOS, Android, web, and desktop.

## 🛠 Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/<your-username>/my-wbb-app.git
   cd my-wbb-app
   ```
2. **Fetch dependencies**

   ```bash
   flutter pub get
   ```
3. **Run on your device**

   * **iOS Simulator**: `flutter run -d ios`
   * **Android Emulator**: `flutter run -d emulator-5554`
   * **Web (Chrome)**: `flutter run -d chrome`
   * **Desktop (macOS)**: `flutter run -d macos`

## ⚙️ Configuration

* **API Sources**: ESPN JSON endpoints (live scores, stats, schedules) and RSS feeds for news/injuries.
* **State Management**: Riverpod for providers and asynchronous data.
* **Local Data**: JSON glossary for static content; Hive caching for offline stats.
* **Notifications**: Firebase Messaging (FCM) + flutter\_local\_notifications.

## 🤝 Contributing

1. Fork the repo and create a feature branch: `git checkout -b feature/YourFeature`
2. Commit your changes: `git commit -m "feat: add your feature"`
3. Push to your branch: `git push origin feature/YourFeature`
4. Open a Pull Request against `main`.

Please follow our [Code of Conduct](CODE_OF_CONDUCT.md) when contributing.

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

*Built with ❤️ for women’s basketball fans.*
