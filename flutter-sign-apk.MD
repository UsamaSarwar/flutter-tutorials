To sign an APK in Flutter, you can follow these steps:

1. Create a new keystore file. You can do this using the following command:

```
keytool -genkey -v -keystore my-release-key.jks -keyalg RSA -keysize 2048 -validity 10000
```

This will create a new keystore file called `my-release-key.jks` in the current directory. You will be prompted to enter a keystore password, a key alias, and a key password.

2. Reference the keystore from the app. In your project's `build.gradle(app)` file, add the following lines to the `signingConfigs` section:

```
signingConfigs {
  release {
    storeFile file("my-release-key.jks")
    storePassword <keystore password>
    keyAlias <key alias>
    keyPassword <key password>
  }
}
```

3. Configure signing in Gradle. In your project's `build.gradle` file, add the following line to the `android` section:

```
signingConfigs signingConfigs.release
```

4. Build the signed APK. To build the signed APK, run the following command:

```
flutter build apk --release
```

This will create a signed APK file in the `build/app/outputs/apk/release` directory.

You can also use Android Studio to sign your APK. To do this, open your project in Android Studio and select `Build > Generate Signed Bundle/APK > APK`. In the wizard, select `Release` as the build type and select the keystore file that you created in step 1. Click `Next` and enter the keystore password, key alias, and key password. Click `Finish` to build the signed APK.

Once you have built the signed APK, you can upload it to the Google Play Store or distribute it to your users.
