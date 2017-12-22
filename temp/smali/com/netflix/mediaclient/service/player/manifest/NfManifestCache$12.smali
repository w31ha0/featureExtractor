.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$12;
.super Ljava/lang/Object;
.source "NfManifestCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

.field final synthetic val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

.field final synthetic val$movieId:J

.field final synthetic val$status:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;JLcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$12;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iput-wide p2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$12;->val$movieId:J

    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$12;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$12;->val$status:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 483
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$12;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$100(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Ljava/util/List;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$12;->val$movieId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-static {}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "callback is aborted for movie %d"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$12;->val$movieId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 485
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$12;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$100(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Ljava/util/List;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$12;->val$movieId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "manifest error for movie %d"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$12;->val$movieId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 489
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$12;->val$cb:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$12;->val$movieId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$12;->val$status:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;->onManifestError(Ljava/lang/Long;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
