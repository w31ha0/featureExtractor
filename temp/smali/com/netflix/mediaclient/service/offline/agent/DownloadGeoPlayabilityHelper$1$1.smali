.class Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1$1;
.super Ljava/lang/Object;
.source "DownloadGeoPlayabilityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1;

.field final synthetic val$geoPlayabilityResult:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1$1;->val$geoPlayabilityResult:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1;->val$geoPlayabilityCallBack:Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$GeoPlayabilityCallBack;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1$1;->val$geoPlayabilityResult:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$GeoPlayabilityCallBack;->onGeoPlayabilityResponse(Ljava/util/Map;)V

    .line 56
    return-void
.end method
