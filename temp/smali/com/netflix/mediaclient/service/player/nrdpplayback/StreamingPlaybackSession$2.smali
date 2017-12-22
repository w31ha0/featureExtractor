.class Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;
.super Ljava/lang/Object;
.source "StreamingPlaybackSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

.field final synthetic val$nrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;->val$nrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$100(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;->getManifestAsync(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V

    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getWorkHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;->val$nrdpPlayer:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpSessionPlayer;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlayerListener;Landroid/os/Handler;Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;)V

    iput-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$200(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Lorg/json/JSONObject;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;->setStreamingConfig(Lorg/json/JSONObject;)V

    .line 192
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$300(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->setStreamingConfig(Lorg/json/JSONObject;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;->isPlayerReadyOrClosed()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$402(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Z)Z

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$500(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;->setSurface(Landroid/view/Surface;)V

    .line 196
    return-void
.end method
