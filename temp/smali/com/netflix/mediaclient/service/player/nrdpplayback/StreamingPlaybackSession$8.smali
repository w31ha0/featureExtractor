.class Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$8;
.super Ljava/lang/Object;
.source "StreamingPlaybackSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

.field final synthetic val$sf:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$8;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$8;->val$sf:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 378
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$8;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$8;->val$sf:Landroid/view/Surface;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$502(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;Landroid/view/Surface;)Landroid/view/Surface;

    .line 379
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$8;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    if-eqz v0, :cond_0

    .line 380
    invoke-static {}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "update surface %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$8;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->access$100(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 381
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$8;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$8;->val$sf:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;->setSurface(Landroid/view/Surface;)V

    .line 383
    :cond_0
    return-void
.end method
