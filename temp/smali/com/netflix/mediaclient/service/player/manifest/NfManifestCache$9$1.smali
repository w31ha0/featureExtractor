.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9$1;
.super Ljava/lang/Object;
.source "NfManifestCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;

.field final synthetic val$manifestsJson:Lorg/json/JSONObject;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9$1;->val$manifestsJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9$1;->val$manifestsJson:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->val$finalist:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$1100(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 371
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->val$finalist:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9$1;->val$manifestsJson:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$1200(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
