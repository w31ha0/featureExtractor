.class Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$11;
.super Ljava/lang/Object;
.source "StreamingPlaybackSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

.field final synthetic val$max:I

.field final synthetic val$min:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;II)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$11;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iput p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$11;->val$min:I

    iput p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$11;->val$max:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$11;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    iget v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$11;->val$min:I

    iget v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$11;->val$max:I

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;->setVideoBitrateRanges(II)V

    .line 515
    return-void
.end method
