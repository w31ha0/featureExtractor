.class public abstract Lcom/netflix/mediaclient/ui/player/CurrentTime;
.super Lcom/netflix/mediaclient/ui/player/PlayerSection;
.source "CurrentTime.java"


# static fields
.field static final CURRENT_TIME_BOTTOM_MARGIN_REGULAR_DP:I = 0x0

.field static final CURRENT_TIME_BOTTOM_MARGIN_REGULAR_PHONE_DP:I = 0x0

.field static final CURRENT_TIME_BOTTOM_MARGIN_TABLET_PRESSED_DP:I = 0x28

.field protected static final TAG:Ljava/lang/String; = "screen"


# instance fields
.field protected currentTime:Landroid/view/View;

.field protected currentTimeLabel:Landroid/widget/TextView;

.field protected mBifDownloaded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerSection;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->mBifDownloaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->currentTime:Landroid/view/View;

    .line 69
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->currentTimeLabel:Landroid/widget/TextView;

    .line 70
    return-void
.end method

.method static newInstance(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/CurrentTime;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->shouldShowScopedBif(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 143
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/player/CurrentTimePhone;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/CurrentTimePhone;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    goto :goto_0
.end method


# virtual methods
.method public changeActionState(Z)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 74
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Hide time"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->currentTime:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 76
    return-void
.end method

.method public isBifDownloaded()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->mBifDownloaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected restorePlaybackIfSnapOnExit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getState()Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->getTimelineExitOnSnap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->restorePlaybackAfterSnap()V

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getState()Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setDraggingInProgress(Z)V

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->stopBif()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getState()Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setTimelineExitOnSnap(Z)V

    .line 125
    return-void
.end method

.method public setBifDownloaded(Z)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->mBifDownloaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 163
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 80
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Show time"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->currentTime:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 82
    return-void
.end method

.method public abstract start(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract stop(Z)V
.end method

.method public updateCurrentTime()V
    .locals 4

    .prologue
    .line 128
    const-string/jumbo v0, "screen"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->currentTimeLabel:Landroid/widget/TextView;

    const-string/jumbo v2, "currentTimeLabel"

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/CurrentTime;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTimeStringForMs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->updateText(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->updateTimeMargins()V

    .line 130
    return-void
.end method

.method public abstract updateTimeMargins()V
.end method
