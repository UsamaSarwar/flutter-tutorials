# Flutter Development

[![Flutter Installation](https://img.shields.io/badge/Flutter-Installation-2962FF?logo=Flutter&logoColor=ffffff)](#Flutter-Installation-Guide)
[![Flutter Complete Reference](https://img.shields.io/badge/Flutter-PDF-2962FF?logo=Flutter&logoColor=ffffff)](./resourses/FlutterDev.pdf)
[![Flutter Complete Reference](https://img.shields.io/badge/Flutter-by_Usama_Sarwar-2962FF?logo=Flutter&logoColor=ffffff)](https://www.usama.dev/flutter/)

Flutter is an open-source software development kit created by Google. It allows
you to build native apps for mobile, web, and desktop from a single codebase.
Flutter is gaining popularity among developers for its speed, performance, and
ease of use.

**Flutter's Importance in the Present**

Flutter is a powerful tool that can help developers build high-quality apps
quickly and easily. It is especially well-suited for building mobile apps, as it
can deliver native performance on both Android and iOS. Flutter is also becoming
increasingly popular for building web apps, as it can deliver a high-quality
user experience that is indistinguishable from a native app.

**Flutter's Importance in the Future**

Flutter is a young platform, but it is growing rapidly. As more developers adopt
Flutter, it will become even more powerful and versatile. Flutter has the
potential to revolutionize the way we build apps, and it is sure to play an
important role in the future of app development.

Here are some of the reasons why Flutter is becoming so popular:

- **Speed:** Flutter apps are compiled to native code, which means that they run
  at native speeds. This makes Flutter apps feel more responsive and fluid than
  apps that are built using a web framework.
- **Performance:** Flutter apps are highly performant, even on low-end devices.
  This is because Flutter uses a deferred rendering model, which means that it
  only renders the parts of the screen that are visible to the user.
- **Ease of use:** Flutter is easy to learn and use. The Flutter framework is
  well-designed and intuitive, and there are a large number of resources
  available to help developers get started.
- **Community:** The Flutter community is large and active. There are a number
  of online forums and chat groups where developers can ask questions and get
  help.

If you are looking for a powerful and versatile platform for building mobile
apps, Flutter is a great option. It is fast, performant, easy to use, and has a
large and active community.

Here are some of the companies that are using Flutter:

- **Google:** Flutter is used to build a number of Google products, including
  the Google Assistant and the Google Home hub.
- **Etsy:** Etsy uses Flutter to build its mobile app.
- **The New York Times:** The New York Times uses Flutter to build its mobile
  app.
- **Hamilton:** Hamilton uses Flutter to build its mobile app.
- **Grab:** Grab uses Flutter to build its mobile app.

These are just a few examples of the companies that are using Flutter. As
Flutter continues to grow in popularity, we can expect to see even more
companies adopt it.

## Flutter Installation Guide

Install Flutter on Windows, Mac, and Linux using this step by step guide. Also,
learn how to set up your preferred IDE for Flutter development.

### Step 1: System Requirements

To install Flutter, you need a computer with the following minimum requirements:

- **Operating Systems:** Windows 10 or later (64-bit), macOS (64-bit), or Linux
  (64-bit)
- **Disk Space:** 2.8 GB (does not include disk space for IDE/tools).
- **Tools:** Flutter depends on these command-line tools being available in your
  environment.
- **Windows PowerShell 5.0** or newer (this is pre-installed with Windows 10)
- **Git for Windows 2.x**, with the **Use Git from the Windows Command
  Prompt** option.
- **Visual Studio Code**, with the **Flutter** and **Dart** plugins installed.
- **Android Studio**, with the **Flutter** and **Dart** plugins installed.
- **Xcode 9.0** or newer (recommended for building iOS apps)
- **Android SDK** API 28 or newer (recommended for building Android apps)

### Step 2: Download the Flutter SDK, VS Code, and Android Studio

- **Download Flutter SDK:** The Flutter SDK is available on flutter.dev. You can
  download it from the following
  link: [Download Flutter SDK](https://docs.flutter.dev/get-started/install)
- **Download VS Code:** VS Code is available on code.visualstudio.com. You can
  download it from the following
  link: [Download VS Code](https://code.visualstudio.com/download)
- **Download Android Studio:** Android Studio is available on
  developer.android.com. You can download it from the following
  link: [Download Android Studio](https://developer.android.com/studio)

### Step 3: Extract the Flutter SDK

Extract the Flutter SDK to a location of your choice. For example, you can
extract it to `C:\flutter` on Windows or `~/flutter` on Linux or macOS.

### Step 4: Add Flutter to your PATH

Add the Flutter SDK to your PATH environment variable. This will allow you to
run the Flutter command from anywhere on your system.

To do this on Windows, follow these steps:

1.  Open the Control Panel.

2.  Click on **System and Security**.

3.  Click on **System**.

4.  Click on **Advanced system settings**.

5.  Click on **Environment Variables**.

6.  Under **System variables**, click on **Path**.

7.  Click on **Edit**.

8.  Click on **New**.

9.  Enter the path to the Flutter SDK (e.g., `C:\flutter\bin`).

10. Click on **OK**.

To do this on Linux or macOS, follow these steps:

1.  Open a terminal window.

2.  Run the following command:

```bash

export PATH="$PATH:`pwd`/flutter/bin"
```

3.  Run the following command:

```bash

source ~/.bashrc
```

To configure Flutter to disable the windows command prompt, run the following
command:

```bash
flutter config --no-enable-windows-desktop
```

### Step 5: Run flutter doctor

Run the following command to verify that Flutter has been installed correctly:

```bash
flutter doctor
```

If everything is working correctly, you should see the following output:

```bash
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.10.3, on Microsoft Windows [Version 10.0.25387.1200], locale en-US)
[✓] Windows Version (Installed version of Windows is version 10 or higher)
[✓] Android toolchain - develop for Android devices (Android SDK version 33.0.1)
[✓] Chrome - develop for the web
[✓] Android Studio (version 2022.2)
[✓] VS Code, 64-bit edition (version 1.79.1)
[✓] Connected device (2 available)
[✓] Network resources

• No issues found!
```

If you see any errors, you can refer to
the [Flutter documentation](https://flutter.dev/docs/get-started/install) for
troubleshooting tips.

### Step 6: Install Android Studio

Android Studio is the official IDE for Android development. It is available for
Windows, macOS, and Linux. You can download it from the following link:
[Android Studio](https://developer.android.com/studio)

### Step 7: Install the Flutter and Dart plugins

Once you have installed Android Studio, you need to install the Flutter and Dart
plugins. To do this, open Android Studio and go to **File > Settings >
Plugins**. Then, search for **Flutter** and **Dart** and install them.

### Step 8: Install the Android SDK

Once you have installed Android Studio, you need to install the Android SDK. To
do this, open Android Studio and go to **File > Settings > Appearance &
Behavior > System Settings > Android SDK**. Then, select the **SDK
Platforms** tab and install the Android SDK.

### Step 9: Install the Android Emulator

Once you have installed Android Studio, you need to install the Android
Emulator. To do this, open Android Studio and go to **File > Settings >
Appearance & Behavior > System Settings > Android SDK**. Then, select the **SDK
Tools** tab and install the Android Emulator.

### Step 10: Create a new Flutter project

Once you have installed Android Studio, you can create a new Flutter project. To
do this, open Android Studio and go to **File > New > New Flutter Project**.
Then, select **Flutter Application** and click **Next**. Then, enter a name for
your project and click **Finish**.

### Step 11: Run the app

Once you have created a new Flutter project, you can run it on an Android device
or emulator. To do this, open Android Studio and go to **Run > Run**. Then,
select the device or emulator that you want to run the app on and click **OK**.
