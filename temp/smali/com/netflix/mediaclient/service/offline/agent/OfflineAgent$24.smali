.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;

.field final synthetic val$movieId:J


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;)V
    .locals 0

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iput-wide p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;->val$movieId:J

    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;->val$callback:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$5400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;->val$movieId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;->val$callback:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;->val$movieId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$1100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->getOfflineViewableByPlayableId(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    move-result-object v0

    .line 1608
    if-eqz v0, :cond_0

    .line 1609
    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->requestManifestForPlayback(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;)V

    .line 1629
    :goto_0
    return-void

    .line 1627
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;->val$callback:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$24;->val$movieId:J

    const-string/jumbo v6, "-1"

    new-instance v7, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_OFFLINE_PLAYABLE_NOT_FOUND:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v7, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$5500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;JLjava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
