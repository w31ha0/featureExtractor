.class Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1$1;
.super Ljava/lang/Object;
.source "OfflineManifestManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;

.field final synthetic val$manifests:Lorg/json/JSONObject;

.field final synthetic val$status:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1$1;->this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1$1;->val$status:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1$1;->val$manifests:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1$1;->this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;->this$0:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1$1;->val$status:Lcom/netflix/mediaclient/android/app/Status;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1$1;->this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;->val$playableId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1$1;->this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;->val$playableDirPath:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1$1;->val$manifests:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1$1;->this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;

    iget-object v6, v6, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;->val$oxid:Ljava/lang/String;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1$1;->this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;

    iget-object v7, v7, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;->val$dxid:Ljava/lang/String;

    iget-object v8, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1$1;->this$1:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;

    iget-object v8, v8, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;->val$dc:Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->access$000(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;)V

    .line 107
    return-void
.end method
