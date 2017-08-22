.class public final Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
.super Landroid/widget/FrameLayout;
.source "SimpleExoPlayerView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;
    }
.end annotation


# instance fields
.field private final componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

.field private final controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

.field private controllerShowTimeoutMs:I

.field private final layout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private final shutterView:Landroid/view/View;

.field private final subtitleLayout:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field private final surfaceView:Landroid/view/View;

.field private useController:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    .line 67
    const/4 v6, 0x0

    .line 68
    .local v6, "useTextureView":Z
    const/4 v4, 0x0

    .line 69
    .local v4, "resizeMode":I
    const/16 v5, 0x1388

    .line 70
    .local v5, "rewindMs":I
    const/16 v2, 0x3a98

    .line 71
    .local v2, "fastForwardMs":I
    const/16 v1, 0x1388

    .line 72
    .local v1, "controllerShowTimeoutMs":I
    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget-object v9, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView:[I

    invoke-virtual {v8, p2, v9, v10, v10}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v8, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView_use_controller:I

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    .line 77
    sget v8, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView_use_texture_view:I

    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 79
    sget v8, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView_resize_mode:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 81
    sget v8, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView_rewind_increment:I

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 82
    sget v8, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView_fastforward_increment:I

    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 84
    sget v8, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView_show_timeout:I

    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getInt(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/google/android/exoplayer2/R$layout;->exo_simple_player_view:I

    invoke-virtual {v8, v9, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    new-instance v8, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$1;)V

    iput-object v8, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    .line 93
    sget v8, Lcom/google/android/exoplayer2/R$id;->video_frame:I

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v8, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->layout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 94
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->layout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v8, v4}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 95
    sget v8, Lcom/google/android/exoplayer2/R$id;->shutter:I

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shutterView:Landroid/view/View;

    .line 96
    sget v8, Lcom/google/android/exoplayer2/R$id;->subtitles:I

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object v8, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleLayout:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 97
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleLayout:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultStyle()V

    .line 98
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleLayout:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultTextSize()V

    .line 100
    sget v8, Lcom/google/android/exoplayer2/R$id;->control:I

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    iput-object v8, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .line 101
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    .line 102
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setRewindIncrementMs(I)V

    .line 103
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setFastForwardIncrementMs(I)V

    .line 104
    iput v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerShowTimeoutMs:I

    .line 106
    if-eqz v6, :cond_1

    new-instance v7, Landroid/view/TextureView;

    invoke-direct {v7, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 107
    .local v7, "view":Landroid/view/View;
    :goto_0
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 110
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iput-object v7, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    .line 112
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->layout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;I)V

    .line 113
    return-void

    .line 87
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "view":Landroid/view/View;
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v8

    .line 106
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    new-instance v7, Landroid/view/SurfaceView;

    invoke-direct {v7, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleLayout:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->layout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shutterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->maybeShowController(Z)V

    return-void
.end method

.method private maybeShowController(Z)V
    .locals 6
    .param p1, "isForced"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 284
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v5, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    .line 288
    .local v0, "playbackState":I
    if-eq v0, v4, :cond_2

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 289
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    move v1, v4

    .line 290
    .local v1, "showIndefinitely":Z
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getShowTimeoutMs()I

    move-result v5

    if-gtz v5, :cond_5

    move v2, v4

    .line 291
    .local v2, "wasShowingIndefinitely":Z
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v1, :cond_6

    :goto_3
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setShowTimeoutMs(I)V

    .line 292
    if-nez p1, :cond_3

    if-nez v1, :cond_3

    if-eqz v2, :cond_0

    .line 293
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->show()V

    goto :goto_0

    .end local v1    # "showIndefinitely":Z
    .end local v2    # "wasShowingIndefinitely":Z
    :cond_4
    move v1, v3

    .line 289
    goto :goto_1

    .restart local v1    # "showIndefinitely":Z
    :cond_5
    move v2, v3

    .line 290
    goto :goto_2

    .line 291
    .restart local v2    # "wasShowingIndefinitely":Z
    :cond_6
    iget v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerShowTimeoutMs:I

    goto :goto_3
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerShowTimeoutMs:I

    return v0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object v0
.end method

.method public getUseController()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 258
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    :cond_0
    const/4 v0, 0x0

    .line 266
    :goto_0
    return v0

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    goto :goto_0

    .line 264
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->maybeShowController(Z)V

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 271
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v1, :cond_1

    .line 272
    :cond_0
    const/4 v0, 0x0

    .line 275
    :goto_0
    return v0

    .line 274
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->maybeShowController(Z)V

    goto :goto_0
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 0
    .param p1, "controllerShowTimeoutMs"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerShowTimeoutMs:I

    .line 217
    return-void
.end method

.method public setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setVisibilityListener(Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;)V

    .line 226
    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 1
    .param p1, "fastForwardMs"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setFastForwardIncrementMs(I)V

    .line 244
    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 4
    .param p1, "player"    # Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-ne v0, p1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setTextOutput(Lcom/google/android/exoplayer2/text/TextRenderer$Output;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoListener(Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 139
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 140
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setPlayer(Lcom/google/android/exoplayer2/ExoPlayer;)V

    .line 143
    :cond_2
    if-eqz p1, :cond_5

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoTextureView(Landroid/view/TextureView;)V

    .line 149
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoListener(Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setTextOutput(Lcom/google/android/exoplayer2/text/TextRenderer$Output;)V

    .line 152
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->maybeShowController(Z)V

    goto :goto_0

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_1

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shutterView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    goto :goto_0
.end method

.method public setResizeMode(I)V
    .locals 1
    .param p1, "resizeMode"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->layout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 168
    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 1
    .param p1, "rewindMs"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setRewindIncrementMs(I)V

    .line 235
    return-void
.end method

.method public setUseController(Z)V
    .locals 2
    .param p1, "useController"    # Z

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-ne v0, p1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 187
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    .line 188
    if-eqz p1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setPlayer(Lcom/google/android/exoplayer2/ExoPlayer;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setPlayer(Lcom/google/android/exoplayer2/ExoPlayer;)V

    goto :goto_0
.end method
