.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;
.super Ljava/lang/Object;
.source "NfManifestCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

.field final synthetic val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

.field final synthetic val$manifestKey:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

.field final synthetic val$movieId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->val$manifestKey:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->val$movieId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$200(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->val$manifestKey:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 191
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getRemainLife()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 192
    invoke-static {}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ignoring expired manifest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x0

    .line 195
    :cond_0
    if-eqz v0, :cond_1

    .line 197
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->val$manifestKey:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    invoke-static {v1, v2, v0, v3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$300(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$400(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)V

    .line 199
    invoke-static {}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "manifest available for %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->val$movieId:Ljava/lang/Long;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->val$manifestKey:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$2;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$500(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$ManifestKey;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    goto :goto_0
.end method
