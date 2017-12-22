.class Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;
.super Ljava/lang/Object;
.source "OfflineManifestManagerImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;

.field final synthetic val$downloadVideoQuality:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

.field final synthetic val$dxid:Ljava/lang/String;

.field final synthetic val$offlineManifestCallback:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;

.field final synthetic val$oxid:Ljava/lang/String;

.field final synthetic val$playableDirPath:Ljava/lang/String;

.field final synthetic val$playableId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->this$0:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->val$playableId:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->val$offlineManifestCallback:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->val$oxid:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->val$dxid:Ljava/lang/String;

    iput-object p6, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->val$downloadVideoQuality:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    iput-object p7, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->val$playableDirPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflineManifestResponse(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .prologue
    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->this$0:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->access$200(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->val$playableId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->this$0:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->access$300(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->val$playableId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->val$offlineManifestCallback:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->this$0:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->access$400(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->val$playableId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->val$oxid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->val$dxid:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->val$downloadVideoQuality:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    new-instance v6, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2$1;

    invoke-direct {v6, p0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2$1;-><init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;)V

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->refreshOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 157
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->this$0:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->access$100(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2$2;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2$2;-><init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
