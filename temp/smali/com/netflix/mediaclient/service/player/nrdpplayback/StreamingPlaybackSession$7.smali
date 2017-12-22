.class Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$7;
.super Ljava/lang/Object;
.source "StreamingPlaybackSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$7;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$7;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$600(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-static {}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "already in process of closing... "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$7;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$602(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Z)Z

    .line 340
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$7;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$802(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Z)Z

    .line 342
    invoke-static {}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "close()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$7;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$900(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$7;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->getCurrentPosition()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsStreamingPlaySession;->stop(J)V

    .line 344
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$7;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$300(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;->STOPPED:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->userStop(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;)V

    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$7;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$1000(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    move-result-object v0

    if-nez v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$7;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$7;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$100(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;->abort(Ljava/lang/Long;)V

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$7;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;->close()V

    .line 356
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$7;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;->isPlayerReadyOrClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$7;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->handlePlayerClosed(Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;)V

    goto :goto_0
.end method
