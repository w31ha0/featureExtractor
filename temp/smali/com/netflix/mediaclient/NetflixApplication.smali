.class public Lcom/netflix/mediaclient/NetflixApplication;
.super Landroid/app/Application;
.source "NetflixApplication.java"


# static fields
.field public static final LOAD_TAG:Ljava/lang/String; = "NflxLoading"

.field private static final SO_FAILED_T0_LOAD:I = 0x7d0

.field private static final SO_LOADING_CLASS_NOT_FOUND:I = 0x7d3

.field private static final SO_LOADING_GENERIC_ERROR:I = 0x7d4

.field private static final SO_LOADING_UNSATISFIED_LINK:I = 0x7d2

.field private static final SO_VERSION_MISMATCH:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "NetflixApplication"

.field private static final TAG_LOCALE:Ljava/lang/String; = "nf_locale"

.field private static final gson:Lcom/google/gson/Gson;

.field private static instance:Lcom/netflix/mediaclient/NetflixApplication;

.field private static isDebugToastEnabled:Z

.field private static mEasterEggActivated:Z

.field private static mEasterEggHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final netflixLetters:[C

.field private static netflixLettersIndex:I

.field private static sAactivityVisible:Z

.field private static sEnableSmartLock:Z


# instance fields
.field private final MAX_ACTIVITY_TRANSITION_TIME_MS:J

.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private currentActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private mActivityTransitionTimer:Ljava/util/Timer;

.field private mActivityTransitionTimerTask:Ljava/util/TimerTask;

.field private mBitmapCache:Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;

.field private final mIsNetflixServiceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mServiceLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

.field private mSignedUpOnce:Z

.field private final mUserInput:Lcom/netflix/mediaclient/android/app/UserInputManager;

.field private ttrComplete:Z

.field private wasInBackground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 76
    invoke-static {}, Lcom/netflix/mediaclient/AutoValueAdapterFactory;->create()Lcom/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/NetflixApplication;->gson:Lcom/google/gson/Gson;

    .line 103
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->sEnableSmartLock:Z

    .line 109
    sput-boolean v2, Lcom/netflix/mediaclient/NetflixApplication;->isDebugToastEnabled:Z

    .line 560
    sput-boolean v2, Lcom/netflix/mediaclient/NetflixApplication;->mEasterEggActivated:Z

    .line 561
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/NetflixApplication;->mEasterEggHashMap:Ljava/util/Map;

    .line 562
    const-string/jumbo v0, "NETFLIX"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/NetflixApplication;->netflixLetters:[C

    .line 563
    sput v2, Lcom/netflix/mediaclient/NetflixApplication;->netflixLettersIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 80
    iput-boolean v2, p0, Lcom/netflix/mediaclient/NetflixApplication;->mSignedUpOnce:Z

    .line 82
    iput-boolean v2, p0, Lcom/netflix/mediaclient/NetflixApplication;->ttrComplete:Z

    .line 89
    new-instance v0, Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mUserInput:Lcom/netflix/mediaclient/android/app/UserInputManager;

    .line 97
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->MAX_ACTIVITY_TRANSITION_TIME_MS:J

    .line 114
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mIsNetflixServiceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 349
    new-instance v0, Lcom/netflix/mediaclient/NetflixApplication$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/NetflixApplication$2;-><init>(Lcom/netflix/mediaclient/NetflixApplication;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/NetflixApplication;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mIsNetflixServiceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/NetflixApplication;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/netflix/mediaclient/NetflixApplication;->wasInBackground:Z

    return p1
.end method

.method public static activityPaused()V
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->sAactivityVisible:Z

    .line 509
    return-void
.end method

.method public static activityResumed()V
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->sAactivityVisible:Z

    .line 505
    return-void
.end method

.method public static addToEasterEgg(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 565
    sget-object v0, Lcom/netflix/mediaclient/NetflixApplication;->mEasterEggHashMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 566
    sget-object v0, Lcom/netflix/mediaclient/NetflixApplication;->mEasterEggHashMap:Ljava/util/Map;

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getNextLetter()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_0
    return-void
.end method

.method public static createShowApplicationIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "android.intent.action.MAIN"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 117
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/netflix/mediaclient/NetflixApplication;->instance:Lcom/netflix/mediaclient/NetflixApplication;

    return-object v0
.end method

.method public static getCurrentActivityForDebug()Landroid/content/Context;
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/netflix/mediaclient/NetflixApplication;->instance:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->getCurrentActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method public static getGson()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 514
    sget-object v0, Lcom/netflix/mediaclient/NetflixApplication;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static getNextLetter()C
    .locals 3

    .prologue
    .line 574
    sget v0, Lcom/netflix/mediaclient/NetflixApplication;->netflixLettersIndex:I

    if-ltz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/NetflixApplication;->netflixLettersIndex:I

    sget-object v1, Lcom/netflix/mediaclient/NetflixApplication;->netflixLetters:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 575
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/netflix/mediaclient/NetflixApplication;->netflixLettersIndex:I

    .line 577
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/NetflixApplication;->netflixLetters:[C

    sget v1, Lcom/netflix/mediaclient/NetflixApplication;->netflixLettersIndex:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/netflix/mediaclient/NetflixApplication;->netflixLettersIndex:I

    aget-char v0, v0, v1

    return v0
.end method

.method public static getTitleFromEasterEggMap(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    sget-object v0, Lcom/netflix/mediaclient/NetflixApplication;->mEasterEggHashMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isActivityVisible()Z
    .locals 1

    .prologue
    .line 500
    sget-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->sAactivityVisible:Z

    return v0
.end method

.method public static isDebugToastEnabled()Z
    .locals 1

    .prologue
    .line 543
    sget-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->isDebugToastEnabled:Z

    return v0
.end method

.method public static isEasterEggActivated()Z
    .locals 1

    .prologue
    .line 580
    sget-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->mEasterEggActivated:Z

    return v0
.end method

.method public static isSmartlockEnabled()Z
    .locals 1

    .prologue
    .line 523
    sget-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->sEnableSmartLock:Z

    return v0
.end method

.method private loadAndVerifyNativeLibraries()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 216
    const/4 v0, 0x0

    .line 220
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->loadLibraries(Landroid/content/Context;)Z

    .line 221
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Native libraries are missing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v1, "NetflixApplication"

    const-string/jumbo v2, "Failed to load JNI libraries. Report"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 224
    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->reportFailedToLoadNativeLibraries(Ljava/lang/Throwable;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 251
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 252
    const-string/jumbo v1, "NetflixApplication"

    const-string/jumbo v2, "Crash happend, re-throw"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 253
    throw v0

    .line 226
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getLibraryVersion()I

    move-result v1

    .line 227
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    .line 228
    const-string/jumbo v3, "NetflixApplication"

    const-string/jumbo v4, "Manifest library version: %d, real: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 230
    if-eq v1, v2, :cond_0

    .line 231
    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "Versions do not match!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Native library mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 233
    const/16 v1, 0x7d1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->reportFailedToLoadNativeLibraries(Ljava/lang/Throwable;I)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    const-string/jumbo v1, "NetflixApplication"

    const-string/jumbo v2, "Failed to load JNI libraries. Report"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 239
    const/16 v1, 0x7d2

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->reportFailedToLoadNativeLibraries(Ljava/lang/Throwable;I)V

    .line 240
    throw v0

    .line 241
    :catch_1
    move-exception v0

    .line 242
    const-string/jumbo v1, "NetflixApplication"

    const-string/jumbo v2, "Failed to load JNI libraries. Report"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 243
    const/16 v1, 0x7d3

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->reportFailedToLoadNativeLibraries(Ljava/lang/Throwable;I)V

    .line 244
    throw v0

    .line 245
    :catch_2
    move-exception v0

    .line 246
    const-string/jumbo v1, "NetflixApplication"

    const-string/jumbo v2, "Failed to load JNI libraries. Generic error. Report"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 247
    const/16 v1, 0x7d4

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->reportFailedToLoadNativeLibraries(Ljava/lang/Throwable;I)V

    .line 248
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 255
    :cond_2
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 389
    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "Registering application broadcast receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_INIT_COMPLETE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_DESTROYED"

    aput-object v2, v0, v1

    .line 394
    iget-object v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.category.NETFLIX_SERVICE"

    invoke-static {p0, v1, v2, v0}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 395
    return-void
.end method

.method private reportFailedToLoadNativeLibraries(Ljava/lang/Throwable;I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 262
    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "Send warning notification!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const v0, 0x7f090273

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 264
    const v1, 0x7f0900a3

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/netflix/mediaclient/NetflixApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 265
    const v2, 0x7f090272

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/netflix/mediaclient/NetflixApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 267
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 269
    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f0201d5

    .line 270
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 272
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 273
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 277
    const-string/jumbo v1, "package:com.netflix.mediaclient"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 278
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 279
    const/high16 v1, 0x8000000

    invoke-static {p0, v6, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 281
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 283
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/NetflixApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 284
    if-eqz v0, :cond_0

    .line 285
    const-string/jumbo v2, "NetflixApplication"

    const-string/jumbo v3, "Send warning notification done started..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 287
    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "Send warning notification done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "Can not send warning, notification manager is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setEasterEggActivated()V
    .locals 1

    .prologue
    .line 583
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/NetflixApplication;->mEasterEggActivated:Z

    .line 584
    return-void
.end method

.method public static setEnableDebugToast(Z)V
    .locals 0

    .prologue
    .line 552
    sput-boolean p0, Lcom/netflix/mediaclient/NetflixApplication;->isDebugToastEnabled:Z

    .line 553
    return-void
.end method

.method public static setEnableSmartLock(Z)V
    .locals 0

    .prologue
    .line 535
    return-void
.end method

.method private setupClientStats()V
    .locals 2

    .prologue
    .line 415
    invoke-static {}, Lcom/netflix/cstatssamurai/ClientStats;->getInstance()Lcom/netflix/cstatssamurai/ClientStats;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/cstatssamurai/ClientStats;->setEnabled(Z)V

    .line 417
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 416
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    :goto_0
    invoke-static {}, Lcom/netflix/cstatssamurai/ClientStats;->getInstance()Lcom/netflix/cstatssamurai/ClientStats;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/cstatssamurai/ClientStats;->handleConnectivityChange(Ljava/lang/String;)V

    .line 423
    return-void

    .line 419
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupNetflixCommon()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/netflix/mediaclient/NetflixApplication$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/NetflixApplication$1;-><init>(Lcom/netflix/mediaclient/NetflixApplication;)V

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/common/NetflixCommon;->initWith(Landroid/app/Application;Lcom/netflix/mediaclient/common/NetflixCommon$Host;)V

    .line 212
    return-void
.end method


# virtual methods
.method public clearSignedInOnce()V
    .locals 2

    .prologue
    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mSignedUpOnce:Z

    .line 346
    const-string/jumbo v0, "useragent_userprofiles_data"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 347
    return-void
.end method

.method public getCurrentActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->currentActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public getImageCache()Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mBitmapCache:Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;

    return-object v0
.end method

.method public getUserInput()Lcom/netflix/mediaclient/android/app/UserInputManager;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mUserInput:Lcom/netflix/mediaclient/android/app/UserInputManager;

    return-object v0
.end method

.method public hasSignedUpOnce()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mSignedUpOnce:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mIsNetflixServiceReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTTRComplete()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->ttrComplete:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mServiceLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/NetflixApplication;->refreshLocale(Lcom/netflix/mediaclient/util/l10n/UserLocale;)V

    .line 129
    invoke-virtual {p0}, Lcom/netflix/mediaclient/NetflixApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isWidgetInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;->notifyWidgetsOnConfigurationChange(Landroid/content/Context;)V

    .line 132
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 180
    sput-object p0, Lcom/netflix/mediaclient/NetflixApplication;->instance:Lcom/netflix/mediaclient/NetflixApplication;

    .line 182
    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "Application onCreate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/netflix/mediaclient/NetflixApplication;->setupNetflixCommon()V

    .line 186
    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "Loading native libraries"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcom/netflix/mediaclient/NetflixApplication;->loadAndVerifyNativeLibraries()V

    .line 188
    invoke-static {p0}, Lio/realm/Realm;->init(Landroid/content/Context;)V

    .line 189
    invoke-static {p0}, Lcom/netflix/falkor/cache/FalkorCache;->init(Lcom/netflix/mediaclient/NetflixApplication;)V

    .line 190
    invoke-static {p0}, Lcom/netflix/mediaclient/android/debug/DebugOverlay;->init(Landroid/app/Application;)V

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mUserInput:Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/NetflixApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 193
    invoke-direct {p0}, Lcom/netflix/mediaclient/NetflixApplication;->registerReceiver()V

    .line 194
    invoke-direct {p0}, Lcom/netflix/mediaclient/NetflixApplication;->setupClientStats()V

    .line 195
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 297
    const-string/jumbo v0, "NetflixApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrimMemory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mBitmapCache:Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;

    if-eqz v0, :cond_0

    .line 300
    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "Flushing BitmapCache"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mBitmapCache:Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;->evictAll()V

    .line 304
    :cond_0
    return-void
.end method

.method public publishEvent(Lcom/netflix/mediaclient/event/UIEvent;)V
    .locals 2

    .prologue
    .line 325
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "TODO: Not implemented - move this to netflixService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refreshLastKnownLocale()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mServiceLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/NetflixApplication;->refreshLocale(Lcom/netflix/mediaclient/util/l10n/UserLocale;)V

    .line 141
    return-void
.end method

.method public refreshLocale(Lcom/netflix/mediaclient/util/l10n/UserLocale;)V
    .locals 4

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    const-string/jumbo v0, "nf_locale"

    const-string/jumbo v1, "serviceLocale = null, exit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string/jumbo v0, "nf_locale"

    const-string/jumbo v1, "refreshLocale with language %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 171
    iput-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication;->mServiceLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    .line 172
    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 173
    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->updateLocale(Ljava/util/Locale;Landroid/app/Application;)V

    goto :goto_0
.end method

.method public refreshLocale(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    const-string/jumbo v0, "nf_locale"

    const-string/jumbo v1, "serviceLocale = null, exit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/NetflixApplication;->refreshLocale(Lcom/netflix/mediaclient/util/l10n/UserLocale;)V

    goto :goto_0
.end method

.method public releaseCurrentActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->currentActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->currentActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->currentActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 452
    :cond_0
    return-void
.end method

.method public setCurrentActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .prologue
    .line 443
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    if-nez v0, :cond_0

    .line 444
    invoke-static {p1}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->notifyPlayerSuspendNotificationDelete(Landroid/content/Context;)V

    .line 446
    :cond_0
    return-void
.end method

.method public setImageCache(Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;)V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mBitmapCache:Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;

    if-eqz v0, :cond_0

    .line 319
    const-string/jumbo v0, "NetflixApplication"

    const-string/jumbo v1, "ImageCache is set more than once!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication;->mBitmapCache:Lcom/netflix/mediaclient/util/gfx/BitmapLruCache;

    .line 322
    return-void
.end method

.method public setSignedInOnce()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mSignedUpOnce:Z

    .line 334
    return-void
.end method

.method public setTTRComplete()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->ttrComplete:Z

    .line 342
    return-void
.end method

.method public startActivityTransitionTimer()V
    .locals 4

    .prologue
    .line 469
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mActivityTransitionTimer:Ljava/util/Timer;

    .line 470
    new-instance v0, Lcom/netflix/mediaclient/NetflixApplication$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/NetflixApplication$3;-><init>(Lcom/netflix/mediaclient/NetflixApplication;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mActivityTransitionTimerTask:Ljava/util/TimerTask;

    .line 477
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mActivityTransitionTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->mActivityTransitionTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 479
    return-void
.end method

.method public stopActivityTransitionTimer()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mActivityTransitionTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mActivityTransitionTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mActivityTransitionTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->mActivityTransitionTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 490
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->wasInBackground:Z

    .line 491
    return-void
.end method

.method public wasInBackground()Z
    .locals 2

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/netflix/mediaclient/NetflixApplication;->wasInBackground:Z

    .line 495
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/NetflixApplication;->wasInBackground:Z

    .line 496
    return v0
.end method
