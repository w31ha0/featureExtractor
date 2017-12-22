.class Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerPreN;
.super Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;
.source "DownloadNotificationManagerPreN.java"


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/util/gfx/ImageLoader;ZLcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/util/gfx/ImageLoader;ZLcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected addCancelDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 3

    .prologue
    .line 46
    const v0, 0x7f0200d5

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerPreN;->mContext:Landroid/content/Context;

    const v2, 0x7f090142

    .line 47
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerPreN;->getDeletePlayableIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 46
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 50
    return-void
.end method

.method protected addResumeDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 3

    .prologue
    .line 54
    const v0, 0x7f0200f9

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerPreN;->mContext:Landroid/content/Context;

    const v2, 0x7f090149

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerPreN;->getStartDownloadIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 54
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 57
    return-void
.end method

.method protected addStopDownloadAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 3

    .prologue
    .line 30
    const v0, 0x7f02019d

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerPreN;->mContext:Landroid/content/Context;

    const v2, 0x7f09014a

    .line 31
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerPreN;->getStopDownloadIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 30
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 33
    return-void
.end method

.method protected addWatchAction(Landroid/app/Notification$Builder;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 3

    .prologue
    .line 36
    const v0, 0x7f02021d

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerPreN;->mContext:Landroid/content/Context;

    const v2, 0x7f09014b

    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerPreN;->getWatchPlayableIntent(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 36
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 39
    return-void
.end method

.method protected getBigTextForInProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerPreN;->getSecondaryTitlePercentageSizeString(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBigTextForStoppedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManagerPreN;->getSecondaryTitlePercentageSizeString(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDownloadCompleteSmallIcon()I
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f0201b3

    return v0
.end method

.method protected getErrorNotificationSmallIcon()I
    .locals 1

    .prologue
    .line 88
    const v0, 0x7f0201b3

    return v0
.end method

.method protected setSmallIconForInProgress(Landroid/app/Notification$Builder;)V
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f0201b3

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 79
    return-void
.end method

.method protected setSmallIconForStoppedByUser(Landroid/app/Notification$Builder;)V
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f0201b3

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 73
    return-void
.end method
