.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24$1;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;)V
    .locals 0

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayableManifestReady(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 8

    .prologue
    .line 1612
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onPlayableManifestReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$5400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;

    iget-wide v2, v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;->val$movieId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;

    .line 1614
    if-eqz v3, :cond_2

    .line 1615
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;

    iget-object v1, v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;->val$movieId:J

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$5500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;JLjava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1616
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_MANIFEST_DATA_MISSING:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1617
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 1624
    :cond_0
    :goto_0
    return-void

    .line 1618
    :cond_1
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_MANIFEST_NOT_FOUND_IN_CACHE:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;->onStorageAddedOrRemoved()V

    goto :goto_0

    .line 1622
    :cond_2
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "onPlayableManifestReady originalCallback not found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
