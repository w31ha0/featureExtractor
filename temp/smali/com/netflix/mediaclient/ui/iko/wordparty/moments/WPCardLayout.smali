.class public abstract Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;
.super Landroid/widget/FrameLayout;
.source "WPCardLayout.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WPCardLayout"


# instance fields
.field protected final CAMERA_DISTANCE:I

.field protected audio:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

.field protected cardHeight:I

.field protected cardListener:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;

.field protected cardRotationValue:F

.field protected cardWidth:I

.field private completedAudioPlaybackForReveal:Z

.field private completedVideoPlaybackForReveal:Z

.field protected currentVideoTextureAnimator:Landroid/animation/ObjectAnimator;

.field protected imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

.field protected mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

.field protected padding:I

.field protected quintOutInterpolator:Landroid/view/animation/Interpolator;

.field protected video:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;

.field protected videoMaskDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field protected videoMaskImageView:Landroid/widget/ImageView;

.field protected videoTexture:Landroid/view/TextureView;

.field private videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

.field protected voPlayer:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardVOPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->CAMERA_DISTANCE:I

    .line 91
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->init(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->completedAudioPlaybackForReveal:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->onMediaPlaybackComplete()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->startVideoPlaybackRevealAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->onVideoPlaybackComplete()V

    return-void
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;)Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    return-object p1
.end method

.method private createTextureView()V
    .locals 4

    .prologue
    .line 680
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 681
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 683
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 684
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 686
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 688
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    .line 691
    return-void
.end method

.method private downloadVideo(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/log/IkoLogUtils;->reportIkoVideoLoadStarted(Landroid/content/Context;Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->wordPartyVideoCard:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v2, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$5;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$5;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 669
    return-void
.end method

.method private endCurrentVideoTextureAnimator()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->currentVideoTextureAnimator:Landroid/animation/ObjectAnimator;

    .line 385
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 388
    :cond_0
    return-void
.end method

.method private getCardRotationValue(II)F
    .locals 3

    .prologue
    .line 483
    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_0

    .line 484
    const/4 v0, 0x0

    .line 493
    :goto_0
    return v0

    .line 487
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardRotationValue:F

    .line 489
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    div-int/lit8 v1, p2, 0x2

    if-lt p1, v1, :cond_1

    .line 490
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 493
    :cond_1
    div-int/lit8 v1, p1, 0x2

    if-gtz v1, :cond_2

    const/4 v1, -0x1

    :goto_1
    int-to-float v1, v1

    rem-int/lit8 v2, p1, 0x2

    if-gtz v2, :cond_3

    :goto_2
    mul-float/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    neg-float v0, v0

    goto :goto_2
.end method

.method private getCardSpacingMultiplier(I)F
    .locals 4

    .prologue
    .line 539
    const-wide v0, 0x3ff3333340000000L    # 1.2000000476837158

    rsub-int/lit8 v2, p1, 0x4

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private getCardXPosition(II)F
    .locals 2

    .prologue
    .line 474
    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_1

    .line 475
    const/4 v0, 0x0

    .line 479
    :cond_0
    :goto_0
    return v0

    .line 477
    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->padding:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 479
    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    neg-float v0, v0

    goto :goto_0
.end method

.method private getCardYPosition(II)F
    .locals 2

    .prologue
    .line 464
    const/4 v0, 0x2

    if-gt p2, v0, :cond_1

    .line 465
    const/4 v0, 0x0

    .line 470
    :cond_0
    :goto_0
    return v0

    .line 467
    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 469
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->padding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 470
    div-int/lit8 v1, p1, 0x2

    if-gtz v1, :cond_0

    neg-float v0, v0

    goto :goto_0
.end method

.method private getRecapCardXPosition(II)F
    .locals 2

    .prologue
    .line 508
    if-nez p1, :cond_0

    .line 509
    const/4 v0, 0x0

    .line 512
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRecapExitCardXPosition(II)F

    move-result v0

    goto :goto_0
.end method

.method private getRecapCardYPosition(II)F
    .locals 3

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 499
    if-nez p1, :cond_0

    .line 500
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->padding:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    .line 503
    :goto_0
    return v0

    :cond_0
    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 504
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenAspectRatio(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 503
    goto :goto_0
.end method

.method private getRecapExitCardXPosition(II)F
    .locals 2

    .prologue
    .line 522
    div-int/lit8 v0, p2, 0x2

    .line 524
    sub-int v0, p1, v0

    int-to-float v0, v0

    .line 526
    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_0

    .line 527
    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 531
    mul-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getCardSpacingMultiplier(I)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getRecapExitCardYPosition(II)F
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 95
    const-string/jumbo v0, "WPCardLayout"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->initProperties()V

    .line 99
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->storeViews(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method private onMediaPlaybackComplete()V
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->completedAudioPlaybackForReveal:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->completedVideoPlaybackForReveal:Z

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardListener:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardListener:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;->onCardRevealComplete(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    .line 450
    :cond_0
    return-void
.end method

.method private onVideoPlaybackComplete()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->completedVideoPlaybackForReveal:Z

    .line 441
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->onMediaPlaybackComplete()V

    .line 442
    return-void
.end method

.method private playVO()V
    .locals 3

    .prologue
    .line 414
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$3;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    .line 423
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->voPlayer:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardVOPlayer;

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->voPlayer:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardVOPlayer;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->audio:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardVOPlayer;->playVO(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;)V

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;->onComplete(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private playVideo()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->video:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->video:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->video:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setUpVideo(Ljava/lang/String;)V

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->onVideoPlaybackComplete()V

    goto :goto_0
.end method

.method private removeViewFromParent(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 672
    if-eqz p1, :cond_0

    .line 673
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->removeView(Landroid/view/View;)V

    .line 677
    :cond_0
    return-void
.end method

.method private setUpVideo(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 548
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->removeViewFromParent(Landroid/view/View;)V

    .line 564
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources(Z)V

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoMaskImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->removeViewFromParent(Landroid/view/View;)V

    .line 572
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->createTextureView()V

    .line 574
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->createVideoMask()V

    .line 576
    new-instance v0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->wordPartyVideoCard:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v6, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$4;

    invoke-direct {v6, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$4;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;-><init>(Landroid/view/TextureView;ZIFLcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    .line 614
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->downloadVideo(Ljava/lang/String;)V

    .line 620
    :goto_0
    return-void

    .line 616
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->hideVideo()V

    .line 618
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->onVideoPlaybackComplete()V

    goto :goto_0
.end method

.method private startVideoPlaybackRevealAnimation()V
    .locals 4

    .prologue
    .line 712
    const-string/jumbo v0, "WPCardLayout"

    const-string/jumbo v1, "startVideoPlaybackRevealAnimation"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->SHOWING:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->SHOWN:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    if-ne v0, v1, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->SHOWING:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    .line 720
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->endCurrentVideoTextureAnimator()V

    .line 722
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 724
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 731
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 732
    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$6;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 747
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->currentVideoTextureAnimator:Landroid/animation/ObjectAnimator;

    .line 749
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 723
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public calculateRecapAnimation(II)Landroid/animation/AnimatorSet;
    .locals 4

    .prologue
    .line 209
    if-nez p1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 211
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRecapCardXPosition(II)F

    move-result v1

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRecapCardYPosition(II)F

    move-result v2

    .line 214
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getCardAnimation(FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 216
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 217
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    return-object v0

    .line 209
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public calculateRecapExitAnimation(II)Landroid/animation/AnimatorSet;
    .locals 4

    .prologue
    .line 256
    const/high16 v0, 0x3f000000    # 0.5f

    .line 257
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRecapExitCardXPosition(II)F

    move-result v1

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRecapExitCardYPosition(II)F

    move-result v2

    .line 260
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getCardAnimation(FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 262
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 263
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    return-object v0
.end method

.method public calculateRecapInitAnimation(II)Landroid/animation/AnimatorSet;
    .locals 4

    .prologue
    .line 232
    const/high16 v0, 0x3f000000    # 0.5f

    .line 233
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setScaleX(F)V

    .line 234
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setScaleY(F)V

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRecapExitCardXPosition(II)F

    move-result v1

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRecapExitCardYPosition(II)F

    move-result v2

    .line 238
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getCardAnimation(FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 240
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 241
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    return-object v0
.end method

.method public calculateRevealAnimation(II)Landroid/animation/AnimatorSet;
    .locals 5

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getCardXPosition(II)F

    move-result v1

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getCardYPosition(II)F

    move-result v2

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getCardRotationValue(II)F

    move-result v3

    .line 193
    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    .line 194
    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getCardAnimation(FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0

    .line 194
    :cond_1
    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0
.end method

.method protected abstract createVideoMask()V
.end method

.method public flip()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setPivotX(F)V

    .line 133
    sget-object v1, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    new-array v2, v6, [F

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    .line 134
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    aput v0, v2, v5

    .line 133
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 135
    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v2, v6, [F

    const/high16 v3, -0x40800000    # -1.0f

    .line 136
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRotation()F

    move-result v4

    mul-float/2addr v3, v4

    aput v3, v2, v5

    .line 135
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 137
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v3, Lcom/netflix/mediaclient/ui/iko/wordparty/WPConstants;->CARD_FLIP_ALPHA_VALUE_LIST:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 140
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$1;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$1;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 153
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 154
    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 155
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 157
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$2;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardListener:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardListener:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;->onCardClickStart(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    .line 175
    :cond_0
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 176
    return-void

    .line 134
    :cond_1
    const/high16 v0, -0x3ccc0000    # -180.0f

    goto :goto_0
.end method

.method public getCardAnimation(FFFF)Landroid/animation/AnimatorSet;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 280
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v8, [F

    aput p1, v1, v7

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 282
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v8, [F

    aput p2, v2, v7

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 284
    sget-object v2, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v3, v8, [F

    aput p3, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 286
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v8, [F

    aput p4, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 287
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v8, [F

    aput p4, v5, v7

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 288
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 289
    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v7

    aput-object v1, v6, v8

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 291
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 292
    return-object v5
.end method

.method public getWiggleAnimation(I)Landroid/animation/ObjectAnimator;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 302
    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRotation()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getRotation()F

    move-result v2

    aput v2, v1, v5

    .line 302
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 304
    rem-int/lit8 v1, p1, 0x2

    mul-int/lit8 v1, v1, 0x64

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 305
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 306
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 307
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 308
    return-object v0
.end method

.method protected final hideVideo()V
    .locals 4

    .prologue
    .line 754
    const-string/jumbo v0, "WPCardLayout"

    const-string/jumbo v1, "Hiding video"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->HIDING:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->HIDDEN:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    if-ne v0, v1, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 761
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->HIDING:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    .line 763
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->endCurrentVideoTextureAnimator()V

    .line 765
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 766
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 773
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 774
    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$7;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$7;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 795
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->currentVideoTextureAnimator:Landroid/animation/ObjectAnimator;

    .line 797
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 799
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->onHideVideo()V

    goto :goto_0

    .line 765
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected initProperties()V
    .locals 2

    .prologue
    .line 103
    const/high16 v0, 0x45fa0000    # 8000.0f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setCameraDistance(F)V

    .line 105
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardRotationValue:F

    .line 106
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a020f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->padding:I

    .line 109
    invoke-static {}, Lcom/netflix/mediaclient/ui/iko/wordparty/WPConstants;->getQuintOutInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    .line 111
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->HIDDEN:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    .line 112
    return-void
.end method

.method protected abstract onHideVideo()V
.end method

.method protected abstract onVideoPlaybackStarted()V
.end method

.method public releaseResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    const-string/jumbo v0, "WPCardLayout"

    const-string/jumbo v1, "releaseResources"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->releaseResources()V

    .line 372
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources()V

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->endCurrentVideoTextureAnimator()V

    .line 378
    iput-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->currentVideoTextureAnimator:Landroid/animation/ObjectAnimator;

    .line 379
    iput-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->video:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;

    .line 380
    iput-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->audio:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    .line 381
    return-void
.end method

.method public reset(Z)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->reset(Z)V

    .line 338
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->hideVideo()V

    .line 340
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setScaleX(F)V

    .line 341
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setScaleY(F)V

    .line 342
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setRotationY(F)V

    .line 343
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->setRotation(F)V

    .line 344
    return-void
.end method

.method public revealCard()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 405
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->completedAudioPlaybackForReveal:Z

    .line 406
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->completedVideoPlaybackForReveal:Z

    .line 408
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->playVideo()V

    .line 409
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->playVO()V

    .line 410
    return-void
.end method

.method public setAudio(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->audio:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    .line 353
    return-void
.end method

.method public setCardListener(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardListener:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/CardListener;

    .line 318
    return-void
.end method

.method public setDrawables(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->setDrawables(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 124
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoMaskDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 125
    return-void
.end method

.method public setVOPlayer(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardVOPlayer;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->voPlayer:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardVOPlayer;

    .line 327
    return-void
.end method

.method public setVideo(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->video:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;

    .line 362
    return-void
.end method

.method protected showVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 695
    const-string/jumbo v0, "WPCardLayout"

    const-string/jumbo v1, "Showing video"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTexture:Landroid/view/TextureView;

    .line 699
    if-eqz v0, :cond_0

    .line 700
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 701
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoMaskImageView:Landroid/widget/ImageView;

    .line 706
    if-eqz v0, :cond_1

    .line 707
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 709
    :cond_1
    return-void
.end method

.method protected abstract storeViews(Landroid/content/Context;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPCardLayout{, currentVideoTextureAnimator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->currentVideoTextureAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", audio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->audio:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->video:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPVideo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cardWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cardHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->cardHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", completedAudioPlaybackForReveal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->completedAudioPlaybackForReveal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", completedVideoPlaybackForReveal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->completedVideoPlaybackForReveal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imageView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", videoTextureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->videoTextureState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
