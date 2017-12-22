.class Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$3;
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
    .line 270
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$3;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$3;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;->unpause()V

    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$3;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$300(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->userUnPause()V

    .line 276
    return-void
.end method
