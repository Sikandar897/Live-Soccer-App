
# Live Soccer App

This is a live soccer app that brings real-time football match data through the [API-SPORTS](https://api-sports.io/) API. The app has a simple UI to provide users with up-to-date information on football matches.

## API-SPORTS

- **API Website:** [API-SPORTS](https://api-sports.io/)
- **API-FOOTBALL Documentation:** [API-FOOTBALL Documentation](https://api-sports.io/documentation/football/v3)
- **Register for API Key:** [API-SPORTS Registration](https://dashboard.api-football.com/profile?access)

## Screenshot
![Live Soccer App](https://github.com/Sikandar897/live_scores_app/blob/main/assets/screenshot.png)

## Setup

1. Visit [API-SPORTS Registration](https://dashboard.api-football.com/profile?access) to get your API key.
2. Put your API key in `lib/services/soccer.dart`:

   ```dart
   static const headers = {
     'x-rapidapi-host': "v3.football.api-sports.io",
     'x-rapidapi-key': "YOUR_API_KEY"
   };
## Features
1. Live football match data.
2. Simple and user-friendly UI.

## How to Use
1. Clone the repository:
git clone https://github.com/Sikandar897/live-soccer-app.git
2. Navigate to the project folder:
cd live-soccer-app
3. Install dependencies:
flutter pub get
4. Run the app:
flutter run
## Contribution
Contributions are welcome! If you find any issues or have suggestions for improvement, feel free to open an issue or create a pull request.

**HappyCoding**
