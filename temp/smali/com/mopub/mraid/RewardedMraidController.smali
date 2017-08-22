.class public Lcom/mopub/mraid/RewardedMraidController;
.super Lcom/mopub/mraid/MraidController;
.source "RewardedMraidController.java"


# static fields
.field static final DEFAULT_PLAYABLE_DURATION_FOR_CLOSE_BUTTON_MILLIS:I = 0x7530
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_PLAYABLE_DURATION_FOR_CLOSE_BUTTON_SECONDS:I = 0x1e

.field public static final DEFAULT_PLAYABLE_SHOULD_REWARD_ON_CLICK:Z = false

.field public static final MILLIS_IN_SECOND:I = 0x3e8

.field static final PLAYABLE_COUNTDOWN_UPDATE_INTERVAL_MILLIS:J = 0xfaL
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mBroadcastIdentifier:J

.field private mCloseableLayout:Lcom/mopub/common/CloseableLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCountdownRunnable:Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentElapsedTimeMillis:I

.field private mIsCalibrationDone:Z

.field private mIsRewarded:Z

.field private mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mShowCloseButtonDelay:I

.field private mShowCloseButtonEventFired:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;IJ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adReport"    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "placementType"    # Lcom/mopub/mraid/PlacementType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "rewardedDurationInSeconds"    # I
    .param p5, "broadcastIdentifier"    # J
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v1, 0x7530

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V

    .line 63
    mul-int/lit16 v0, p4, 0x3e8

    .line 64
    .local v0, "rewardedDurationInMillis":I
    if-ltz v0, :cond_0

    if-le v0, v1, :cond_1

    .line 66
    :cond_0
    iput v1, p0, Lcom/mopub/mraid/RewardedMraidController;->mShowCloseButtonDelay:I

    .line 70
    :goto_0
    iput-wide p5, p0, Lcom/mopub/mraid/RewardedMraidController;->mBroadcastIdentifier:J

    .line 71
    return-void

    .line 68
    :cond_1
    iput v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mShowCloseButtonDelay:I

    goto :goto_0
.end method

.method private addRadialCountdownWidget(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "initialVisibility"    # I

    .prologue
    .line 148
    new-instance v4, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    invoke-direct {v4, p1}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mopub/mraid/RewardedMraidController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    .line 149
    iget-object v4, p0, Lcom/mopub/mraid/RewardedMraidController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    invoke-virtual {v4, p2}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->setVisibility(I)V

    .line 151
    iget-object v4, p0, Lcom/mopub/mraid/RewardedMraidController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    .line 152
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 153
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v3, v4, v5

    .line 154
    .local v3, "widgetWidth":I
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v1, v4, v5

    .line 156
    .local v1, "widgetHeight":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v2, "widgetLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x35

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 159
    iget-object v4, p0, Lcom/mopub/mraid/RewardedMraidController;->mCloseableLayout:Lcom/mopub/common/CloseableLayout;

    iget-object v5, p0, Lcom/mopub/mraid/RewardedMraidController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    invoke-virtual {v4, v5, v2}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    return-void
.end method

.method private startRunnables()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mCountdownRunnable:Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;->startRepeating(J)V

    .line 141
    return-void
.end method

.method private stopRunnables()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mCountdownRunnable:Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;->stop()V

    .line 145
    return-void
.end method


# virtual methods
.method public backButtonEnabled()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method public create(Landroid/content/Context;Lcom/mopub/common/CloseableLayout;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "closeableLayout"    # Lcom/mopub/common/CloseableLayout;

    .prologue
    const/4 v2, 0x0

    .line 74
    iput-object p2, p0, Lcom/mopub/mraid/RewardedMraidController;->mCloseableLayout:Lcom/mopub/common/CloseableLayout;

    .line 75
    iget-object v1, p0, Lcom/mopub/mraid/RewardedMraidController;->mCloseableLayout:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v2}, Lcom/mopub/common/CloseableLayout;->setCloseAlwaysInteractable(Z)V

    .line 76
    iget-object v1, p0, Lcom/mopub/mraid/RewardedMraidController;->mCloseableLayout:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v2}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 78
    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lcom/mopub/mraid/RewardedMraidController;->addRadialCountdownWidget(Landroid/content/Context;I)V

    .line 79
    iget-object v1, p0, Lcom/mopub/mraid/RewardedMraidController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    iget v2, p0, Lcom/mopub/mraid/RewardedMraidController;->mShowCloseButtonDelay:I

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->calibrateAndMakeVisible(I)V

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mopub/mraid/RewardedMraidController;->mIsCalibrationDone:Z

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 83
    .local v0, "mainHandler":Landroid/os/Handler;
    new-instance v1, Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;

    invoke-direct {v1, p0, v0}, Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;-><init>(Lcom/mopub/mraid/RewardedMraidController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mopub/mraid/RewardedMraidController;->mCountdownRunnable:Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;

    .line 84
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/mopub/mraid/RewardedMraidController;->stopRunnables()V

    .line 98
    return-void
.end method

.method public getCountdownRunnable()Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mCountdownRunnable:Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;

    return-object v0
.end method

.method public getRadialCountdownWidget()Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    return-object v0
.end method

.method public getShowCloseButtonDelay()I
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    iget v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mShowCloseButtonDelay:I

    return v0
.end method

.method protected handleClose()V
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mShowCloseButtonEventFired:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-super {p0}, Lcom/mopub/mraid/MraidController;->handleClose()V

    .line 109
    :cond_0
    return-void
.end method

.method protected handleCustomClose(Z)V
    .locals 0
    .param p1, "useCustomClose"    # Z

    .prologue
    .line 102
    return-void
.end method

.method public isCalibrationDone()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mIsCalibrationDone:Z

    return v0
.end method

.method public isPlayableCloseable()Z
    .locals 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mShowCloseButtonEventFired:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mCurrentElapsedTimeMillis:I

    iget v1, p0, Lcom/mopub/mraid/RewardedMraidController;->mShowCloseButtonDelay:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRewarded()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mIsRewarded:Z

    return v0
.end method

.method public isShowCloseButtonEventFired()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mopub/mraid/RewardedMraidController;->stopRunnables()V

    .line 88
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/mopub/mraid/RewardedMraidController;->startRunnables()V

    .line 93
    return-void
.end method

.method public showPlayableCloseButton()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 120
    iput-boolean v4, p0, Lcom/mopub/mraid/RewardedMraidController;->mShowCloseButtonEventFired:Z

    .line 122
    iget-object v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mCloseableLayout:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0, v4}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 125
    iget-boolean v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mIsRewarded:Z

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/mopub/mraid/RewardedMraidController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/mopub/mraid/RewardedMraidController;->mBroadcastIdentifier:J

    const-string v1, "com.mopub.action.rewardedplayable.complete"

    invoke-static {v0, v2, v3, v1}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 127
    iput-boolean v4, p0, Lcom/mopub/mraid/RewardedMraidController;->mIsRewarded:Z

    .line 129
    :cond_0
    return-void
.end method

.method public updateCountdown(I)V
    .locals 3
    .param p1, "currentElapsedTimeMillis"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/mopub/mraid/RewardedMraidController;->mCurrentElapsedTimeMillis:I

    .line 133
    iget-boolean v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mIsCalibrationDone:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/mopub/mraid/RewardedMraidController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    iget v1, p0, Lcom/mopub/mraid/RewardedMraidController;->mShowCloseButtonDelay:I

    iget v2, p0, Lcom/mopub/mraid/RewardedMraidController;->mCurrentElapsedTimeMillis:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->updateCountdownProgress(II)V

    .line 137
    :cond_0
    return-void
.end method
