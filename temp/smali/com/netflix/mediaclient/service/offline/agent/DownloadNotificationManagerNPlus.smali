.class Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;
.super Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;
.source "DownloadNotificationManagerNPlus.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/util/gfx/ImageLoader;ZLcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/util/gfx/ImageLoader;ZLcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected addCancelDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->mContext:Landroid/content/Context;

    const v2, 0x7f0200d5

    .line 54
    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->mContext:Landroid/content/Context;

    const v3, 0x7f090142

    .line 55
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->getDeletePlayableIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 58
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 59
    return-void
.end method

.method protected addResumeDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 4

    .prologue
    .line 62
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->mContext:Landroid/content/Context;

    const v2, 0x7f0200f9

    .line 63
    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->mContext:Landroid/content/Context;

    const v3, 0x7f090149

    .line 64
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->getStartDownloadIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 67
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 68
    return-void
.end method

.method protected addStopDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->mContext:Landroid/content/Context;

    const v2, 0x7f02019d

    .line 33
    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->mContext:Landroid/content/Context;

    const v3, 0x7f09014a

    .line 34
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->getStopDownloadIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 37
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 38
    return-void
.end method

.method protected addWatchAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->mContext:Landroid/content/Context;

    const v2, 0x7f02021d

    .line 42
    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->mContext:Landroid/content/Context;

    const v3, 0x7f09014b

    .line 43
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->getWatchPlayableIntent(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 46
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 47
    return-void
.end method

.method protected getBigTextForInProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->getSecondaryTitlePercentageSizeString(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBigTextForStoppedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerNPlus;->getSecondaryTitlePercentageSizeString(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDownloadCompleteSmallIcon()I
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f020195

    return v0
.end method

.method protected getErrorNotificationSmallIcon()I
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f020196

    return v0
.end method

.method protected setSmallIconForInProgress(Landroid/app/Notification$Builder;)V
    .locals 1

    .prologue
    .line 90
    const v0, 0x1080081

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 91
    return-void
.end method

.method protected setSmallIconForStoppedByUser(Landroid/app/Notification$Builder;)V
    .locals 1

    .prologue
    .line 83
    const v0, 0x1080082

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 84
    return-void
.end method
