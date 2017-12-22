.class public Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;
.super Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;
.source "WPInteractiveMomentsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WPInteractiveMomentsManager"


# instance fields
.field private activeExit:Z

.field private bottomPanel:Landroid/view/View;

.field private bottomPanelHeight:I

.field private bottomPanelVisible:Z

.field private cachingResourcesComplete:Z

.field private closeButton:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

.field private currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

.field private data:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

.field private deviceWidth:I

.field private handler:Landroid/os/Handler;

.field private hasInteractiveMoments:Z

.field private ikoContainer:Landroid/widget/RelativeLayout;

.field private interactiveMoments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;",
            ">;"
        }
    .end annotation
.end field

.field private interpolator:Landroid/view/animation/Interpolator;

.field private isPugAutoOptIn:Z

.field private isSeeking:Z

.field private isShowingInteractiveMoment:Z

.field private itemSelectSoundId:I

.field private itemWiggleSoundId:I

.field private loadingProgressBar:Landroid/widget/ProgressBar;

.field private momentBackgrounded:Z

.field private momentEntryProgress:I

.field private momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

.field private momentStarted:Z

.field private momentThemeColor:I

.field private momentTransitionInSoundId:I

.field private momentTransitionOutSoundId:I

.field private momentsDisplayTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onTapHijackListener:Landroid/view/View$OnTouchListener;

.field private panelShuffleSoundId:I

.field private pausePosition:I

.field playPauseListener:Lcom/netflix/mediaclient/ui/player/PlayPauseListener;

.field private playbackPaused:Z

.field private playerBackgrounded:Z

.field private progressBar:Landroid/widget/ProgressBar;

.field private pugBitmap:Landroid/graphics/Bitmap;

.field private pugContainer:Landroid/widget/FrameLayout;

.field private pugImageView:Landroid/widget/ImageView;

.field private pugNotificationSoundId:I

.field private pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

.field private pugRevealScale:F

.field private pugRevealView:Landroid/view/View;

.field private pugScaleAnimator:Landroid/animation/ObjectAnimator;

.field private pugSelected:Z

.field private pugSelectedBitmap:Landroid/graphics/Bitmap;

.field private pugSelectedSoundId:I

.field private quitOutInterpolator:Landroid/view/animation/Interpolator;

.field private revealAnimator:Landroid/animation/ObjectAnimator;

.field private soundPoolManager:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

.field private tutorialBoingSoundId:I

.field private victorySoundId:I

.field private wpContainer:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentsDisplayTimeList:Ljava/util/List;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->handler:Landroid/os/Handler;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isPugAutoOptIn:Z

    .line 165
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$1;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playPauseListener:Lcom/netflix/mediaclient/ui/player/PlayPauseListener;

    .line 1247
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$12;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$12;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->onTapHijackListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;ZI)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->handlePlaybackPaused(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->interactiveMoments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;Z)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->revealCompleted(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Z
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isActivityInvalid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->handlePugClicked()V

    return-void
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugSelectedBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->loadSoundPoolResources()V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->startPugIntroAnimation(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;Z)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->animateReveal(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentTransitionInSoundId:I

    return v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;IF)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playSoundPoolId(IF)V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isShowingInteractiveMoment:Z

    return v0
.end method

.method private adjustPugLayout(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 784
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isShowingInteractiveMoment:Z

    if-nez v0, :cond_1

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 791
    if-eqz p1, :cond_3

    .line 792
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->bottomPanelHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->isNavigationBarBelowContent(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 794
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 796
    :cond_2
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->bottomPanelHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 799
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 800
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 801
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private animateReveal(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 926
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isActivityInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    :goto_0
    return-void

    .line 934
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isPugAutoOptIn:Z

    if-nez v0, :cond_5

    .line 935
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugSelected:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 941
    :goto_1
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playPauseVideo(Z)V

    .line 942
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->closeButton:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 943
    if-eqz v0, :cond_3

    .line 944
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->progressBar:Landroid/widget/ProgressBar;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 945
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugImageView:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 946
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->wpContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->onTapHijackListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 960
    :cond_1
    :goto_2
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->startRevealScaleAnimation(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 935
    goto :goto_1

    .line 948
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugRevealView:Landroid/view/View;

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 949
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->hideScreen()V

    .line 950
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->wpContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 951
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    .line 952
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 953
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 955
    :cond_4
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentStarted:Z

    if-eqz v1, :cond_1

    .line 956
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentTransitionOutSoundId:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playSoundPoolId(IF)V

    goto :goto_2

    :cond_5
    move v0, p1

    goto :goto_1
.end method

.method private cleanUpResources()V
    .locals 3

    .prologue
    .line 1186
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugBitmap:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugSelectedBitmap:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->releaseBitmaps([Landroid/graphics/Bitmap;)V

    .line 1187
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->releaseResources()V

    .line 1188
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->releaseSoundPool()V

    .line 1189
    return-void
.end method

.method private clearPanel(I)V
    .locals 4

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isActivityInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    :goto_0
    return-void

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$8;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$8;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private findAndConfigureViews(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1205
    if-nez p1, :cond_0

    .line 1241
    :goto_0
    return-void

    .line 1212
    :cond_0
    const v0, 0x7f1002c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->bottomPanel:Landroid/view/View;

    .line 1213
    const v0, 0x7f1003ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 1214
    const v0, 0x7f1003dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugContainer:Landroid/widget/FrameLayout;

    .line 1215
    const v0, 0x7f1003db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->wpContainer:Landroid/widget/RelativeLayout;

    .line 1216
    const v0, 0x7f1003df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugImageView:Landroid/widget/ImageView;

    .line 1217
    const v0, 0x7f1003dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugRevealView:Landroid/view/View;

    .line 1218
    const v0, 0x7f1003de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->progressBar:Landroid/widget/ProgressBar;

    .line 1219
    const v0, 0x7f100297

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->closeButton:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    .line 1220
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->closeButton:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$10;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$10;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1232
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->progressBar:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$11;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$11;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1238
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->wpContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1240
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    goto :goto_0
.end method

.method private handlePlaybackPaused(ZI)V
    .locals 1

    .prologue
    .line 1333
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playbackPaused:Z

    .line 1334
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isShowingInteractiveMoment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    .line 1352
    :cond_0
    :goto_0
    return-void

    .line 1337
    :cond_1
    if-eqz p1, :cond_2

    .line 1338
    iput p2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pausePosition:I

    .line 1339
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    goto :goto_0

    .line 1343
    :cond_2
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pausePosition:I

    add-int/lit16 v0, v0, -0x1f4

    if-lt p2, v0, :cond_3

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pausePosition:I

    add-int/lit16 v0, v0, 0x1f4

    if-le p2, v0, :cond_4

    .line 1346
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->hide()V

    .line 1348
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    goto :goto_0
.end method

.method private handlePugClicked()V
    .locals 2

    .prologue
    .line 772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugSelected:Z

    .line 773
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->select:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->reportCommandEvent(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;)V

    .line 774
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugSelectedSoundId:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playSoundPoolId(IF)V

    .line 775
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugSelectedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 780
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugPulsateAnimation(Z)V

    .line 781
    return-void

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugImageView:Landroid/widget/ImageView;

    const v1, 0x7f0201d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private hideNavBar()V
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isActivityInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    :goto_0
    return-void

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdateTask()V

    .line 1050
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->clearPanel()V

    .line 1051
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->hideNavigationBar()V

    goto :goto_0
.end method

.method private hidePug()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 534
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugRevealView:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 535
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 537
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 539
    :cond_0
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugPulsateAnimation(Z)V

    .line 540
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->ikoContainer:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 541
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->progressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 542
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugImageView:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 543
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isShowingInteractiveMoment:Z

    .line 544
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugSelected:Z

    .line 545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    .line 546
    return-void
.end method

.method private isBottomPanelVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1198
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->bottomPanel:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1199
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->bottomPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1201
    :cond_0
    return v0
.end method

.method private loadMomentScreenResources()V
    .locals 1

    .prologue
    .line 1156
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->cachingResourcesComplete:Z

    if-nez v0, :cond_0

    .line 1180
    :goto_0
    return-void

    .line 1166
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$9;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private loadPugResourcesBg()V
    .locals 1

    .prologue
    .line 611
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$3;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->execute(Ljava/lang/Runnable;)V

    .line 626
    return-void
.end method

.method private loadSoundPoolResources()V
    .locals 1

    .prologue
    .line 1282
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1288
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    if-nez v0, :cond_0

    .line 1303
    :goto_0
    return-void

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;->getItemWiggleAudio()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->itemWiggleSoundId:I

    .line 1295
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;->getPugNotificationAudio()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugNotificationSoundId:I

    .line 1296
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;->getMomentTransitionInAudio()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentTransitionInSoundId:I

    .line 1297
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;->getMomentTransitionOutAudio()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentTransitionOutSoundId:I

    .line 1298
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;->getVictoryAudio()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->victorySoundId:I

    .line 1299
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;->getPugSelectedAudio()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugSelectedSoundId:I

    .line 1300
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;->getItemSelectAudio()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->itemSelectSoundId:I

    .line 1301
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;->getTutorialBoingAudio()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->tutorialBoingSoundId:I

    .line 1302
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;->getPanelShuffleAudio()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->panelShuffleSoundId:I

    goto :goto_0
.end method

.method private loadSoundPoolResourcesBg()V
    .locals 1

    .prologue
    .line 635
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$4;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->execute(Ljava/lang/Runnable;)V

    .line 641
    return-void
.end method

.method private loadSoundPoolVo(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1306
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1307
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1308
    :cond_0
    const-string/jumbo v1, "WPInteractiveMomentsManager"

    const-string/jumbo v2, "loadSoundPoolVo() failed. SoundPoolManager is null."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :goto_0
    return v0

    .line 1312
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1313
    :cond_2
    const-string/jumbo v1, "WPInteractiveMomentsManager"

    const-string/jumbo v2, "loadSoundPoolVo() failed. WPAudio or it;s url is null."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1320
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getLocalCachedFileMetadata(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;)I

    move-result v0

    goto :goto_0
.end method

.method private playPauseVideo(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1008
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isActivityInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    :goto_0
    return-void

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setPauseOnPlayerBackgrounded(Z)V

    .line 1016
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setSubtitleVisiblity(Z)V

    .line 1017
    if-eqz p1, :cond_3

    .line 1018
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause()V

    .line 1019
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1020
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPositionInMs()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentEntryProgress:I

    .line 1024
    :goto_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->showNavBar()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1016
    goto :goto_1

    .line 1022
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getPugEndTimeMS()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentEntryProgress:I

    goto :goto_2

    .line 1026
    :cond_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentStarted:Z

    if-eqz v0, :cond_4

    .line 1027
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->activeExit:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isLearnMoment()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1028
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getVideoReturnOffsetMS()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentEntryProgress:I

    .line 1029
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentEntryProgress:I

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doSeek(I)V

    .line 1039
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->hideNavBar()V

    .line 1040
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->activeExit:Z

    goto :goto_0

    .line 1031
    :cond_5
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playerBackgrounded:Z

    if-eqz v0, :cond_6

    .line 1032
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentEntryProgress:I

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doSeek(I)V

    .line 1033
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playerBackgrounded:Z

    goto :goto_3

    .line 1035
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    goto :goto_3
.end method

.method private playPugIntro(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x2

    .line 816
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugIntroStartValues()V

    .line 817
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->ikoContainer:Landroid/widget/RelativeLayout;

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 819
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 820
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 822
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugContainer:Landroid/widget/FrameLayout;

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 824
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 825
    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$5;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$5;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 835
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->quitOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 836
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 838
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugNotificationSoundId:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playSoundPoolId(IF)V

    .line 839
    return-void

    .line 819
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 820
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private playSoundPoolId(IF)V
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;->playSoundPoolId(IF)V

    .line 1150
    :cond_0
    return-void
.end method

.method private preparePugView(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 722
    if-nez p1, :cond_1

    .line 723
    const-string/jumbo v1, "WPInteractiveMomentsManager"

    const-string/jumbo v2, "WPMoment object is null. Ignoring request to preparePugView()"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_0
    :goto_0
    return v0

    .line 726
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->progressBar:Landroid/widget/ProgressBar;

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 727
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugImageView:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 728
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getBackgroundColor()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPColor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 729
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getBackgroundColor()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPColor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPColor;->getColorValue()Ljava/lang/String;

    move-result-object v2

    .line 730
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 737
    const v0, -0xff0100

    .line 742
    :try_start_0
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 743
    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentThemeColor:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, -0x4c000001

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 751
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 752
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 753
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugRevealView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 756
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 760
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugImageView:Landroid/widget/ImageView;

    const v2, 0x7f0201d7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    move v0, v1

    .line 765
    goto :goto_0

    .line 762
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 744
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private pugIntroStartValues()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1134
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugRevealView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugRevealView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 1137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->progressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 1138
    return-void
.end method

.method private pugPulsateAnimation(Z)V
    .locals 6

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    .line 889
    if-nez p1, :cond_1

    .line 890
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setScaleX(F)V

    .line 891
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setScaleY(F)V

    .line 892
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugScaleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v5, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 900
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v5, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 903
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugScaleAnimator:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_2

    .line 904
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->progressBar:Landroid/widget/ProgressBar;

    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 906
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 907
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugScaleAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 908
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugScaleAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x534

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 912
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugScaleAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->quitOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 913
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 910
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_1

    .line 898
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
    .end array-data

    .line 900
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
    .end array-data
.end method

.method private reportMomentStarted()V
    .locals 3

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    .line 310
    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->ikoMoment:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/IkoLogUtils;->reportIkoMomentStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 312
    :cond_0
    return-void
.end method

.method private reportPugImpressionStarted(I)V
    .locals 3

    .prologue
    .line 709
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 711
    :try_start_0
    const-string/jumbo v1, "notificationId"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getPugNotificationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 712
    const-string/jumbo v1, "expectedVideoOffset"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getPugNotificationExpectedVideoOffset()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 713
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportIkoNotificationImpressionStarted(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 716
    :catch_0
    move-exception v0

    .line 717
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private revealCompleted(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1102
    if-eqz p1, :cond_1

    .line 1104
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    .line 1105
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isNavigationBarBelowContent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1106
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v0

    .line 1108
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->closeButton:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-virtual {v3, v1, v2, v0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setPadding(IIII)V

    .line 1110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->prepareAndStart()Z

    move-result v0

    .line 1111
    if-nez v0, :cond_0

    .line 1112
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->showHideLoadingProgress(Z)V

    .line 1120
    :cond_0
    :goto_1
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentStarted:Z

    .line 1121
    return-void

    .line 1115
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->ikoContainer:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 1116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->progressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 1117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugImageView:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 1118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private showNavBar()V
    .locals 1

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isActivityInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    :goto_0
    return-void

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showNavigationBar()V

    .line 1059
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->clearPanel(I)V

    goto :goto_0
.end method

.method private showPug(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;I)V
    .locals 4

    .prologue
    .line 644
    if-nez p1, :cond_1

    .line 645
    const-string/jumbo v0, "WPInteractiveMomentsManager"

    const-string/jumbo v1, "Request to showPug unlocking animation on an null collection item."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isManagerReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 654
    const-string/jumbo v0, "WPInteractiveMomentsManager"

    const-string/jumbo v1, "Resources not available to showPug moment. Skipping for now..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isBottomPanelVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->adjustPugLayout(Z)V

    .line 659
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    if-eq v0, p1, :cond_3

    .line 660
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->hide()V

    .line 663
    :cond_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentBackgrounded:Z

    if-nez v0, :cond_0

    .line 670
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isShowingInteractiveMoment:Z

    if-eqz v0, :cond_4

    .line 671
    const-string/jumbo v0, "WPInteractiveMomentsManager"

    const-string/jumbo v1, "Already showing interactive moment. Ignore request."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_4
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getSceneTriggerStartMS()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit16 v0, v0, -0x29a

    .line 680
    const/16 v1, 0x7d0

    if-gt v0, v1, :cond_5

    .line 681
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->hide()V

    goto :goto_0

    .line 685
    :cond_5
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->preparePugView(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;)Z

    move-result v1

    .line 689
    if-eqz v1, :cond_6

    .line 690
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isShowingInteractiveMoment:Z

    .line 691
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->isPugAutoOptIn()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isPugAutoOptIn:Z

    .line 692
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    .line 694
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 695
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    invoke-virtual {v2, v3, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->setInteractiveMomentAndFindViewsForMoment(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;Landroid/view/View;)V

    .line 697
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->wpContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 698
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->showNavBar()V

    .line 699
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playPugIntro(I)V

    .line 700
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->loadMomentScreenResources()V

    .line 701
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->reportPugImpressionStarted(I)V

    .line 702
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->reportMomentStarted()V

    goto :goto_0

    .line 704
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->hide()V

    goto/16 :goto_0
.end method

.method private startCachingResources()V
    .locals 2

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    if-nez v0, :cond_1

    .line 1279
    :cond_0
    return-void

    .line 1270
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;->getPreCacheableResourcesList()Ljava/util/List;

    move-result-object v0

    .line 1271
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1274
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->cachingResourcesComplete:Z

    .line 1275
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->resetCounters(I)V

    .line 1276
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1277
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->cacheResources(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startPugIntroAnimation(I)V
    .locals 7

    .prologue
    const/16 v1, 0x1f4

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 850
    invoke-direct {p0, v6}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugPulsateAnimation(Z)V

    .line 852
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->progressBar:Landroid/widget/ProgressBar;

    const-string/jumbo v4, "progress"

    const/4 v0, 0x2

    new-array v5, v0, [I

    const/16 v0, 0x1388

    if-gt p1, v0, :cond_1

    move v0, v1

    :goto_0
    aput v0, v5, v2

    aput v1, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 856
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

    .line 857
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 858
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 859
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$6;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 871
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 872
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playbackPaused:Z

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 876
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 852
    goto :goto_0
.end method

.method private startRevealScaleAnimation(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 967
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugRevealScale:F

    .line 968
    :goto_0
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v5, [F

    aput v0, v2, v4

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 970
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v5, [F

    aput v0, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 973
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->revealAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->revealAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 974
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->revealAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 975
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->revealAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 978
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugRevealView:Landroid/view/View;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->revealAnimator:Landroid/animation/ObjectAnimator;

    .line 981
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->revealAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$7;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$7;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 993
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->revealAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 994
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->revealAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->quitOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 995
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->revealAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 996
    return-void

    .line 967
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method protected cachingResourcesComplete()V
    .locals 1

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->loadSoundPoolResourcesBg()V

    .line 593
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->loadPugResourcesBg()V

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->cachingResourcesComplete:Z

    .line 598
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isShowingInteractiveMoment:Z

    if-eqz v0, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->loadMomentScreenResources()V

    .line 602
    :cond_0
    return-void
.end method

.method public getBitmapFromCache(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;Z)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 337
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 339
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    :cond_0
    const-string/jumbo v0, "WPInteractiveMomentsManager"

    const-string/jumbo v1, "getBitmapFromCache() failed. WPImage or its url is null."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v0, 0x0

    .line 344
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPImage;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fetchImageFromCache(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isShowingInteractiveMoment:Z

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 271
    :cond_0
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isShowingInteractiveMoment:Z

    .line 272
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugSelected:Z

    .line 273
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->showHideLoadingProgress(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->releaseResources()V

    .line 275
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->animateReveal(Z)V

    goto :goto_0
.end method

.method public init(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 116
    if-nez p1, :cond_0

    .line 117
    const-string/jumbo v0, "WPInteractiveMomentsManager"

    const-string/jumbo v1, "Player fragment is null. This should not happen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 121
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 123
    const v0, 0x7f1001ef

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->ikoContainer:Landroid/widget/RelativeLayout;

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->ikoContainer:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 125
    const-string/jumbo v0, "WPInteractiveMomentsManager"

    const-string/jumbo v1, "No interactive moments view container. Exiting the decorator."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->ikoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->ikoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 136
    :cond_2
    iput-boolean v5, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->hasInteractiveMoments:Z

    .line 137
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030127

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->ikoContainer:Landroid/widget/RelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 140
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->findAndConfigureViews(Landroid/view/View;)V

    .line 142
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isNavigationBarBelowContent(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->bottomPanelHeight:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/netflix/mediaclient/util/ViewUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->bottomPanelHeight:I

    .line 145
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 147
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->deviceWidth:I

    .line 149
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->deviceWidth:I

    div-int v0, v1, v0

    int-to-float v0, v0

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->pugRevealScale:F

    .line 155
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getServiceManager(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->svcManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 156
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    .line 157
    invoke-static {}, Lcom/netflix/mediaclient/ui/iko/wordparty/WPConstants;->getQuintOutInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->quitOutInterpolator:Landroid/view/animation/Interpolator;

    .line 158
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->interpolator:Landroid/view/animation/Interpolator;

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playPauseListener:Lcom/netflix/mediaclient/ui/player/PlayPauseListener;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->addPlayPauseListener(Lcom/netflix/mediaclient/ui/player/PlayPauseListener;)V

    .line 162
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->setBitmapFactoryOptions(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public isManagerReady()Z
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->areResourcesCached()Z

    move-result v0

    return v0
.end method

.method public isNavigationBarBelowContent()Z
    .locals 2

    .prologue
    .line 1124
    const/4 v0, 0x1

    .line 1125
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 1127
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isNavigationBarBelowContent(Landroid/app/Activity;)Z

    move-result v0

    .line 1129
    :cond_0
    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playPauseListener:Lcom/netflix/mediaclient/ui/player/PlayPauseListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->removePlayPauseListener(Lcom/netflix/mediaclient/ui/player/PlayPauseListener;)V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->onDestroy()V

    .line 578
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->cleanUpResources()V

    .line 579
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 580
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/IkoLogUtils;->reportIkoModeEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 583
    :cond_2
    return-void
.end method

.method public onMomentsFetched(Lcom/netflix/model/leafs/InteractivePlaybackMoments;)V
    .locals 4

    .prologue
    .line 179
    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/netflix/model/leafs/InteractivePlaybackMoments;->getData()Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_1

    const-string/jumbo v1, "wordparty"

    .line 182
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    const-string/jumbo v0, "WPInteractiveMomentsManager"

    const-string/jumbo v1, "Interactive data is null or of wrong type."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    if-nez v1, :cond_3

    .line 189
    :cond_2
    const-string/jumbo v0, "WPInteractiveMomentsManager"

    const-string/jumbo v1, "InteractiveData is null or not instance of WPInteractiveMomentsModel."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 194
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->ikoMode:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/util/log/IkoLogUtils;->reportIkoModeStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 196
    :cond_4
    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->data:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;->getMoments()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->interactiveMoments:Ljava/util/List;

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->interactiveMoments:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->interactiveMoments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->hasInteractiveMoments:Z

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->interactiveMoments:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$2;-><init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->interactiveMoments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    .line 213
    if-eqz v0, :cond_5

    .line 214
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentsDisplayTimeList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getPugStartTimeMS()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentsDisplayTimeList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getSceneTriggerEndMS()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 218
    :cond_6
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->startCachingResources()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->urlToMediaPlayerMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->urlToMediaPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->urlToMediaPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    .line 467
    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->pausePlayback()V

    goto :goto_0

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;->autoPause()V

    .line 477
    :cond_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentStarted:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    if-eqz v0, :cond_3

    .line 478
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->onPause()V

    .line 481
    :cond_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isShowingInteractiveMoment:Z

    if-eqz v0, :cond_4

    .line 482
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->reportMomentEnded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 484
    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isShowingInteractiveMoment:Z

    if-eqz v0, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->reportMomentStarted()V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->urlToMediaPlayerMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->urlToMediaPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->urlToMediaPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    .line 498
    if-eqz v0, :cond_1

    .line 499
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->resumePlayback()Z

    goto :goto_0

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    if-eqz v0, :cond_3

    .line 505
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;->autoResume()V

    .line 508
    :cond_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentStarted:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    if-eqz v0, :cond_4

    .line 509
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->onResume()V

    .line 511
    :cond_4
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentBackgrounded:Z

    .line 554
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    if-nez v0, :cond_0

    .line 555
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    .line 556
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->loadSoundPoolResourcesBg()V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->onStart()V

    .line 562
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 518
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentBackgrounded:Z

    .line 519
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playerBackgrounded:Z

    .line 521
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->onStop()V

    .line 525
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isShowingInteractiveMoment:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentStarted:Z

    if-nez v0, :cond_1

    .line 526
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->hidePug()V

    .line 529
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->releaseResources()V

    .line 530
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->releaseSoundPool()V

    .line 531
    return-void
.end method

.method public onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public playAudio(Ljava/lang/String;FZLcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;)V
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentBackgrounded:Z

    if-eqz v0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playMediaPlayerAudio(Ljava/lang/String;FZLcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;)V

    goto :goto_0
.end method

.method public playBgAudio()V
    .locals 4

    .prologue
    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    if-nez v0, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    .line 358
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getBackgroundAudio()Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;->getVolume()F

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playAudio(Ljava/lang/String;FZLcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;)V

    goto :goto_0
.end method

.method public playBoingSound()V
    .locals 2

    .prologue
    .line 407
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->tutorialBoingSoundId:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playSoundPoolId(IF)V

    .line 408
    return-void
.end method

.method public playItemSelectSound()V
    .locals 2

    .prologue
    .line 414
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->itemSelectSoundId:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playSoundPoolId(IF)V

    .line 415
    return-void
.end method

.method public playPanelShuffleSound()V
    .locals 2

    .prologue
    .line 400
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->panelShuffleSoundId:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playSoundPoolId(IF)V

    .line 401
    return-void
.end method

.method public playVictorySound()V
    .locals 2

    .prologue
    .line 421
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->victorySoundId:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playSoundPoolId(IF)V

    .line 422
    return-void
.end method

.method public playWiggleSound()V
    .locals 2

    .prologue
    .line 428
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->itemWiggleSoundId:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playSoundPoolId(IF)V

    .line 429
    return-void
.end method

.method public playerOverlayVisibility(Z)V
    .locals 1

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->bottomPanelVisible:Z

    .line 252
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isShowingInteractiveMoment:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdateTask()V

    .line 255
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->adjustPugLayout(Z)V

    .line 256
    return-void
.end method

.method public releaseResources()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->urlToMediaPlayerMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->urlToMediaPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    .line 440
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseMediaPlayer()V

    goto :goto_0

    .line 445
    :cond_1
    return-void
.end method

.method public releaseSoundPool()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;->release()V

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->soundPoolManager:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    .line 458
    :cond_0
    return-void
.end method

.method public reportCommandEvent(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;)V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->fragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    goto :goto_0
.end method

.method public reportIkoNotificationImpressionEnded()V
    .locals 1

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 880
    if-eqz v0, :cond_0

    .line 881
    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportIkoNotificationImpressionEnded(Landroid/content/Context;)V

    .line 883
    :cond_0
    return-void
.end method

.method public reportMomentEnded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 284
    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentScreen:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->getCurrentStateNameForLogging()Ljava/lang/String;

    move-result-object v6

    .line 290
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    .line 295
    const/4 v5, -0x1

    .line 297
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getMomentId()Ljava/lang/String;

    move-result-object v3

    .line 299
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getSceneType()Ljava/lang/String;

    move-result-object v4

    .line 300
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->currentInteractiveMoment:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;->getMomentExpectedVideoOffset()I

    move-result v5

    :goto_1
    move-object v1, p1

    .line 303
    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/util/log/IkoLogUtils;->reportIkoMomentEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 305
    :cond_0
    return-void

    :cond_1
    move-object v4, v2

    move-object v3, v2

    goto :goto_1

    :cond_2
    move-object v6, v2

    goto :goto_0
.end method

.method public setActiveExit(Z)V
    .locals 0

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->activeExit:Z

    .line 327
    return-void
.end method

.method public setTimelineProgress(IZ)V
    .locals 2

    .prologue
    .line 226
    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->hasInteractiveMoments:Z

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->momentsDisplayTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 228
    if-ltz v0, :cond_1

    .line 229
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->interactiveMoments:Ljava/util/List;

    div-int/lit8 v0, v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->showPug(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;I)V

    .line 243
    :cond_0
    :goto_0
    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isSeeking:Z

    .line 244
    return-void

    .line 231
    :cond_1
    mul-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 232
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->interactiveMoments:Ljava/util/List;

    div-int/lit8 v0, v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->showPug(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;I)V

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->hide()V

    goto :goto_0

    .line 239
    :cond_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->isSeeking:Z

    if-eq v0, p2, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->hidePug()V

    goto :goto_0
.end method

.method public showHideLoadingProgress(Z)V
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->loadingProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 1361
    return-void
.end method
