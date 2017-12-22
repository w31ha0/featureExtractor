.class Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$10;
.super Ljava/lang/Object;
.source "StreamingPlaybackSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

.field final synthetic val$audioTrackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$10;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$10;->val$audioTrackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 434
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$10;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$1100(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$10;->val$audioTrackId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$10;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$10;->val$audioTrackId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;->setAudioTrack(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$10;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$10;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$1100(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$1200(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$10;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$10;->val$audioTrackId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$1200(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    .line 439
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 440
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$10;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$300(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getNumChannels()I

    move-result v0

    .line 441
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSource;->getNumChannels()I

    move-result v1

    .line 440
    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->audioTrackSwitchStarted(Ljava/lang/String;ILjava/lang/String;I)V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$10;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$10;->val$audioTrackId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$1102(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    :cond_1
    return-void
.end method
