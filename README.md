# MyAwesomeApp

MyAwesomeApp is a mobile application built with Flutter that allows users to register, login, and access various resources related to courses, colleges, competitive exams, quizzes, coding websites, and books.

## Features

- **User Authentication**: Users can register and login securely using a POST API with validation of details.
- **Token-based Authentication**: Upon successful login, a token is stored locally, which is used for subsequent requests until logout.
- **Dashboard**: Displays a grid view with six categories: courses, colleges, competitive exams, quizzes, coding websites, and books.
- **Category Details**: Upon clicking on a category, users are taken to a separate page displaying a list of related resources.
- **Resource Links**: Each resource in the list contains a link, which, when clicked, opens in the default browser for users to access.

## Screenshots

  <div style="display: flex; justify-content: space-between;">
    <img src="https://github.com/BhavikPindoriya/url_launcher/assets/154498968/08c64c58-9947-4bf9-afea-cbe69936d4b3" alt="Screenshot 1" width="200">
    <img src="https://github.com/BhavikPindoriya/url_launcher/assets/154498968/8a103b3f-5dc2-4e87-9ba9-c20b7999da6b" alt="Screenshot 2" width="200">
    <img src="https://github.com/BhavikPindoriya/url_launcher/assets/154498968/1fcffd01-141b-4e07-ab74-9d22c960a212" alt="Screenshot 3" width="200">
    <img src="https://github.com/BhavikPindoriya/url_launcher/assets/154498968/008de3a4-0926-4403-9320-1e8de694ebcc" alt="Screenshot 4" width="200">
    <img src="https://github.com/BhavikPindoriya/url_launcher/assets/154498968/a2f487bb-8e0c-473a-9d1c-8a236835a9ea" alt="Screenshot 4" width="200">
    <img src="https://github.com/BhavikPindoriya/url_launcher/assets/154498968/c74d4b92-6c7c-45e8-afc9-2c90c45a4659" alt="Screenshot 4" width="200">
    <img src="https://github.com/BhavikPindoriya/url_launcher/assets/154498968/0df98dcf-ad08-451c-9fb8-5ebc7cf90652" alt="Screenshot 4" width="200">
    <img src="https://github.com/BhavikPindoriya/url_launcher/assets/154498968/cca7541a-6d92-4b16-b5df-646cda82ba6d" alt="Screenshot 4" width="200">
</div>

## Technologies Used

- **Framework**: Flutter
- **State Management**: Provider or Riverpod
- **Database**: Shared Preferences for token storage
- **Networking**: Dio for API calls
- **UI**: Flutter Widgets and Material Design


