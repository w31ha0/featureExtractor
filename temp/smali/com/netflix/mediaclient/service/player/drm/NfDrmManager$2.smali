.class Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;
.super Ljava/lang/Object;
.source "NfDrmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

.field final synthetic val$prefetchHints:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;->val$prefetchHints:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$000(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "provision pending, skip prefetch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;->val$prefetchHints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;

    .line 263
    iget-wide v2, v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mPlayableId:J

    .line 264
    iget-object v4, v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mPrefetchSource:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->getPriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 265
    iget-object v5, v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 266
    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v6}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$200(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 267
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v5, "movieId=%d priority=%d already cached"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v9

    aput-object v4, v6, v10

    invoke-static {v0, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 269
    :cond_2
    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mPrefetchSource:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->skipOnLowDrmResource()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$700(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v5, "movieId=%d priority=%d skip"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v9

    aput-object v4, v6, v10

    invoke-static {v0, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 273
    :cond_3
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v6, "movieId=%d priority=%d request manifest"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v4, v7, v10

    invoke-static {v0, v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$800(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lcom/netflix/mediaclient/util/Triple;->create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/netflix/mediaclient/util/Triple;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->access$900(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;->this$0:Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;->getManifestAsync(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    goto/16 :goto_0
.end method
