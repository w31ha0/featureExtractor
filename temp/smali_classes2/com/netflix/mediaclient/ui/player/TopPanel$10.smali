.class Lcom/netflix/mediaclient/ui/player/TopPanel$10;
.super Ljava/lang/Object;
.source "TopPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

.field final synthetic val$controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field final synthetic val$wasPlaying:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/TopPanel;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$wasPlaying:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 433
    const-string/jumbo v0, "screen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mdx target clicked: item with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", on position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    .line 436
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->setTarget(I)Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    .line 438
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->this$0:Lcom/netflix/mediaclient/ui/player/TopPanel;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getSelectedTarget()Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v0

    .line 439
    if-nez v0, :cond_1

    .line 440
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Target is NULL, this should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$wasPlaying:Z

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Target is local, same as cancel. Do nothing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$wasPlaying:Z

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    goto :goto_0

    .line 454
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/MdxUtils;->isMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 455
    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "Remote target is available, start MDX playback, use local bookmark!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->setCurrentTarget(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPositionInMs()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 459
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->setPlaybackBookmark(I)V

    .line 461
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startMdxPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    .line 462
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->transferPlaybackFromLocal()V

    .line 464
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    goto/16 :goto_0

    .line 466
    :cond_3
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Remote target is NOT available anymore, continue local plaback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$wasPlaying:Z

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel$10;->val$controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    goto/16 :goto_0
.end method
