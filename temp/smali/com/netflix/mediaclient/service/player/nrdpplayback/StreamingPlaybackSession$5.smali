.class Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$5;
.super Ljava/lang/Object;
.source "StreamingPlaybackSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

.field final synthetic val$forceRebuffer:Z

.field final synthetic val$msec:J


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;JZ)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$5;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iput-wide p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$5;->val$msec:J

    iput-boolean p4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$5;->val$forceRebuffer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$5;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$5;->val$msec:J

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$5;->val$forceRebuffer:Z

    invoke-interface {v0, v2, v3, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;->seek(JZ)V

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$5;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$300(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;->SEEK:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->userStop(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;)V

    .line 307
    return-void
.end method
