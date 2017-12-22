.class Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2$1;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;
.source "OfflineManifestManagerImpl.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2$1;->this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onManifestsFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2$1;->this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;->this$0:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->access$100(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2$1$1;-><init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2$1;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method
