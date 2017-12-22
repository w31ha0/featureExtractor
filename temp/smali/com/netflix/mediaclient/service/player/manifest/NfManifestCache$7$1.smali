.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;
.super Ljava/lang/Object;
.source "NfManifestCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

.field final synthetic val$manifestJson:Lorg/json/JSONObject;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->val$manifestJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 291
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->val$manifestJson:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 292
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "fetchManifests failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$manifestKey:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$800(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 306
    :goto_0
    return-void

    .line 296
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$manifestKey:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->val$manifestJson:Lorg/json/JSONObject;

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$900(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;Lorg/json/JSONObject;)V

    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$200(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$manifestKey:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 301
    if-eqz v0, :cond_2

    .line 302
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$manifestKey:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    invoke-static {v1, v2, v0, v3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$300(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$manifestKey:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7$1;->this$1:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$7;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    new-instance v3, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->MANIFEST_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v3, v4}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$800(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
