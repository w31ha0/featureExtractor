.class Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;
.super Ljava/lang/Object;
.source "OfflinePlaybackSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 530
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->getCurrentPosition()J

    move-result-wide v0

    .line 531
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$400(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 532
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$400(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 533
    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$500(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;

    move-result-object v4

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->updatePlayTime(I)V

    .line 536
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v2, v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$402(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;J)J

    .line 537
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$300(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;

    move-result-object v2

    long-to-int v3, v0

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/service/player/IPlaybackSession$PlaybackSessionCallback;->handleUpdatePts(I)V

    .line 538
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    long-to-int v3, v0

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$600(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;I)V

    .line 539
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$800(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$700(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5, v0, v1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->notifyPlayProgress(JJ)V

    .line 543
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$1100(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$900(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$1000(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;->notifyPlayProgress(Landroid/content/Context;JLorg/json/JSONObject;)V

    .line 544
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$2;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;->access$1200(Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 547
    :cond_1
    return-void
.end method
