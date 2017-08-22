.class public Lvpadn/bm;
.super Ljava/lang/Object;
.source "VponDevice.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 27
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 28
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 29
    packed-switch v0, :pswitch_data_0

    .line 49
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 31
    :pswitch_0
    const-string v0, "VponDevice"

    const-string v1, "TelephonyManager.SIM_STATE_ABSENT"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :pswitch_1
    const-string v0, "VponDevice"

    const-string v1, "TelephonyManager.SIM_STATE_NETWORK_LOCKED"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :pswitch_2
    const-string v0, "VponDevice"

    const-string v1, "TelephonyManager.SIM_STATE_PIN_REQUIRED"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :pswitch_3
    const-string v0, "VponDevice"

    const-string v1, "TelephonyManager.SIM_STATE_PUK_REQUIRED"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    :pswitch_4
    const-string v0, "VponDevice"

    const-string v1, "TelephonyManager.SIM_STATE_READY"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x1

    goto :goto_1

    .line 46
    :pswitch_5
    const-string v0, "VponDevice"

    const-string v1, "TelephonyManager.SIM_STATE_UNKNOWN"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 53
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 54
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 65
    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 75
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 76
    check-cast p0, Landroid/app/Activity;

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    .line 79
    if-nez v0, :cond_0

    .line 80
    const-string v1, "VponDevice"

    const-string v2, "Hardware Accelerated is disabled, Suggest to enable Hardware Accelerated Using Activity.getWindow().setFlags(WindowManager.LayoutParams.FLAG_HARDWARE_ACCELERATED,WindowManager.LayoutParams.FLAG_HARDWARE_ACCELERATED) on onCreate of Activity method"

    invoke-static {v1, v2}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    const-string v0, "VponDevice"

    const-string v1, "context cannot cast to Activity, isEnableHardwareAccelerated return false"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 92
    sget-boolean v0, Lvpadn/ac;->a:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 103
    :goto_0
    return-object v0

    .line 95
    :cond_0
    const-string v0, ""

    .line 97
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 98
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string v0, "VponDevice"

    const-string v2, "get Imei fail"

    invoke-static {v0, v2}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 103
    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 109
    sget-boolean v0, Lvpadn/ac;->a:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 119
    :goto_0
    return-object v0

    .line 112
    :cond_0
    const-string v0, ""

    .line 114
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 115
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v0, "VponDevice"

    const-string v2, "not use wifi for internet"

    invoke-static {v0, v2}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 119
    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 125
    sget-boolean v0, Lvpadn/ac;->a:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 135
    :goto_0
    return-object v0

    .line 128
    :cond_0
    const-string v0, ""

    .line 130
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 131
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string v0, "VponDevice"

    const-string v2, "getBSSID failed"

    invoke-static {v0, v2}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 135
    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    return-object v0
.end method

.method public static i(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 186
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 187
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 188
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 189
    return-object v1
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    sget-boolean v0, Lvpadn/ac;->a:Z

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    .line 196
    :cond_0
    const-string v0, ""

    .line 198
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    const-string v0, "VponDevice"

    const-string v1, "getAndroidId failed"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v0, ""

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    sget-boolean v0, Lvpadn/ac;->a:Z

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 225
    :goto_0
    return-object v0

    .line 211
    :cond_0
    const-string v0, ""

    .line 213
    :try_start_0
    invoke-static {p0}, Lvpadn/bj;->a(Landroid/content/Context;)V

    .line 214
    invoke-static {}, Lvpadn/bj;->b()Z

    move-result v0

    .line 215
    if-eqz v0, :cond_1

    .line 216
    invoke-static {}, Lvpadn/bj;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {p0}, Lvpadn/bm;->j(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const-string v0, "VponDevice"

    const-string v1, "getOpenUdid failed"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {p0}, Lvpadn/bm;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 246
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 249
    :cond_0
    return v0
.end method
