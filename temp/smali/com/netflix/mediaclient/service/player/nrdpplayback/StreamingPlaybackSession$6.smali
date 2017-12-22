.class Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$6;
.super Ljava/lang/Object;
.source "StreamingPlaybackSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

.field final synthetic val$fuzz:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;II)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$6;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iput p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$6;->val$offset:I

    iput p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$6;->val$fuzz:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$6;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    iget v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$6;->val$offset:I

    iget v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$6;->val$fuzz:I

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;->seekWithFuzzRange(II)V

    .line 324
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$6;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$300(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;->SEEK:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->userStop(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;)V

    .line 325
    return-void
.end method
