🚀 Base Project Flutter

A well-organized base Flutter project to kickstart your application development effortlessly and efficiently! ✨

🛠️ Features

FVM: This project uses Flutter Version Management (FVM) to ensure consistent Flutter versions across teams.
Injectable + GetIt: Powerful and easy-to-use Dependency Injection (DI) with injectable and get_it.
Clean Architecture: Designed with clean architecture principles to ensure scalability and maintainability.
📦 Installation

1️⃣ Clone the Repository
git clone https://github.com/bindok1/base_project.git
cd base_project
2️⃣ Install FVM
Ensure you have FVM installed. If not, install it using:

flutter pub global activate fvm
3️⃣ Set Flutter Version
This project uses the Flutter version defined in fvm_config.yaml. Install and use the specified version with:

fvm install
fvm use
4️⃣ Install Dependencies
Run the following command to fetch all the required dependencies:

fvm flutter pub get
🏗️ Project Structure

The project is structured following Clean Architecture principles:

lib/
├── core/          # Global configurations, utilities, etc.
├── features/      # Feature modules (e.g., auth, home, etc.).
├── di/            # Dependency Injection setup files (Injectable).
└── main.dart      # Application entry point.
⚡ Using Injectable

Follow these steps to configure Injectable:

Add the following dependencies to your pubspec.yaml file:
dependencies:
  injectable: ^2.1.0
  get_it: ^7.2.0

dev_dependencies:
  injectable_generator: ^2.1.0
  build_runner: ^2.3.0
Create a file named di/injection.dart:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => $initGetIt(getIt);
Run the following command to generate the DI configuration:
fvm flutter pub run build_runner build
Use getIt to inject dependencies anywhere in your app.
🌟 Benefits

🔥 Automated Dependency Management with Injectable.
✅ Consistent Flutter Versions across teams with FVM.
🧩 A clean, modular structure ready for large-scale app development.
🤝 Contribution

If you want to contribute to this project, feel free to fork the repository and submit a pull request. All contributions are welcome and appreciated! 🙌

📄 License

This project is licensed under the MIT License. See the LICENSE file for more information.

💬 Contact

If you have any questions or suggestions, feel free to reach out:

🌐 GitHub: bindok1
Made with ❤️ by bindok1
