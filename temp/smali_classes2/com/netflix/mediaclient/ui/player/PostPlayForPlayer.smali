.class public final Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;
.super Lcom/netflix/mediaclient/ui/player/PostPlay;
.source "PostPlayForPlayer.java"


# instance fields
.field private experienceTitle:Landroid/widget/TextView;

.field private final mImageLoaderListener:Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;

.field private final mPanAnimationInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mSelected:I

.field private final mVideoFullScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVideoWindow:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplay;

.field postPlayBackgrounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/player/PostPlayBackground;",
            ">;"
        }
    .end annotation
.end field

.field postPlayItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/player/PostPlayItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 58
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mSelected:I

    .line 42
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPanAnimationInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mVideoFullScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->postPlayItems:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->postPlayBackgrounds:Ljava/util/List;

    .line 303
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$1;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mImageLoaderListener:Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;

    .line 59
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->init()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mVideoFullScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->executeTransitionIn()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->scrollToItem(I)V

    return-void
.end method

.method private executeTransitionIn()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mVideoWindow:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplay;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplay;->canVideoVindowResize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->setBackgroundImageVisible(Z)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mVideoWindow:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplay;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplay;->animateIn()V

    .line 326
    return-void
.end method

.method private executeTransitionOut()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mVideoWindow:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplay;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplay;->animateOut(Ljava/lang/Runnable;)V

    .line 331
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->setBackgroundImageVisible(Z)V

    .line 332
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mVideoFullScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 333
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 64
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "init() - called with null PlayerFragment!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFactory;->createVideoWindow(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplay;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mVideoWindow:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplay;

    goto :goto_0
.end method

.method private scrollToItem(I)V
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    mul-int/2addr v0, p1

    mul-int/lit8 v0, v0, -0x1

    .line 254
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mBackgroundContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPanAnimationInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 257
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mSelected:I

    goto :goto_0

    .line 259
    :cond_1
    const-string/jumbo v0, "nf_postplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PostPlay not found for index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected doTransitionFromPostPlay()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->stopTimer()V

    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->postPlayItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;

    .line 268
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;->stopPostPlay()V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->postPlayBackgrounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;

    .line 271
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;->stopTimer()V

    goto :goto_1

    .line 274
    :cond_1
    return-void
.end method

.method protected doTransitionToPostPlay()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->startTimer()V

    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->postPlayItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;

    .line 281
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->autoplayTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->getTime()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;->startPostPlay(I)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->postPlayBackgrounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;

    .line 284
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;->startTimer()V

    goto :goto_1

    .line 287
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayDismissed:Z

    if-eqz v0, :cond_2

    .line 288
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Second time postplay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->executeTransitionIn()V

    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mVideoWindow:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplay;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplay;->setVisible(Z)V

    .line 294
    :goto_2
    return-void

    .line 292
    :cond_2
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "First time postplay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public endOfPlay()V
    .locals 2

    .prologue
    .line 361
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->endOfPlay()V

    .line 362
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->isInteractivePostPlay:Z

    if-eqz v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mVideoWindow:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplay;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplay;->setVisible(Z)V

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_2

    .line 371
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->setBackgroundImageVisible(Z)V

    goto :goto_0

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_0
.end method

.method protected findViews()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f1002d9

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->experienceTitle:Landroid/widget/TextView;

    .line 397
    return-void
.end method

.method protected getLengthOfAutoPlayCountdow()I
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method protected getPostPlayExpirience()Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;
    .locals 1

    .prologue
    .line 381
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;->PostPlaySuggestions:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    return-object v0
.end method

.method protected isAutoPlayUsed()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPostPlayEnabled()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->waitUntilEndOfPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->postPlayDismissed()V

    .line 80
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isPostPlayEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected onTick(I)V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->postPlayItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;

    .line 299
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;->onTick(I)V

    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method

.method public postPlayDismissed()V
    .locals 0

    .prologue
    .line 355
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->postPlayDismissed()V

    .line 356
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->executeTransitionOut()V

    .line 357
    return-void
.end method

.method public setBackgroundImageVisible(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 337
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->setBackgroundImageVisible(Z)V

    .line 338
    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->postPlayBackgrounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;

    .line 340
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;->startBackgroundAutoPan()V

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "recommendations"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->experienceTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;

    .line 348
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->setSelected(Z)V

    .line 351
    :cond_1
    return-void
.end method

.method protected updateOnPostPlayVideosFetched()V
    .locals 15

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 93
    :cond_0
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "We do not have any data! Do nothing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    :goto_0
    return-void

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Activity for playback is already not valid! Do nothing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_4

    .line 103
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Player fragment is null, do nothing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isNonMemberPlayback()Z

    move-result v13

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mBackgroundContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->experienceTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 114
    const-string/jumbo v1, ""

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getExperienceTitle()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getExperienceTitle()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getExperienceTitle()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->experienceTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->experienceTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_9

    move v8, v2

    .line 126
    :goto_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nextEpisodeSeamless"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mBackgroundContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v3}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 130
    if-eqz v8, :cond_a

    const v0, 0x7f0300d1

    move v11, v0

    .line 133
    :goto_4
    if-eqz v13, :cond_b

    .line 134
    const v0, 0x7f0300d8

    move v9, v0

    .line 145
    :goto_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v10, v7

    :cond_6
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayItem;

    .line 147
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->hasValidPlayAction(Lcom/netflix/model/leafs/PostPlayItem;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mBackgroundContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v11, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mBackgroundContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->POST_PLAY:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-virtual {v6, v1, v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;->updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    .line 153
    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->postPlayBackgrounds:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v5, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->POST_PLAY:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-direct {v5, v0, v2, v3, v4}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v9, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;

    .line 158
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->postPlayItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    if-eqz v13, :cond_e

    .line 162
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    sget-object v4, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->POST_PLAY:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    new-instance v5, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SignupListener;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v5, p0, v6}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SignupListener;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;->updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Landroid/view/View$OnClickListener;)V

    .line 173
    :goto_7
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    .line 174
    goto :goto_6

    .line 118
    :cond_7
    const-string/jumbo v0, "recommendations"

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v3}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    move v0, v7

    .line 122
    goto/16 :goto_2

    :cond_9
    move v8, v7

    .line 125
    goto/16 :goto_3

    .line 130
    :cond_a
    const v0, 0x7f0300cf

    move v11, v0

    goto/16 :goto_4

    .line 135
    :cond_b
    if-eqz v1, :cond_c

    .line 136
    const v0, 0x7f0300d7

    move v9, v0

    goto/16 :goto_5

    .line 137
    :cond_c
    if-eqz v8, :cond_d

    .line 138
    const v0, 0x7f0300d6

    move v9, v0

    goto/16 :goto_5

    .line 140
    :cond_d
    const v0, 0x7f0300d5

    move v9, v0

    goto/16 :goto_5

    .line 163
    :cond_e
    if-eqz v8, :cond_f

    .line 164
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    sget-object v4, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->POST_PLAY:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    new-instance v5, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;

    invoke-direct {v5, p0, v10, v6}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;ILcom/netflix/mediaclient/ui/player/PostPlayBackground;)V

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;->updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 167
    :cond_f
    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/PostPlayAction;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "playTrailer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 168
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    sget-object v4, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->POST_PLAY:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;->updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 170
    :cond_10
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    sget-object v4, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->POST_PLAY:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->generatePlayHandler()Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;->updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 176
    :cond_11
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v0

    if-lez v0, :cond_1

    if-nez v13, :cond_1

    .line 177
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->POST_PLAY:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->setupAutoPlay(Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    goto/16 :goto_0

    :cond_12
    move-object v0, v1

    goto/16 :goto_1
.end method
