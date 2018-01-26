.class public Lorg/acra/ACRA;
.super Ljava/lang/Object;
.source "ACRA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/ACRA$2;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAIL_REPORT_FIELDS:[Lorg/acra/ReportField;

.field public static final DEFAULT_REPORT_FIELDS:[Lorg/acra/ReportField;

.field public static final DEV_LOGGING:Z = false

.field public static final LOG_TAG:Ljava/lang/String;

.field static final NOTIF_CRASH_ID:I = 0x29a

.field public static final NULL_VALUE:Ljava/lang/String; = "ACRA-NULL-STRING"

.field public static final PREF_ALWAYS_ACCEPT:Ljava/lang/String; = "acra.alwaysaccept"

.field public static final PREF_DISABLE_ACRA:Ljava/lang/String; = "acra.disable"

.field public static final PREF_ENABLE_ACRA:Ljava/lang/String; = "acra.enable"

.field public static final PREF_ENABLE_DEVICE_ID:Ljava/lang/String; = "acra.deviceid.enable"

.field public static final PREF_ENABLE_SYSTEM_LOGS:Ljava/lang/String; = "acra.syslog.enable"

.field public static final PREF_USER_EMAIL_ADDRESS:Ljava/lang/String; = "acra.user.email"

.field static final RES_DIALOG_COMMENT_PROMPT:Ljava/lang/String; = "RES_DIALOG_COMMENT_PROMPT"

.field static final RES_DIALOG_ICON:Ljava/lang/String; = "RES_DIALOG_ICON"

.field static final RES_DIALOG_OK_TOAST:Ljava/lang/String; = "RES_DIALOG_OK_TOAST"

.field static final RES_DIALOG_TEXT:Ljava/lang/String; = "RES_DIALOG_TEXT"

.field static final RES_DIALOG_TITLE:Ljava/lang/String; = "RES_DIALOG_TITLE"

.field static final RES_NOTIF_ICON:Ljava/lang/String; = "RES_NOTIF_ICON"

.field static final RES_NOTIF_TEXT:Ljava/lang/String; = "RES_NOTIF_TEXT"

.field static final RES_NOTIF_TICKER_TEXT:Ljava/lang/String; = "RES_NOTIF_TICKER_TEXT"

.field static final RES_NOTIF_TITLE:Ljava/lang/String; = "RES_NOTIF_TITLE"

.field static final RES_TOAST_TEXT:Ljava/lang/String; = "RES_TOAST_TEXT"

.field private static mAppStartDate:Landroid/text/format/Time;

.field private static mApplication:Landroid/app/Application;

.field private static mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    const-class v0, Lorg/acra/ACRA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 353
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    aput-object v1, v0, v4

    sget-object v1, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    aput-object v1, v0, v5

    sget-object v1, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    aput-object v1, v0, v6

    sget-object v1, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    sput-object v0, Lorg/acra/ACRA;->DEFAULT_MAIL_REPORT_FIELDS:[Lorg/acra/ReportField;

    .line 361
    const/16 v0, 0x22

    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    aput-object v1, v0, v4

    sget-object v1, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    aput-object v1, v0, v5

    sget-object v1, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    aput-object v1, v0, v6

    sget-object v1, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    aput-object v2, v0, v1

    sput-object v0, Lorg/acra/ACRA;->DEFAULT_REPORT_FIELDS:[Lorg/acra/ReportField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    return-void
.end method

.method static synthetic access$000()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/ACRAConfigurationException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lorg/acra/ACRA;->initAcra()V

    return-void
.end method

.method static checkCrashResources()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/ACRAConfigurationException;
        }
    .end annotation

    .prologue
    .line 304
    sget-object v0, Lorg/acra/ACRA$2;->$SwitchMap$org$acra$ReportingInteractionMode:[I

    sget-object v1, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 319
    :cond_0
    return-void

    .line 306
    :pswitch_0
    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resToastText()I

    move-result v0

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lorg/acra/ACRAConfigurationException;

    const-string v1, "TOAST mode: you have to define the resToastText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :pswitch_1
    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogText()I

    move-result v0

    if-nez v0, :cond_0

    .line 314
    :cond_1
    new-instance v0, Lorg/acra/ACRAConfigurationException;

    const-string v1, "NOTIFICATION mode: you have to define at least the resNotifTickerText, resNotifTitle, resNotifText, resDialogText parameters in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getACRASharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 331
    const-string v0, ""

    sget-object v1, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieve SharedPreferences "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v2}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    sget-object v1, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v2}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    .line 336
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Retrieve application default SharedPreferences."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public static getConfig()Lorg/acra/annotation/ReportsCrashes;
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 7
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    const/4 v4, 0x1

    .line 186
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    sput-object v3, Lorg/acra/ACRA;->mAppStartDate:Landroid/text/format/Time;

    .line 187
    sget-object v3, Lorg/acra/ACRA;->mAppStartDate:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 188
    sput-object p0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    .line 189
    sget-object v3, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v5, Lorg/acra/annotation/ReportsCrashes;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/acra/annotation/ReportsCrashes;

    sput-object v3, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    .line 190
    sget-object v3, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v3, :cond_0

    .line 192
    invoke-static {}, Lorg/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 193
    .local v2, "prefs":Landroid/content/SharedPreferences;
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Set OnSharedPreferenceChangeListener."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v3, Lorg/acra/ACRA$1;

    invoke-direct {v3}, Lorg/acra/ACRA$1;-><init>()V

    sput-object v3, Lorg/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 227
    const/4 v0, 0x0

    .line 229
    .local v0, "disableAcra":Z
    :try_start_0
    const-string v5, "acra.disable"

    const-string v3, "acra.enable"

    const/4 v6, 0x1

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 234
    :goto_1
    if-eqz v0, :cond_2

    .line 235
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACRA is disabled for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_2
    sget-object v3, Lorg/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 249
    .end local v0    # "disableAcra":Z
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 229
    .restart local v0    # "disableAcra":Z
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 238
    :cond_2
    :try_start_1
    invoke-static {}, Lorg/acra/ACRA;->initAcra()V
    :try_end_1
    .catch Lorg/acra/ACRAConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Lorg/acra/ACRAConfigurationException;
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Error : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 230
    .end local v1    # "e":Lorg/acra/ACRAConfigurationException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private static initAcra()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/ACRAConfigurationException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Lorg/acra/ACRA;->checkCrashResources()V

    .line 258
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACRA is enabled for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intializing..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v0

    .line 262
    .local v0, "errorReporter":Lorg/acra/ErrorReporter;
    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v2}, Lorg/acra/annotation/ReportsCrashes;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/acra/ErrorReporter;->setReportingInteractionMode(Lorg/acra/ReportingInteractionMode;)V

    .line 263
    sget-object v2, Lorg/acra/ACRA;->mAppStartDate:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Lorg/acra/ErrorReporter;->setAppStartDate(Landroid/text/format/Time;)V

    .line 265
    const-string v2, ""

    sget-object v3, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v3}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 266
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reports will be sent by email (if accepted by user)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v2, Lorg/acra/sender/EmailIntentSender;

    sget-object v3, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-direct {v2, v3}, Lorg/acra/sender/EmailIntentSender;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lorg/acra/ErrorReporter;->addReportSender(Lorg/acra/sender/ReportSender;)V

    .line 297
    :cond_0
    :goto_0
    sget-object v2, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/acra/ErrorReporter;->init(Landroid/content/Context;)V

    .line 300
    invoke-virtual {v0}, Lorg/acra/ErrorReporter;->checkReportsOnApplicationStart()V

    .line 301
    return-void

    .line 271
    :cond_1
    sget-object v2, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 272
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 273
    const-string v2, "android.permission.INTERNET"

    sget-object v3, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 277
    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v2}, Lorg/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, ""

    sget-object v3, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v3}, Lorg/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 278
    new-instance v2, Lorg/acra/sender/HttpPostSender;

    sget-object v3, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v3}, Lorg/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/acra/sender/HttpPostSender;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lorg/acra/ErrorReporter;->addReportSender(Lorg/acra/sender/ReportSender;)V

    goto :goto_0

    .line 282
    :cond_2
    sget-object v2, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v2}, Lorg/acra/annotation/ReportsCrashes;->formKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, ""

    sget-object v3, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v3}, Lorg/acra/annotation/ReportsCrashes;->formKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    new-instance v2, Lorg/acra/sender/GoogleFormSender;

    sget-object v3, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v3}, Lorg/acra/annotation/ReportsCrashes;->formKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/acra/sender/GoogleFormSender;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/acra/ErrorReporter;->addReportSender(Lorg/acra/sender/ReportSender;)V

    goto :goto_0

    .line 287
    :cond_3
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " should be granted permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.permission.INTERNET"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " if you want your crash reports to be sent. If you don\'t want to add this permission to your application you can also enable sending reports by email. If this is your will then provide your email address in @ReportsCrashes(mailTo=\"your.account@domain.com\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
