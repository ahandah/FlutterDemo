package com.example.flutterapp;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  String sharedText = "Native App Field";
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);

    new MethodChannel(getFlutterView(), "app.channel.shared.data")
            .setMethodCallHandler(new MethodChannel.MethodCallHandler() {
                @Override
                public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                    switch (methodCall.method) {
                        case "getSharedText":
                            result.success(sharedText);
//                          sharedText = null;
                            break;
                        case "showToast":
                            Toast.makeText(MainActivity.this, "this is Natvie App",
                                    Toast.LENGTH_LONG).show();
                            break;

                        default:
//                            result.notImplemented();
                            break;
                    }
                }
            });
  }
}
