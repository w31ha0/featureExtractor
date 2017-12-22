.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;
.source "NfManifestCache.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

.field final synthetic val$finalist:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->val$finalist:Ljava/util/List;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onManifestsFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$1000(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9$1;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$9;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    return-void
.end method
