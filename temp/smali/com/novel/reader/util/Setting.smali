.class public Lcom/novel/reader/util/Setting;
.super Ljava/lang/Object;
.source "Setting.java"


# static fields
.field public static final BannerAd:I = 0x1

.field public static final InterstitialAd:I = 0x0

.field public static final PROPERTY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field public static final PROPERTY_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final PROPERTY_ON_SERVER_EXPIRATION_TIME:Ljava/lang/String; = "onServerExpirationTimeMs"

.field public static final PROPERTY_REG_ID:Ljava/lang/String; = "registration_id"

.field public static final REGISTRATION_EXPIRY_TIME_MS:J = 0x240c8400L

.field static final TAG:Ljava/lang/String; = "GCM_kos"

.field public static final TEXT_CHINA:I = 0x1

.field private static final initMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final initStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final initialAppTheme:I = 0x0

.field public static final initialAudioClickToNextPage:I = 0x0

.field public static final initialClickToNextPage:I = 0x1

.field public static final initialOpenDownloadPage:I = 0x0

.field public static final initialReadingDirection:I = 0x2

.field public static final initialReindLeaving:Ljava/lang/Boolean;

.field public static final initialStopSleeping:I = 0x1

.field public static final initialTextColor:I = -0x1000000

.field public static final initialTextLanguage:I = 0x0

.field public static final initialTextSize:I = 0x14

.field public static final keyArticleAdType:Ljava/lang/String; = "ArticleAdType"

.field public static final keyAudioClickToNextPage:Ljava/lang/String; = "AudioClickToNextPage"

.field public static final keyClickToNextPage:Ljava/lang/String; = "ClickToNextPage"

.field public static final keyCollectNotificationRandomNum:Ljava/lang/String; = "keyCollectNotificationRandomNum"

.field public static final keyMode:Ljava/lang/String; = "ModeSetting"

.field public static final keyMoonMode:Ljava/lang/String; = "MoonModeSetting"

.field public static final keyOpenDownloadPage:Ljava/lang/String; = "OpenDownloadPage"

.field public static final keyPref:Ljava/lang/String; = "pref"

.field public static final keyReadingDirection:Ljava/lang/String; = "ReadingDirections"

.field public static final keyRemindLeaving:Ljava/lang/String; = "Leaving"

.field public static final keyStopSleeping:Ljava/lang/String; = "StopSleeping"

.field public static final keySunMode:Ljava/lang/String; = "SunModeSetting"

.field public static final keyTextLanguage:Ljava/lang/String; = "TextLanguage"

.field public static final keyTextSize:Ljava/lang/String; = "TextSize"

.field public static final keyUpdateAppVersion:Ljava/lang/String; = "UpdateAppVersion"

.field public static final keyYearSubscription:Ljava/lang/String; = "YearSubscription"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/novel/reader/util/Setting;->initialReindLeaving:Ljava/lang/Boolean;

    .line 52
    new-instance v0, Lcom/novel/reader/util/Setting$1;

    invoke-direct {v0}, Lcom/novel/reader/util/Setting$1;-><init>()V

    sput-object v0, Lcom/novel/reader/util/Setting;->initMap:Ljava/util/HashMap;

    .line 68
    new-instance v0, Lcom/novel/reader/util/Setting$2;

    invoke-direct {v0}, Lcom/novel/reader/util/Setting$2;-><init>()V

    sput-object v0, Lcom/novel/reader/util/Setting;->initStringMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 162
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 163
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getBackgroundModeBackgroundColor(Ljava/lang/String;Landroid/content/Context;)I
    .locals 3
    .param p0, "keyMode"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-static {p0, p1}, Lcom/novel/reader/util/Setting;->getSettingString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "sunSetting":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getBackgroundModeTextColor(Ljava/lang/String;Landroid/content/Context;)I
    .locals 3
    .param p0, "keyMode"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    invoke-static {p0, p1}, Lcom/novel/reader/util/Setting;->getSettingString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "sunSetting":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-static {p0}, Lcom/novel/reader/util/Setting;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 150
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "device_id"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "deviceId":Ljava/lang/String;
    return-object v0
.end method

.method public static getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    const-string v0, "pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getRegisteredVersion(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-static {p0}, Lcom/novel/reader/util/Setting;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "appVersion"

    const/high16 v2, -0x80000000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-static {p0}, Lcom/novel/reader/util/Setting;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 127
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "registration_id"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "registrationId":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 129
    const-string v4, "GCM_kos"

    const-string v5, "Registration not found."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v3, ""

    .line 140
    .end local v3    # "registrationId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 134
    .restart local v3    # "registrationId":Ljava/lang/String;
    :cond_1
    const-string v4, "appVersion"

    const/high16 v5, -0x80000000

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 135
    .local v2, "registeredVersion":I
    invoke-static {p0}, Lcom/novel/reader/util/Setting;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 136
    .local v0, "currentVersion":I
    if-ne v2, v0, :cond_2

    invoke-static {p0}, Lcom/novel/reader/util/Setting;->isRegistrationExpired(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    :cond_2
    const-string v4, "GCM_kos"

    const-string v5, "App version changed or registration expired."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v3, ""

    goto :goto_0
.end method

.method public static getSettingInt(Ljava/lang/String;Landroid/content/Context;)I
    .locals 4
    .param p0, "settingKey"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 79
    .local v1, "sharePreference":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/novel/reader/util/Setting;->initMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 80
    .local v0, "settingValue":I
    return v0
.end method

.method public static getSettingRemind(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 101
    .local v1, "sharePreference":Landroid/content/SharedPreferences;
    const-string v2, "Leaving"

    sget-object v3, Lcom/novel/reader/util/Setting;->initialReindLeaving:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 102
    .local v0, "settingValue":Ljava/lang/Boolean;
    return-object v0
.end method

.method public static getSettingString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "settingKey"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const-string v2, "pref"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 85
    .local v1, "sharePreference":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/novel/reader/util/Setting;->initStringMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "settingValue":Ljava/lang/String;
    return-object v0
.end method

.method public static getTextModePosition(Ljava/lang/String;)I
    .locals 1
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string v0, "SunModeSetting"

    if-ne p0, v0, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isRegistrationExpired(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    invoke-static {p0}, Lcom/novel/reader/util/Setting;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 172
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "onServerExpirationTimeMs"

    const-wide/16 v4, -0x1

    .line 173
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 174
    .local v0, "expirationTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static saveSetting(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 3
    .param p0, "settingKey"    # Ljava/lang/String;
    .param p1, "settingValue"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    .local v0, "sharePreference":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    return-void
.end method

.method public static saveSetting(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "settingKey"    # Ljava/lang/String;
    .param p1, "settingValue"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, "sharePreference":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    return-void
.end method

.method public static saveSettingRemind(Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 4
    .param p0, "value"    # Ljava/lang/Boolean;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 107
    .local v0, "sharePreference":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "Leaving"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method
