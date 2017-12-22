.class final Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "DownloadGeoPlayabilityHelper.java"


# instance fields
.field final synthetic val$callbackHandler:Landroid/os/Handler;

.field final synthetic val$geoPlayabilityCallBack:Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$GeoPlayabilityCallBack;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$GeoPlayabilityCallBack;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1;->val$callbackHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1;->val$geoPlayabilityCallBack:Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$GeoPlayabilityCallBack;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflineGeoPlayabilityReceived(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1;->val$callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method
