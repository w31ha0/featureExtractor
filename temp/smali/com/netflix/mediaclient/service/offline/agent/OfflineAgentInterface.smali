.class public interface abstract Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
.super Ljava/lang/Object;
.source "OfflineAgentInterface.java"


# static fields
.field public static final CATEGORY_NF_OFFLINE:Ljava/lang/String; = "com.netflix.mediaclient.intent.category.offline"

.field public static final OFFLINE_INTENT_OSV_SPACE_USAGE_UPDATED:Ljava/lang/String; = "com.netflix.mediaclient.intent.offline.osv.space.usage.updated"


# virtual methods
.method public abstract addOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V
.end method

.method public abstract deleteAllOfflineContent()V
.end method

.method public abstract deleteAndTryAgain(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
.end method

.method public abstract deleteOfflinePlayable(Ljava/lang/String;)V
.end method

.method public abstract deleteOfflinePlayables(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCurrentDownloadVideoQuality()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;
.end method

.method public abstract getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;
.end method

.method public abstract getOfflineStorageVolumeList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;
.end method

.method public abstract getRequiresUnmeteredNetwork()Z
.end method

.method public abstract isOfflineFeatureEnabled()Z
.end method

.method public abstract pauseDownload(Ljava/lang/String;)V
.end method

.method public abstract recalculateSpaceUsageForOfflineStorageVolumes()V
.end method

.method public abstract refreshUIData()V
.end method

.method public abstract removeOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V
.end method

.method public abstract requestOfflinePdsData(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;)V
.end method

.method public abstract requestOfflineViewing(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
.end method

.method public abstract requestRefreshLicenseForPlayable(Ljava/lang/String;)V
.end method

.method public abstract requestRenewPlayWindowForPlayable(Ljava/lang/String;)V
.end method

.method public abstract resumeDownload(Ljava/lang/String;)V
.end method

.method public abstract setCurrentOfflineStorageVolume(I)V
.end method

.method public abstract setDownloadVideoQuality(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;)V
.end method

.method public abstract setRequiresUnmeteredNetwork(Z)V
.end method

.method public abstract setSkipAdultContent(Z)Z
.end method
