.class public Lcom/netflix/mediaclient/ui/player/CurrentTimePhone;
.super Lcom/netflix/mediaclient/ui/player/CurrentTime;
.source "CurrentTimePhone.java"


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/CurrentTime;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 30
    return-void
.end method


# virtual methods
.method public declared-synchronized start(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimePhone;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->startBif(Ljava/nio/ByteBuffer;)V

    .line 40
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Movie current time from startCurrentTime"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop(Z)V
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CurrentTimePhone;->restorePlaybackIfSnapOnExit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateTimeMargins()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimePhone;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimePhone;->currentTime:Landroid/view/View;

    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimePhone;->currentTime:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimePhone;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimePhone;->currentTime:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTimeXAndUpdateHandler(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 64
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimePhone;->currentTime:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "moveCurrentTimeWithTimeline set layout parameter!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
