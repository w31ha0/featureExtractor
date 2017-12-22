.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 2367
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 2379
    return-void
.end method

.method public declared-synchronized surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 2383
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Surface created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2386
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1702(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z

    .line 2387
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setVisibility(I)V

    .line 2392
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1800(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 2393
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2394
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->setSurface(Landroid/view/Surface;)V

    .line 2397
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2398
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2000(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 2403
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2404
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Do not un-pause player until user exits out of interactive post play."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2418
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 2407
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2412
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1702(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z

    .line 2413
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2414
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "surfaceCreated again, playout already set to null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    :cond_4
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "SurfaceCreated again, no playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1702(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z

    .line 2423
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2424
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Surface destroyed,, background player"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->setSurface(Landroid/view/Surface;)V

    .line 2426
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1902(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z

    .line 2433
    :goto_0
    return-void

    .line 2427
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->canExitPlaybackEndOfPlay()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2428
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "In posplay when surface is destroyed, do not exit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2430
    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Surface destroyed, exit if we are not already in it"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_0
.end method
