.class public Lc/Device;
.super Lvpadn/r;
.source "Device.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Device"

.field public static cordovaVersion:Ljava/lang/String;

.field public static platform:Ljava/lang/String;

.field public static uuid:Ljava/lang/String;


# instance fields
.field a:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "2.5.0"

    sput-object v0, Lc/Device;->cordovaVersion:Ljava/lang/String;

    .line 43
    const-string v0, "Android"

    sput-object v0, Lc/Device;->platform:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lvpadn/r;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lc/Device;->a:Landroid/content/BroadcastReceiver;

    .line 52
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    new-instance v1, Lc/Device$1;

    invoke-direct {v1, p0}, Lc/Device$1;-><init>(Lc/Device;)V

    iput-object v1, p0, Lc/Device;->a:Landroid/content/BroadcastReceiver;

    .line 147
    :try_start_0
    iget-object v1, p0, Lc/Device;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc/Device;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string v1, "VPON"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initTelephonyReceiver throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 76
    const-string v0, "getDeviceInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 78
    const-string v1, "uuid"

    sget-object v2, Lc/Device;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v1, "version"

    invoke-virtual {p0}, Lc/Device;->getOSVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v1, "platform"

    sget-object v2, Lc/Device;->platform:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v1, "name"

    invoke-virtual {p0}, Lc/Device;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v1, "cordova"

    sget-object v2, Lc/Device;->cordovaVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v1, "model"

    invoke-virtual {p0}, Lc/Device;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lorg/json/JSONObject;)V

    .line 89
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCordovaVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lc/Device;->cordovaVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 184
    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 199
    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lc/Device;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 189
    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 205
    return-object v0
.end method

.method public getTimeZoneID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    const-string v0, "notAndroidId"

    .line 169
    iget-object v0, p0, Lc/Device;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    return-object v0
.end method

.method public initialize(Lvpadn/q;Lvpadn/f;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lvpadn/r;->initialize(Lvpadn/q;Lvpadn/f;)V

    .line 63
    invoke-virtual {p0}, Lc/Device;->getUuid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/Device;->uuid:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lc/Device;->a()V

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 99
    :try_start_0
    iget-object v0, p0, Lc/Device;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lc/Device;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string v1, "Device"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device onDestroy throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
