.class public Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;
.super Ljava/lang/Object;
.source "InfoEventHandler.java"


# static fields
.field private static final GCM_BROWSE_EVENT_RATE_LIMIT_DELAY_MS:J = 0x3e8L

.field private static final GCM_NOTIFICATION_LIST_CHANGE_EVENT_RATE_LIMIT_DELAY_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "nf_push_info"

.field private static mInfoEventHanlder:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

.field private static mService:Lcom/netflix/mediaclient/service/NetflixService;


# instance fields
.field private final fetchPreAppDataRunnable:Ljava/lang/Runnable;

.field private final refreshCWRunnable:Ljava/lang/Runnable;

.field private final refreshIQRunnable:Ljava/lang/Runnable;

.field private final refreshLolomoRunnable:Ljava/lang/Runnable;

.field private final refreshSocialNotificationRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mInfoEventHanlder:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$1;-><init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshCWRunnable:Ljava/lang/Runnable;

    .line 201
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$2;-><init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshIQRunnable:Ljava/lang/Runnable;

    .line 211
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$3;-><init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshLolomoRunnable:Ljava/lang/Runnable;

    .line 225
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$4;-><init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshSocialNotificationRunnable:Ljava/lang/Runnable;

    .line 235
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$5;-><init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->fetchPreAppDataRunnable:Ljava/lang/Runnable;

    .line 35
    return-void
.end method

.method static synthetic access$000()Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    return-object v0
.end method

.method private getBrowseEventRateLimitMs(Lcom/netflix/mediaclient/service/NetflixService;)J
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getRateLimitForGcmBrowseEvents()I

    move-result v0

    .line 172
    if-gez v0, :cond_0

    .line 173
    const-wide/16 v0, 0x0

    .line 175
    :goto_0
    return-wide v0

    :cond_0
    if-lez v0, :cond_1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3e8

    goto :goto_0
.end method

.method public static getInstance()Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mInfoEventHanlder:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    return-object v0
.end method

.method private getNListChangeEventRateLimit(Lcom/netflix/mediaclient/service/NetflixService;)J
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getRateLimitForNListChangeEvents()I

    move-result v0

    .line 182
    if-gez v0, :cond_0

    .line 183
    const-wide/16 v0, 0x0

    .line 185
    :goto_0
    return-wide v0

    :cond_0
    if-lez v0, :cond_1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3e8

    goto :goto_0
.end method

.method private handleLolomoRefreshEvent(Lcom/netflix/mediaclient/service/NetflixService;ZLcom/netflix/mediaclient/service/pushnotification/Payload;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidUtils;->isWidgetInstalled(Landroid/content/Context;)Z

    move-result v0

    .line 101
    if-nez p2, :cond_0

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->killSelf(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 115
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNewLolomoActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 109
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshLolomoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshLolomoRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getBrowseEventRateLimitMs(Lcom/netflix/mediaclient/service/NetflixService;)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    iget-object v3, p3, Lcom/netflix/mediaclient/service/pushnotification/Payload;->renoCause:Ljava/lang/String;

    iget-object v4, p3, Lcom/netflix/mediaclient/service/pushnotification/Payload;->renoMessageGuid:Ljava/lang/String;

    iget-wide v6, p3, Lcom/netflix/mediaclient/service/pushnotification/Payload;->renoCreationTimestamp:J

    .line 113
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p3, Lcom/netflix/mediaclient/service/pushnotification/Payload;->messageGuid:Ljava/lang/String;

    iget-object v7, p3, Lcom/netflix/mediaclient/service/pushnotification/Payload;->guid:Ljava/lang/String;

    .line 112
    invoke-static/range {v0 .. v7}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNewLolomoActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleMyListEvent(Lcom/netflix/mediaclient/service/NetflixService;ZZ)V
    .locals 4

    .prologue
    .line 88
    if-eqz p2, :cond_1

    .line 89
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshIQRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshIQRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getBrowseEventRateLimitMs(Lcom/netflix/mediaclient/service/NetflixService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    if-eqz p3, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->fetchPreAppDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->fetchPreAppDataRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getBrowseEventRateLimitMs(Lcom/netflix/mediaclient/service/NetflixService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private handleNListChangeEvent(Lcom/netflix/mediaclient/service/NetflixService;Z)V
    .locals 4

    .prologue
    .line 145
    if-nez p2, :cond_0

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string/jumbo v0, "nf_push_info"

    const-string/jumbo v1, "handling EVENT_NOTIFICATION_LIST_CHANGED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshSocialNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshSocialNotificationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getNListChangeEventRateLimit(Lcom/netflix/mediaclient/service/NetflixService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private handleNReadEvent(Lcom/netflix/mediaclient/service/NetflixService;Z)V
    .locals 4

    .prologue
    .line 132
    if-nez p2, :cond_0

    .line 141
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string/jumbo v0, "nf_push_info"

    const-string/jumbo v1, "handling EVENT_NOTIFICATION_READ"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshSocialNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshSocialNotificationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getNListChangeEventRateLimit(Lcom/netflix/mediaclient/service/NetflixService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private handlePlayEndEvent(Lcom/netflix/mediaclient/service/NetflixService;ZZ)V
    .locals 4

    .prologue
    .line 120
    if-eqz p2, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshCWRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->refreshCWRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getBrowseEventRateLimitMs(Lcom/netflix/mediaclient/service/NetflixService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    if-eqz p3, :cond_0

    .line 124
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->fetchPreAppDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->fetchPreAppDataRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->getBrowseEventRateLimitMs(Lcom/netflix/mediaclient/service/NetflixService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private killSelf(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 8

    .prologue
    const-wide/32 v6, 0x927c0

    .line 161
    const-string/jumbo v0, "nf_push_info"

    const-string/jumbo v1, "Skip handling event - gcmInfoEvent woke up netflixService intent: "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getPushNotification()Lcom/netflix/mediaclient/servicemgr/IPushNotification;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPushNotification;->informServiceStartedOnGcmInfo()V

    .line 164
    const-string/jumbo v0, "nf_push_info"

    const-string/jumbo v1, "kill service in %d ms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 165
    invoke-virtual {p1, v6, v7}, Lcom/netflix/mediaclient/service/NetflixService;->requestServiceShutdownAfterDelay(J)V

    .line 166
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    const-string/jumbo v0, "nf_push_info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not handling event service is null for payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return-void

    .line 47
    :cond_0
    sput-object p1, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    .line 49
    const-string/jumbo v0, "isRunning"

    invoke-static {p3, v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    .line 50
    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidUtils;->isWidgetInstalled(Landroid/content/Context;)Z

    move-result v1

    .line 52
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 53
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->killSelf(Lcom/netflix/mediaclient/service/NetflixService;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v2, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->actionInfoType:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->isLolomoRefreshEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    invoke-direct {p0, p1, v0, p2}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->handleLolomoRefreshEvent(Lcom/netflix/mediaclient/service/NetflixService;ZLcom/netflix/mediaclient/service/pushnotification/Payload;)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v2, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->actionInfoType:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->isMylistChangedEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->handleMyListEvent(Lcom/netflix/mediaclient/service/NetflixService;ZZ)V

    goto :goto_0

    .line 67
    :cond_3
    iget-object v2, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->actionInfoType:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->isPlayEndEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 68
    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->handlePlayEndEvent(Lcom/netflix/mediaclient/service/NetflixService;ZZ)V

    goto :goto_0

    .line 72
    :cond_4
    iget-object v1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->actionInfoType:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->isNotificationReadEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->handleNReadEvent(Lcom/netflix/mediaclient/service/NetflixService;Z)V

    goto :goto_0

    .line 77
    :cond_5
    iget-object v1, p2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->actionInfoType:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->isNotificationListChangedEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->handleNListChangeEvent(Lcom/netflix/mediaclient/service/NetflixService;Z)V

    goto :goto_0

    .line 82
    :cond_6
    const-string/jumbo v0, "nf_push_info"

    const-string/jumbo v1, "unknown message - dropping"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
