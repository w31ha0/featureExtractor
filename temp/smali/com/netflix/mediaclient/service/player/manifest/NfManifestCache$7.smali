.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;
.source "NfManifestCache.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

.field final synthetic val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

.field final synthetic val$manifestKey:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

.field final synthetic val$movieId:J


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;JLcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iput-wide p2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$movieId:J

    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$manifestKey:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onManifestsFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$1000(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;-><init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    return-void
.end method
