.class public Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mIsInCancelZone:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private inCancelProgressZone(Landroid/widget/SeekBar;F)Z
    .locals 2

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 1724
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsTablet:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1725
    :goto_0
    neg-float v1, v1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1724
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getHeight()I

    move-result v0

    goto :goto_0

    .line 1725
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private skipSeek(Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1617
    if-nez p1, :cond_0

    .line 1628
    :goto_0
    return v1

    .line 1623
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getCurrentTimelineProgress()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1624
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Back to start position after snap, do NOT seek!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v1

    iput-boolean v0, v1, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineExitOnSnap:Z

    :goto_1
    move v1, v0

    .line 1628
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public handleTouchEvent(Landroid/widget/SeekBar;Landroid/view/MotionEvent;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1687
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 1719
    :cond_0
    :goto_0
    return v0

    .line 1690
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->inCancelProgressZone(Landroid/widget/SeekBar;F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1692
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 1693
    invoke-virtual {p0, p1, v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 1694
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v1

    iput-boolean v0, v1, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineExitOnSnap:Z

    .line 1697
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    .line 1701
    :pswitch_1
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->mIsInCancelZone:Z

    .line 1702
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 1703
    invoke-virtual {p0, p1, p3, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    .line 1707
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->inCancelProgressZone(Landroid/widget/SeekBar;F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1708
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->mIsInCancelZone:Z

    if-nez v1, :cond_0

    .line 1709
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 1710
    invoke-virtual {p0, p1, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->onProgressChangeCanceled(Landroid/widget/SeekBar;I)V

    .line 1711
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->mIsInCancelZone:Z

    goto :goto_0

    .line 1714
    :cond_2
    invoke-virtual {p0, p1, p3, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 1715
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->mIsInCancelZone:Z

    goto :goto_0

    .line 1687
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method onProgressChangeCanceled(Landroid/widget/SeekBar;I)V
    .locals 2

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener$1;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;Landroid/widget/SeekBar;I)V

    invoke-virtual {v0, p2, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->playExtraHandlerAnimation(ILjava/lang/Runnable;)V

    .line 1744
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1571
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1572
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0, p2, v1, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setProgress(IIZ)I

    .line 1573
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->updatePosition(I)V

    .line 1574
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    int-to-long v2, p2

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getBifFrame(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1575
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showBif(Ljava/nio/ByteBuffer;)V

    .line 1580
    :cond_0
    :goto_0
    return-void

    .line 1576
    :cond_1
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0, p2, v1, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setProgress(IIZ)I

    .line 1578
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->updatePosition(I)V

    goto :goto_0
.end method

.method public declared-synchronized onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    .prologue
    .line 1584
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    .line 1585
    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->hideThumb(Z)V

    .line 1586
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->resetTimeline()V

    .line 1587
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1000(Lcom/netflix/mediaclient/ui/player/PlayerFragment;ZZ)V

    .line 1589
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8242;->shouldShowSkipCreditsButton(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1590
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSkipCreditsButton()Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1591
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSkipCreditsButton()Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->hide(Z)V

    .line 1596
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;->setSubtitleVisibility(Z)V

    .line 1598
    const-string/jumbo v2, "PlayerFragment"

    const-string/jumbo v3, "Start seek, get awake clock"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 1601
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopScreenUpdateTask()V

    .line 1603
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v3, v4, v5}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getBifFrame(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->startCurrentTime(Ljava/nio/ByteBuffer;)V

    .line 1606
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->startDragging()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1607
    monitor-exit p0

    return-void

    .line 1584
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1633
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    .line 1635
    const-string/jumbo v2, "PlayerFragment"

    const-string/jumbo v3, "onStopTrackingTouch called"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    instance-of v2, p1, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    if-eqz v2, :cond_1

    .line 1640
    check-cast p1, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    .line 1648
    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->mIsInCancelZone:Z

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->skipSeek(Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v0

    .line 1649
    :goto_0
    if-nez v2, :cond_3

    .line 1650
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getCurrentTimelineProgress()I

    move-result v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;I)I

    move-result v3

    .line 1651
    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setProgress(I)V

    .line 1652
    const-string/jumbo v4, "PlayerFragment"

    const-string/jumbo v5, "Seek!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v4, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doSeek(I)V

    .line 1660
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->finishDragging()V

    .line 1663
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/player/subtitles/SafeSubtitleManager;->setSubtitleVisibility(Z)V

    .line 1665
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->hideThumb(Z)V

    .line 1671
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v3

    if-nez v2, :cond_4

    :goto_2
    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->stopCurrentTime(Z)V

    .line 1674
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->resetTimeline()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1675
    :goto_3
    monitor-exit p0

    return-void

    .line 1642
    :cond_1
    :try_start_1
    const-string/jumbo v0, "PlayerFragment got not a Netflix seekbar!"

    .line 1643
    const-string/jumbo v1, "PlayerFragment"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1633
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v2, v1

    .line 1648
    goto :goto_0

    .line 1655
    :cond_3
    :try_start_2
    const-string/jumbo v3, "PlayerFragment"

    const-string/jumbo v4, "Do not seek!"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setProgress(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1671
    goto :goto_2
.end method
