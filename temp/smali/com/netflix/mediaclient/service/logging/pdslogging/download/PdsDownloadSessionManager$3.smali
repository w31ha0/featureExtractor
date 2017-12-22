.class Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$3;
.super Ljava/lang/Object;
.source "PdsDownloadSessionManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface$OfflinePdsDataCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

.field final synthetic val$cb:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$ManifestCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$ManifestCallback;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$3;->this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$3;->val$cb:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$ManifestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflinePdsData(Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/OfflinePdsData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 326
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$3;->this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->access$200(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->setManifestFetchInProgress(Z)V

    .line 329
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflinePdsData;->getLinks()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 330
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "got manifestFromCache :%s - setting links and sendng pds resume"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 331
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflinePdsData;->getLinks()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;->setLinks(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    .line 333
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$3;->val$cb:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$ManifestCallback;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$3;->val$cb:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$ManifestCallback;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$ManifestCallback;->onManifestFetched(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    if-eqz p2, :cond_2

    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager$3;->this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflinePdsData;->getOxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflinePdsData;->getDxId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflinePdsData;->getDownloadContext()Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

    move-result-object v4

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflinePdsData;->getLinks()Lorg/json/JSONObject;

    move-result-object v5

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->access$400(Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSession;

    goto :goto_0

    .line 341
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/PdsDownloadSessionManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "error receiving manifest from cache movieId=%s status=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
