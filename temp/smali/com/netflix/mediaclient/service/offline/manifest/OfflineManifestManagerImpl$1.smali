.class Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;
.source "OfflineManifestManagerImpl.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;

.field final synthetic val$dc:Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

.field final synthetic val$dxid:Ljava/lang/String;

.field final synthetic val$oxid:Ljava/lang/String;

.field final synthetic val$playableDirPath:Ljava/lang/String;

.field final synthetic val$playableId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;->this$0:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;->val$playableId:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;->val$playableDirPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;->val$oxid:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;->val$dxid:Ljava/lang/String;

    iput-object p6, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;->val$dc:Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onManifestsFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;->this$0:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->access$100(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1$1;-><init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method
