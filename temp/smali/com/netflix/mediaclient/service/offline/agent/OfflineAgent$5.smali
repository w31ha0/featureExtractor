.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$5;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$GeoPlayabilityCallBack;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$5;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeoPlayabilityResponse(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$5;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/util/Map;)V

    .line 338
    return-void
.end method
