-keep class io.flutter.embedding.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class com.mcluke.system.** { *; }
-keepclassmembers class * {
    @androidx.annotation.Keep *;
}
# Keep classes used by reflection in common plugins (add more if you see missing class errors)
-keep class com.google.firebase.** { *; }
-keep class com.squareup.moshi.** { *; }
-keep class org.kodein.** { *; }
# Do not shrink or obfuscate injectable annotations / generated code
-keep class **.Injectable* { *; }
-keep class **.Generated* { *; }
