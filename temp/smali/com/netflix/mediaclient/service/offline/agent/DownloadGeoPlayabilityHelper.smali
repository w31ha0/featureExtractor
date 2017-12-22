.class Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper;
.super Ljava/lang/Object;
.source "DownloadGeoPlayabilityHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_downloadGeoPlay"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static sendGeoPlayabilityRequest(Ljava/util/List;Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;Landroid/os/Handler;Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$GeoPlayabilityCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;",
            "Landroid/os/Handler;",
            "Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$GeoPlayabilityCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    const-string/jumbo v0, "nf_downloadGeoPlay"

    const-string/jumbo v1, "sendGeoPlayabilityRequest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    if-nez p1, :cond_0

    .line 37
    const-string/jumbo v0, "nf_downloadGeoPlay"

    const-string/jumbo v1, "browseAgent null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 41
    const-string/jumbo v0, "nf_downloadGeoPlay"

    const-string/jumbo v1, "videoIdList is empty"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_1
    const-string/jumbo v0, "nf_downloadGeoPlay"

    const-string/jumbo v1, "sendGeoPlayabilityRequest calling... updateOfflineGeoPlayability"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1;-><init>(Landroid/os/Handler;Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$GeoPlayabilityCallBack;)V

    invoke-interface {p1, p0, v0}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->updateOfflineGeoPlayability(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_0
.end method

.method static shouldSendGeoPlayabilityRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 77
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 78
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->isGeoBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
