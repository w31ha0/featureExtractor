.class abstract Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;
.super Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;
.source "DownloadNotificationManager.java"


# static fields
.field private static final DELETE_DOWNLOAD:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.offline.delete_download"

.field private static final DOWNLOAD_COMPLETE_NOTIFICATION_DISMISSED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.offline.download_complete_notification_dismissed"

.field private static final INTENT_EXTRA_PLAYABLE_ID:Ljava/lang/String; = "playable_id"

.field private static final INTENT_EXTRA_VIDEO_TYPE:Ljava/lang/String; = "videoType"

.field private static final LAUNCH_OFFLINE_ACTIVITY:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.offline.launch_offline_activity"

.field private static final START_DOWNLOAD:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.offline.start_download"

.field private static final STOP_DOWNLOAD:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.offline.stop_download"

.field private static final TAG:Ljava/lang/String; = "nf_downloadNotification"

.field private static final WATCH_PLAYABLE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.offline.watch_playable"


# instance fields
.field private final DOWNLOAD_COMPLETE_NOTIFICATION_ID:I

.field private final DOWNLOAD_ERROR_NOTIFICATION_ID:I

.field private final DOWNLOAD_PROGRESS_NOTIFICATION_ID:I

.field final mContext:Landroid/content/Context;

.field private final mImageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

.field private final mLargeIconHeight:I

.field private final mLargeIconWidth:I

.field private final mNetflixService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

.field private final mNotificationData:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;",
            ">;"
        }
    .end annotation
.end field

.field private mNumDownloadCompletedForNotification:I

.field private final mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/util/gfx/ImageLoader;ZLcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;-><init>()V

    .line 76
    const/16 v0, 0x65

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->DOWNLOAD_PROGRESS_NOTIFICATION_ID:I

    .line 77
    const/16 v0, 0x66

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->DOWNLOAD_ERROR_NOTIFICATION_ID:I

    .line 78
    const/16 v0, 0x67

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->DOWNLOAD_COMPLETE_NOTIFICATION_ID:I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    .line 119
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNetflixService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 120
    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mImageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    .line 121
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    .line 122
    iput-object p6, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    .line 123
    new-instance v1, Landroid/util/LruCache;

    if-eqz p5, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-direct {v1, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNotificationData:Landroid/util/LruCache;

    .line 124
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mLargeIconWidth:I

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mLargeIconHeight:I

    .line 150
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mLargeIconWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mLargeIconHeight:I

    return v0
.end method

.method private buildNotification(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 457
    const-string/jumbo v0, "nf_downloadNotification"

    const-string/jumbo v1, "buildNotification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 460
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 461
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 462
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0024

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 464
    :cond_0
    if-eqz p2, :cond_1

    .line 465
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 467
    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private cancelAndRemoveDownloadCompleteNotification(Landroid/app/NotificationManager;)V
    .locals 3

    .prologue
    const/16 v2, 0x67

    .line 617
    const-string/jumbo v0, "nf_downloadNotification"

    const-string/jumbo v1, "cancelAndRemoveDownloadProgressNotification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual {p1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 619
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNetflixService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->requestBackgroundForNotification(IZ)V

    .line 620
    return-void
.end method

.method private cancelAndRemoveDownloadProgressNotification(Landroid/app/NotificationManager;)V
    .locals 3

    .prologue
    const/16 v2, 0x65

    .line 623
    const-string/jumbo v0, "nf_downloadNotification"

    const-string/jumbo v1, "cancelAndRemoveDownloadProgressNotification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual {p1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 625
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNetflixService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->requestBackgroundForNotification(IZ)V

    .line 626
    return-void
.end method

.method private cancelAndRemoveErrorNotification(Landroid/app/NotificationManager;)V
    .locals 2

    .prologue
    .line 629
    const-string/jumbo v0, "nf_downloadNotification"

    const-string/jumbo v1, "cancelAndRemoveErrorNotification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 631
    return-void
.end method

.method public static createDownloadNotificationManager(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/util/gfx/ImageLoader;ZLcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;
    .locals 7

    .prologue
    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 108
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/util/gfx/ImageLoader;ZLcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V

    .line 110
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerPreN;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerPreN;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/util/gfx/ImageLoader;ZLcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V

    goto :goto_0
.end method

.method private createPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.offline"

    .line 571
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    if-eqz p2, :cond_0

    .line 573
    const-string/jumbo v0, "playable_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->DownloadNotification:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->setIntentGroupType(Landroid/content/Intent;Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;)V

    .line 578
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private ensureImageAndVideoType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNotificationData:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    .line 523
    if-nez v0, :cond_0

    .line 524
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;)V

    .line 525
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNotificationData:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->fetchNotificationData(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)V

    .line 528
    :cond_0
    return-object v0
.end method

.method private fetchNotificationData(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 471
    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v2

    .line 472
    if-nez v2, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v4

    .line 474
    if-eqz v4, :cond_0

    .line 476
    const-string/jumbo v0, ""

    .line 477
    const-string/jumbo v0, ""

    .line 479
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    iput-object v1, p2, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 480
    iget-object v1, p2, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v5, :cond_2

    .line 482
    new-instance v1, Ljava/lang/String;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const v5, 0x7f09010b

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 485
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x1

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 484
    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 491
    :goto_1
    sget-object v4, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->FORCED_RTL:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->prependBidiMarkerIfRtl(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    .line 492
    sget-object v1, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->FORCED_RTL:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->prependBidiMarkerIfRtl(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mSecondaryTitle:Ljava/lang/CharSequence;

    .line 497
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mImageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    .line 498
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v5, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;

    invoke-direct {v5, p0, p2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)V

    move v4, v3

    .line 497
    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V

    goto :goto_0

    .line 488
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getContentIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 555
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.offline.launch_offline_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->createPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getDeleteIntent()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 560
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.offline.download_complete_notification_dismissed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->createPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getShortPercentageString(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPercentageDownloaded()I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->getAsPercentString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleDownloadStoppedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 7

    .prologue
    const/16 v6, 0x65

    const/4 v5, 0x0

    .line 383
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->ensureImageAndVideoType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    move-result-object v0

    .line 384
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    const/16 v2, 0x64

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPercentageDownloaded()I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 386
    invoke-virtual {p0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->addResumeDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    .line 387
    invoke-virtual {p0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->addCancelDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    .line 388
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getShortPercentageString(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 389
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 392
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->setSmallIconForStoppedByUser(Landroid/app/Notification$Builder;)V

    .line 393
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getBigTextForStoppedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;

    move-result-object v2

    .line 395
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    .line 396
    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 397
    iget-object v2, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 398
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getContentIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 399
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mBoxShot:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->buildNotification(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v1

    .line 400
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 401
    if-eqz v0, :cond_0

    .line 402
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelAndRemoveErrorNotification(Landroid/app/NotificationManager;)V

    .line 403
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNetflixService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v2, v6, v5}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->requestBackgroundForNotification(IZ)V

    .line 404
    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 406
    :cond_0
    return-void
.end method

.method private removeAllNotifications()V
    .locals 2

    .prologue
    .line 606
    const-string/jumbo v0, "nf_downloadNotification"

    const-string/jumbo v1, "removeAllNotifications"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 608
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 609
    if-eqz v0, :cond_0

    .line 610
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelAndRemoveDownloadProgressNotification(Landroid/app/NotificationManager;)V

    .line 611
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelAndRemoveErrorNotification(Landroid/app/NotificationManager;)V

    .line 612
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelAndRemoveDownloadCompleteNotification(Landroid/app/NotificationManager;)V

    .line 614
    :cond_0
    return-void
.end method

.method private removeSystemNotificationBar()V
    .locals 2

    .prologue
    .line 639
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 641
    return-void
.end method

.method private showDownloadCompleteNotification(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 7

    .prologue
    const/16 v6, 0x67

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 268
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->ensureImageAndVideoType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    move-result-object v1

    .line 269
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    .line 275
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 277
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getDownloadCompleteSmallIcon()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const v3, 0x7f090143

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 282
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    if-gt v0, v4, :cond_2

    .line 287
    iget-object v0, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 288
    iget-object v0, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mSecondaryTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mSecondaryTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_0
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, v3}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    .line 290
    invoke-virtual {v3, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 291
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 292
    iget-object v0, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, v2, p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->addWatchAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 293
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getContentIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 294
    iget-object v0, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mBoxShot:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->buildNotification(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v0

    move-object v1, v0

    .line 311
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    .line 312
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 313
    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelAndRemoveErrorNotification(Landroid/app/NotificationManager;)V

    .line 315
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNetflixService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v2, v6, v5}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->requestBackgroundForNotification(IZ)V

    .line 316
    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 323
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelAndRemoveDownloadProgressNotification(Landroid/app/NotificationManager;)V

    .line 325
    :cond_0
    return-void

    .line 288
    :cond_1
    iget-object v0, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 298
    :cond_2
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    add-int/lit8 v0, v0, -0x1

    .line 299
    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const v4, 0x7f090145

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v3

    .line 300
    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    const-string/jumbo v3, "showOrMovieName"

    iget-object v4, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    .line 301
    invoke-virtual {v0, v3, v4}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withArg(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 304
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 305
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getContentIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 307
    iget-object v0, v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mBoxShot:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->buildNotification(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v0

    move-object v1, v0

    goto :goto_1
.end method

.method private showNotificationForErrors(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 364
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->ensureImageAndVideoType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    move-result-object v0

    .line 365
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 366
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getErrorNotificationSmallIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 368
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v3, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    .line 369
    invoke-virtual {v2, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 370
    iget-object v3, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 371
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getContentIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 372
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mBoxShot:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->buildNotification(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v1

    .line 373
    const/4 v0, 0x2

    iput v0, v1, Landroid/app/Notification;->priority:I

    .line 374
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    .line 375
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 376
    if-eqz v0, :cond_0

    .line 377
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelAndRemoveDownloadProgressNotification(Landroid/app/NotificationManager;)V

    .line 378
    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 380
    :cond_0
    return-void
.end method

.method private startOfflineActivity(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 586
    if-eqz p1, :cond_0

    .line 587
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->showAllDownloadsForPlayable(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 593
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 594
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->showAllDownloads(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private startPlayerActivity(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayContext;->OFFLINE_NOTIFICATION_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v0, p1, p2, v1}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->createColdStartIntent(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/content/Intent;

    move-result-object v0

    .line 601
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 602
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 603
    return-void
.end method


# virtual methods
.method protected abstract addCancelDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
.end method

.method protected abstract addResumeDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
.end method

.method protected abstract addStopDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
.end method

.method protected abstract addWatchAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
.end method

.method public cancelNotificationOnAccountInActive()V
    .locals 0

    .prologue
    .line 634
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 635
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    .line 636
    return-void
.end method

.method protected abstract getBigTextForInProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;
.end method

.method protected abstract getBigTextForStoppedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;
.end method

.method getDeletePlayableIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 550
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.offline.delete_download"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 551
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->createPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getDownloadCompleteSmallIcon()I
.end method

.method protected abstract getErrorNotificationSmallIcon()I
.end method

.method protected getSecondaryTitlePercentageSizeString(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 409
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getCurrentEstimatedSpace()J

    move-result-wide v0

    .line 410
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getTotalEstimatedSpace()J

    move-result-wide v2

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    iget-object v5, p2, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mSecondaryTitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 414
    iget-object v5, p2, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mSecondaryTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getShortPercentageString(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStartDownloadIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 539
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.offline.start_download"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->createPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method getStopDownloadIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 533
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.offline.stop_download"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->createPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method getWatchPlayableIntent(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 544
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.offline.watch_playable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    const-string/jumbo v1, "videoType"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->createPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public handleDownloadNotificationIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 430
    const-string/jumbo v0, "nf_downloadNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string/jumbo v0, "playable_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    const-string/jumbo v1, "videoType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.offline.stop_download"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 434
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->pauseDownload(Ljava/lang/String;)V

    .line 447
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.offline.launch_offline_activity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    iput v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    .line 452
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->startOfflineActivity(Ljava/lang/String;)V

    .line 454
    :cond_1
    return-void

    .line 435
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.offline.start_download"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 436
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->resumeDownload(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.offline.watch_playable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 438
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    .line 439
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeSystemNotificationBar()V

    .line 440
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->startPlayerActivity(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    goto :goto_0

    .line 441
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.offline.delete_download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 442
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    .line 443
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->deleteOfflinePlayable(Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.offline.download_complete_notification_dismissed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    iput v4, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    goto :goto_0
.end method

.method public isListenerDestroyed()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public onAllPlayablesDeleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 179
    const-string/jumbo v0, "nf_downloadNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAllPlayablesDeleted status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    .line 181
    return-void
.end method

.method public onCreateRequestResponse(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 154
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->ensureImageAndVideoType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    .line 157
    :cond_0
    return-void
.end method

.method public onDownloadCompleted(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 2

    .prologue
    .line 247
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->ensureImageAndVideoType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    move-result-object v0

    .line 251
    const-string/jumbo v1, "download completed. "

    invoke-static {v1}, Lcom/netflix/mediaclient/Log;->partner(Ljava/lang/String;)I

    .line 253
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->showDownloadCompleteNotification(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    .line 260
    :goto_0
    return-void

    .line 257
    :cond_0
    const-string/jumbo v0, "nf_downloadNotification"

    const-string/jumbo v1, "mVideoType is not available."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    goto :goto_0
.end method

.method public onDownloadResumedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public onDownloadStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 4

    .prologue
    .line 335
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->StoppedFromAgentAPI:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne p2, v0, :cond_0

    .line 336
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->handleDownloadStoppedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    .line 361
    :goto_0
    return-void

    .line 339
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NoNetworkConnectivity:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotAllowedOnCurrentNetwork:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne p2, v0, :cond_3

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getRequiresUnmeteredNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f090148

    .line 343
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->showNotificationForErrors(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f090147

    .line 344
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 346
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotEnoughSpace:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne p2, v0, :cond_4

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f090146

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 348
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->EncodesAreNotAvailableAnyMore:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-eq p2, v0, :cond_5

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->GeoCheckError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne p2, v0, :cond_6

    .line 349
    :cond_5
    invoke-static {p2}, Lcom/netflix/mediaclient/util/UserVisibleErrorCodeGenerator;->getOfflineErrorCodeForStoppedDownload(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {v0}, Lcom/netflix/mediaclient/util/UserVisibleErrorCodeGenerator;->addParenthesisWithPrefixSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f090144

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 353
    sget-object v2, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->FORCED_RTL:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->prependBidiMarkerIfRtl(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v0

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->FORCED_RTL:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->prependBidiMarkerIfRtl(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 356
    :cond_6
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    goto :goto_0
.end method

.method public onError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    .line 189
    return-void
.end method

.method public onLicenseRefreshDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onOfflinePlayableDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    .line 165
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    .line 166
    return-void
.end method

.method public onOfflinePlayableProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V
    .locals 6

    .prologue
    const/16 v5, 0x65

    const/4 v4, 0x0

    .line 213
    const-string/jumbo v0, "nf_downloadNotification"

    const-string/jumbo v1, "onOfflinePlayableProgress"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->ensureImageAndVideoType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    move-result-object v0

    .line 216
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    const/16 v2, 0x64

    invoke-virtual {v1, v2, p2, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 218
    invoke-virtual {p0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->addStopDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    .line 219
    invoke-virtual {p0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->addCancelDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    .line 220
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getShortPercentageString(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 223
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->setSmallIconForInProgress(Landroid/app/Notification$Builder;)V

    .line 224
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getBigTextForInProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;

    move-result-object v2

    .line 226
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    .line 227
    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 228
    iget-object v2, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 229
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->getContentIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 230
    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mBoxShot:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->buildNotification(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v1

    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    .line 233
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 234
    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->cancelAndRemoveErrorNotification(Landroid/app/NotificationManager;)V

    .line 236
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNetflixService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v2, v5, v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->requestForegroundForNotification(ILandroid/app/Notification;)V

    .line 237
    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 239
    :cond_0
    return-void
.end method

.method public onOfflinePlayablesDeleted(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->mNumDownloadCompletedForNotification:I

    .line 174
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    .line 175
    return-void
.end method

.method public onOfflineStorageVolumeAddedOrRemoved(Z)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->removeAllNotifications()V

    .line 204
    return-void
.end method

.method public onPlayWindowRenewDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method protected abstract setSmallIconForInProgress(Landroid/app/Notification$Builder;)V
.end method

.method protected abstract setSmallIconForStoppedByUser(Landroid/app/Notification$Builder;)V
.end method
