.class public Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "PushNotificationAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPushNotification;


# static fields
.field public static final SERVICE_KILL_DELAY_WAKED_BY_GCM_MS:J = 0x927c0L

.field private static final TAG:Ljava/lang/String; = "nf_push"

.field private static idCounter:I


# instance fields
.field private gcmRegistrationId:Ljava/lang/String;

.field private mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

.field private mGcmInfoEventStartedService:Z

.field private mGcmRegistered:Z

.field private mGcmSupported:Z

.field private mImageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

.field private mSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final pushNotificationReceiver:Landroid/content/BroadcastReceiver;

.field private reportOnRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, -0x1

    sput v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 643
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;-><init>(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->pushNotificationReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "PushNotificationAgent::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onLogin()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Landroid/content/Intent;)Lcom/netflix/mediaclient/service/logging/UserData;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->createUserData(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/logging/UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Lcom/netflix/mediaclient/service/logging/UserData;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onLogout(Lcom/netflix/mediaclient/service/logging/UserData;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getSource(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onNotificationOptIn(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    return-void
.end method

.method private areNotificationsEnabled()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 423
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v1

    .line 424
    if-nez v1, :cond_0

    .line 425
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "areNotificationsEnabled:: NotificationManagerCompat is null, assume that notifications are enabled"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :goto_0
    return v0

    .line 428
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v1

    .line 429
    const-string/jumbo v2, "nf_push"

    const-string/jumbo v3, "areNotificationsEnabled:: notifications are enabled %b"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 430
    goto :goto_0
.end method

.method private createNewCurrentUserSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;-><init>()V

    .line 216
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->current:Z

    .line 217
    iput-object p1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    .line 218
    iput-object p2, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->currentProfileToken:Ljava/lang/String;

    .line 219
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->oldAppVersion:I

    .line 220
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-object v0
.end method

.method private createUserData(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/logging/UserData;
    .locals 2

    .prologue
    .line 439
    new-instance v0, Lcom/netflix/mediaclient/service/logging/UserData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/UserData;-><init>()V

    .line 440
    const-string/jumbo v1, "esn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->esn:Ljava/lang/String;

    .line 441
    const-string/jumbo v1, "device_cat"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->deviceCategory:Ljava/lang/String;

    .line 442
    const-string/jumbo v1, "nid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->netflixId:Ljava/lang/String;

    .line 443
    const-string/jumbo v1, "sid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->secureNetflixId:Ljava/lang/String;

    .line 444
    const-string/jumbo v1, "uid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->accountOwnerToken:Ljava/lang/String;

    .line 445
    const-string/jumbo v1, "cp_uid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/logging/UserData;->currentProfileToken:Ljava/lang/String;

    .line 450
    return-object v0
.end method

.method private doGcmRegistration()V
    .locals 4

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isGcmSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "device does NOT support GCM!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmRegistered:Z

    if-nez v0, :cond_0

    .line 242
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "device supports GCM and device is NOT registered!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "484286080282"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized getMessageId(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 527
    const-string/jumbo v0, "nf_notification_id_counter"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    .line 530
    :cond_0
    sget v0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    .line 531
    sget v1, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->idCounter:I

    .line 533
    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$2;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$2;-><init>(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    monitor-exit p0

    return v0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getSource(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 678
    if-nez p0, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-object v0

    .line 682
    :cond_1
    const-string/jumbo v1, "source"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 684
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 685
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    goto :goto_0
.end method

.method private loadConfiguration()V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->loadSettings(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    .line 134
    return-void
.end method

.method private onGcmRegistration(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 355
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->gcmRegistrationId:Ljava/lang/String;

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmRegistered:Z

    .line 359
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->reportOnRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->login:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 362
    :cond_0
    return-void
.end method

.method private onGcmUnregistration(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 366
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->gcmRegistrationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "onGcmUnregistration - Same registrration ID"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmRegistered:Z

    .line 372
    return-void

    .line 369
    :cond_0
    const-string/jumbo v0, "nf_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGcmUnregistration - Received registration ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is NOT the same as registration ID known to app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->gcmRegistrationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onLogin()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 563
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isGcmSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "We can not do anything because device does not support push notifications!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :goto_0
    return-void

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getAccountOwnerToken()Ljava/lang/String;

    move-result-object v1

    .line 569
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentProfileToken()Ljava/lang/String;

    move-result-object v2

    .line 575
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 576
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-nez v0, :cond_1

    .line 577
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v3, "User was not know from before"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->createNewCurrentUserSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 590
    :goto_1
    :try_start_0
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "report sGcmInfoEventStartedService: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmInfoEventStartedService:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 591
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmInfoEventStartedService:Z

    if-eqz v0, :cond_3

    .line 592
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/NetflixService;->requestServiceShutdownAfterDelay(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "Check if we are registered already failed!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-boolean v3, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->current:Z

    .line 581
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->currentProfileToken:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 582
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "currentProfile change detected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->updateCurrentUserSettings(Ljava/lang/String;)V

    .line 585
    :cond_2
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "User was know from before and he opted in %b"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v3, v3, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 596
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->setPushOptInStatus(Landroid/content/Context;Z)V

    .line 597
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->login:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private declared-synchronized onLogout(Lcom/netflix/mediaclient/service/logging/UserData;)V
    .locals 3

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "User is logging out"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isGcmSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "We can not do anything because device does not support push notifications!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :goto_0
    monitor-exit p0

    return-void

    .line 299
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(ZZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 302
    if-eqz p1, :cond_1

    .line 303
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/logging/UserData;->accountOwnerToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-nez v0, :cond_1

    .line 305
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "User is logging out and it was uknown before?"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->current:Z

    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/logging/UserData;->accountOwnerToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/logging/UserData;->currentProfileToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->currentProfileToken:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->oldAppVersion:I

    .line 315
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->saveSettings()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 319
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/IrisUtils;->removeNotificationsFromStatusBar(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onMessage(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 455
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Message received, create notification. Running it on main thread."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mImageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getMessageId(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationFactory;->createNotification(Lcom/netflix/mediaclient/service/NetflixService;Landroid/content/Intent;Lcom/netflix/mediaclient/util/gfx/ImageLoader;I)V

    .line 457
    return-void
.end method

.method private onNotificationBrowserRedirect(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 487
    invoke-static {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->createInstance(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    move-result-object v0

    .line 488
    if-nez v0, :cond_0

    .line 489
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Unable to report browser redirect notification since message data are missing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_0
    return-void

    .line 492
    :cond_0
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "User browser redirect notification %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 495
    new-instance v1, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;

    new-instance v2, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;-><init>(Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    sget-object v0, Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;->opened:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;)V

    .line 496
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/log/PushNotificationLoggingUtils;->reportPushNotificationResolved(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;)V

    .line 498
    const-string/jumbo v0, "nf_push"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Landroid/content/Intent;)V

    .line 499
    const-string/jumbo v0, "target_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_1

    .line 507
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 510
    const/high16 v0, 0x34000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 513
    :cond_1
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "URI is missing! Can not open to browser!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onNotificationCanceled(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "nf_push"

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/util/IrisUtils;->ifNotificationWasCanceledUpdateItsStatus(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 468
    invoke-static {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->createInstance(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    move-result-object v0

    .line 469
    if-nez v0, :cond_0

    .line 470
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Unable to report canceled notification since message data are missing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_0
    return-void

    .line 473
    :cond_0
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "User canceled notification %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 476
    new-instance v1, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;

    new-instance v2, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;-><init>(Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    sget-object v0, Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;->canceled:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;)V

    .line 477
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/log/PushNotificationLoggingUtils;->reportPushNotificationResolved(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;)V

    goto :goto_0
.end method

.method private onNotificationOptIn(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 5

    .prologue
    .line 341
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "onNotificationOptIn - user optIn ? %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->validateCurrentUser()V

    .line 344
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->updateSettingsOnOptedIn(Z)V

    .line 345
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->setPushOptInStatus(Landroid/content/Context;Z)V

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 348
    return-void
.end method

.method private registerReceiver()V
    .locals 4

    .prologue
    .line 545
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Register receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PUSH_ONLOGIN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PUSH_ONLOGOUT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTIN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTOUT"

    aput-object v2, v0, v1

    .line 554
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->pushNotificationReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-static {v1, v2, v3, v0}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 555
    return-void
.end method

.method private report(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(ZZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 384
    return-void
.end method

.method private report(ZZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isGcmSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "We can not report anything if device does not support push notifications!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->areNotificationsEnabled()Z

    move-result v0

    .line 400
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->gcmRegistrationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->reportOnRegistered:Z

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRegisterForPushNotificationStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 409
    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->gcmRegistrationId:Ljava/lang/String;

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRegisterForPushNotificationEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 412
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->gcmRegistrationId:Ljava/lang/String;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRegisterForPushNotificationEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private saveSettings()V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    .line 328
    if-nez v0, :cond_0

    .line 329
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "This should not happen! Map is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_0
    return-void

    .line 332
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$1;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$1;-><init>(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->pushNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 559
    return-void
.end method

.method private updateCurrentUserSettings(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-object p1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->currentProfileToken:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->timestamp:J

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->saveSettings(Landroid/content/Context;Ljava/util/Map;)V

    .line 229
    return-void
.end method

.method private updateSettingsOnOptedIn(Z)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-nez v0, :cond_0

    .line 249
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "User is NOT logged in, do nothing. We can not register"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-boolean p1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optInDisplayed:Z

    .line 259
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->saveSettings()V

    goto :goto_0
.end method

.method private validateCurrentUser()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getAccountOwnerToken()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "accountOwnerToken ID is empty! This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->accountOwnerToken:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    :cond_2
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v2, "We DO NOT have user! Try to find it from settings"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-boolean v4, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->current:Z

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mSettings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-nez v0, :cond_4

    .line 205
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v2, "User was not know from before"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentProfileToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->createNewCurrentUserSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    goto :goto_0

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iput-boolean v3, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->current:Z

    .line 209
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "User was know from before and he opted in %b"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v3, v3, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 127
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "PNA:: destroy and unregister receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->unregisterReceiver()V

    .line 129
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 130
    return-void
.end method

.method protected doInit()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->loadConfiguration()V

    .line 114
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->verifyGCM()V

    .line 115
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->registerReceiver()V

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mImageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    .line 117
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->doGcmRegistration()V

    .line 118
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 119
    return-void
.end method

.method public getGcmRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->gcmRegistrationId:Ljava/lang/String;

    return-object v0
.end method

.method public handleCommand(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 612
    if-nez p1, :cond_0

    .line 613
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "Intent is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :goto_0
    return v0

    .line 617
    :cond_0
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_GCM_ONREGISTERED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Handle registration"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string/jumbo v0, "reg_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onGcmRegistration(Ljava/lang/String;)V

    .line 640
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 620
    :cond_1
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_GCM_ONUNREGISTERED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 621
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Handle unregistration"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string/jumbo v0, "reg_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onGcmUnregistration(Ljava/lang/String;)V

    goto :goto_1

    .line 623
    :cond_2
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_GCM_ONMESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 624
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Handle message"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onMessage(Landroid/content/Intent;)V

    goto :goto_1

    .line 626
    :cond_3
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFICATION_CANCELED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 627
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Handle notification canceled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onNotificationCanceled(Landroid/content/Intent;)V

    goto :goto_1

    .line 629
    :cond_4
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFICATION_BROWSER_REDIRECT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 630
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Handle notification browser redirect"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->onNotificationBrowserRedirect(Landroid/content/Intent;)V

    goto :goto_1

    .line 632
    :cond_5
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFICATION_MARK_AS_READ"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 633
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Handle notification respond mark as read redirect"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->markAsRead(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 636
    :cond_6
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "Uknown command!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public informServiceStartedOnGcmInfo()V
    .locals 2

    .prologue
    .line 693
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "noting that gcmInfoEvent started NetflixService"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmInfoEventStartedService:Z

    .line 695
    return-void
.end method

.method public isGcmSupported()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmSupported:Z

    return v0
.end method

.method public isOptIn()Z
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmSupported:Z

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->isGcmSupported()Z

    move-result v0

    return v0
.end method

.method public markAsRead(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 704
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "markAsRead"

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 705
    const-string/jumbo v0, "g"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 706
    new-instance v1, Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)V

    .line 708
    return-void
.end method

.method public onApplicationStarted()V
    .locals 2

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->validateCurrentUser()V

    .line 715
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optedIn:Z

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 721
    :goto_0
    return-void

    .line 718
    :cond_0
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Uknown user, report false"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v0, 0x0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->report(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0
.end method

.method public verifyGCM()V
    .locals 2

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 153
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Device supports GCM"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmSupported:Z

    .line 171
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Device does NOT supports GCM"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public wasNotificationOptInDisplayed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 269
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mGcmSupported:Z

    if-nez v1, :cond_0

    .line 270
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "Device is NOT GCM registered, do not display notification! That is why true is returned"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    return v0

    .line 274
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->validateCurrentUser()V

    .line 275
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    if-nez v1, :cond_1

    .line 276
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "Current user is empty. Do NOT display opt in dialog!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->mCurrentUserSettings:Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationUserSettings;->optInDisplayed:Z

    goto :goto_0
.end method
