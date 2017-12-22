.class public abstract Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;
.super Ljava/lang/Object;
.source "CastPlayerViewsAbs.java"


# static fields
.field private static final ALPHA_50:F = 0.5f

.field private static final DISABLED:Z = false

.field private static final DISABLED_ALPHA:F = 0.4f

.field private static final FULL_ALPHA:F = 0.0f

.field private static final LONG_VIEW_ANIMATION_DURATION_MS:J = 0xc8L

.field private static final MAX_CONTROL_GROUP_WIDTH_DP:I = 0x258

.field private static final NO_ALPHA:F = 1.0f

.field private static final PROGRESS_CHANGE_EVENT_FILTER_TIME_MS:J = -0x1L

.field private static final SHORT_VIEW_ANIMATION_DURATION_MS:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "MdxMiniPlayerViews"

.field private static final TOTAL_NUMBER_OF_COLLAPSED_BUTTONS:I = 0x4

.field private static final timeFormatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;


# instance fields
.field protected final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final animInterpolator:Landroid/view/animation/Interpolator;

.field protected auxControlsGroup:Landroid/view/View;

.field protected bifImage:Landroid/widget/ImageView;

.field private bifSeekTime:Landroid/widget/TextView;

.field private final callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

.field private castMenu:Lcom/netflix/mediaclient/ui/mdx/CastMenu;

.field private collapsedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected final content:Landroid/view/ViewGroup;

.field private currentTime:Landroid/widget/TextView;

.field private deviceName:Landroid/widget/TextView;

.field protected deviceNameGroup:Landroid/view/View;

.field private final dialogCallbacks:Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

.field private final dummyClickListener:Landroid/view/View$OnClickListener;

.field private episodesButtonVisible:Z

.field private final episodesClickListener:Landroid/view/View$OnClickListener;

.field private episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

.field private episodesDivider:Landroid/view/View;

.field private episodesExpanded:Landroid/widget/ImageView;

.field private isShowingViewForExpanded:Ljava/lang/Boolean;

.field private languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

.field private languageExpanded:Landroid/widget/ImageView;

.field protected maxTitleTextYDelta:I

.field protected maxTitleTextYMargin:I

.field private final onSeekBarChangeListener:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;

.field private final parentActivityClass:Ljava/lang/String;

.field private final pauseOnClickListener:Landroid/view/View$OnClickListener;

.field private playOrPauseCollapsed:Landroid/widget/ImageView;

.field private playOrPauseExpanded:Landroid/widget/ImageView;

.field protected playcardCaret:Landroid/widget/ImageView;

.field protected playcardControlsGroup:Landroid/view/View;

.field private remainingTime:Landroid/widget/TextView;

.field private final resumeOnClickListener:Landroid/view/View$OnClickListener;

.field private seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

.field private final seekBarLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final showLanguageSelectorClickListener:Landroid/view/View$OnClickListener;

.field private final showTargetSelectionDialogListener:Landroid/view/View$OnClickListener;

.field private final showVideoDetailsClickListener:Landroid/view/View$OnClickListener;

.field private final showVolumeClickListener:Landroid/view/View$OnClickListener;

.field private skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

.field private skipBackExpanded:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

.field private final skipBackOnClickListener:Landroid/view/View$OnClickListener;

.field private stop:Landroid/widget/ImageView;

.field private final stopOnClickListener:Landroid/view/View$OnClickListener;

.field protected subtitle:Landroid/widget/TextView;

.field private subtitleExpanded:Landroid/widget/TextView;

.field protected title:Landroid/widget/TextView;

.field private titleExpanded:Landroid/widget/TextView;

.field protected titleGroup:Landroid/view/View;

.field protected titleGroupYPos:F

.field protected titleTextGroup:Landroid/view/View;

.field private volume:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->timeFormatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->animInterpolator:Landroid/view/animation/Interpolator;

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesButtonVisible:Z

    .line 560
    iput-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->isShowingViewForExpanded:Ljava/lang/Boolean;

    .line 715
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->onSeekBarChangeListener:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;

    .line 784
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$2;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->dummyClickListener:Landroid/view/View$OnClickListener;

    .line 796
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$3;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->pauseOnClickListener:Landroid/view/View$OnClickListener;

    .line 805
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$4;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->showVideoDetailsClickListener:Landroid/view/View$OnClickListener;

    .line 834
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$5;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->resumeOnClickListener:Landroid/view/View$OnClickListener;

    .line 843
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$6;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackOnClickListener:Landroid/view/View$OnClickListener;

    .line 852
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$7;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->stopOnClickListener:Landroid/view/View$OnClickListener;

    .line 861
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$8;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesClickListener:Landroid/view/View$OnClickListener;

    .line 887
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$9;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->showLanguageSelectorClickListener:Landroid/view/View$OnClickListener;

    .line 894
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$10;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->showVolumeClickListener:Landroid/view/View$OnClickListener;

    .line 913
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$11;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$11;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->showTargetSelectionDialogListener:Landroid/view/View$OnClickListener;

    .line 920
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$12;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$12;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBarLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 125
    const-string/jumbo v0, "Creating"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->log(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->parentActivityClass:Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 128
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    .line 130
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->dialogCallbacks:Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

    .line 131
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    .line 133
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->findViews()V

    .line 134
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->init()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->currentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->bifSeekTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateTimeViews(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->dialogCallbacks:Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

    return-object v0
.end method

.method private computeTitleTextViewGroupWidth()I
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 283
    const/4 v1, 0x1

    .line 284
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    sub-int v0, v2, v0

    return v0
.end method

.method private enableView(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 643
    if-nez p1, :cond_0

    .line 650
    :goto_0
    return-void

    .line 647
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 648
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 649
    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1
.end method

.method private fadeInAndShow(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 669
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 670
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 672
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 673
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 676
    :cond_1
    return-void
.end method

.method private fadeOut(Ljava/util/Collection;F)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 687
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 688
    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 690
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 693
    :cond_1
    return-void
.end method

.method private fadeOutAndHide(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 700
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 701
    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 703
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$HideViewOnAnimatorEnd;

    invoke-direct {v3, v0}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils$HideViewOnAnimatorEnd;-><init>(Landroid/view/View;)V

    .line 704
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 707
    :cond_1
    return-void
.end method

.method private initCollapsedButton(Lcom/netflix/mediaclient/android/widget/IconFontTextView;III)V
    .locals 1

    .prologue
    .line 288
    if-nez p1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setText(I)V

    .line 294
    int-to-float v0, p4

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setTextSize(F)V

    .line 295
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initContentClicks()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->dummyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :cond_0
    return-void
.end method

.method private initDividersAndCollapsedViews(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 169
    .line 170
    if-eqz p1, :cond_8

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const v3, 0x7f10012f

    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f100130

    .line 174
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f100131

    .line 175
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f100132

    .line 176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 172
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->getViewsById(Landroid/view/View;[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 177
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->showViews(Ljava/util/Collection;)V

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    const v2, 0x7f090291

    const v3, 0x7f090056

    const/16 v4, 0x12

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->initCollapsedButton(Lcom/netflix/mediaclient/android/widget/IconFontTextView;III)V

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    const v2, 0x7f090293

    const v3, 0x7f090055

    const/16 v4, 0x14

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->initCollapsedButton(Lcom/netflix/mediaclient/android/widget/IconFontTextView;III)V

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    const v2, 0x7f09029f

    const v3, 0x7f090059

    const/16 v4, 0x18

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->initCollapsedButton(Lcom/netflix/mediaclient/android/widget/IconFontTextView;III)V

    .line 191
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->collapsedViews:Ljava/util/List;

    .line 192
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playOrPauseCollapsed:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->collapsedViews:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playOrPauseCollapsed:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->collapsedViews:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->collapsedViews:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->collapsedViews:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_6
    if-eqz v0, :cond_7

    .line 197
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->collapsedViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    :cond_7
    return-void

    .line 180
    :cond_8
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    .line 181
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    .line 182
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesDivider:Landroid/view/View;

    goto :goto_0
.end method

.method private initOnClickListeners()V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->stop:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->stop:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->stopOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackExpanded:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_2

    .line 617
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackExpanded:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_3

    .line 621
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesExpanded:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 624
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesExpanded:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_5

    .line 628
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->showLanguageSelectorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageExpanded:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 631
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageExpanded:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->showLanguageSelectorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->deviceNameGroup:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 635
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->deviceNameGroup:Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->showTargetSelectionDialogListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->volume:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 638
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->volume:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->showVolumeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    :cond_8
    return-void
.end method

.method private initPlaycardCaret()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playcardCaret:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playcardCaret:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 233
    :cond_0
    return-void
.end method

.method private initSeekBar(Landroid/content/res/Resources;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->onSeekBarChangeListener:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->setSnappableOnSeekBarChangeListener(Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;)V

    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBarLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 220
    const v0, 0x7f0a001c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 221
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v1, v0, v2, v0, v2}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->setPadding(IIII)V

    .line 222
    if-eqz p2, :cond_0

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->setScrubberDentBitmap(I)V

    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->setShouldSnapToTouchStartPosition(Z)V

    .line 227
    :cond_0
    return-void
.end method

.method private initTitleDimens(Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 211
    const v0, 0x7f0a0019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f0a001a

    .line 212
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->maxTitleTextYDelta:I

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->maxTitleTextYMargin:I

    .line 214
    return-void
.end method

.method private initTitleText()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->titleTextGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->titleTextGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->computeTitleTextViewGroupWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 165
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 713
    return-void
.end method

.method private setMaxWidths(ZZ)V
    .locals 2

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/16 v1, 0x258

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 204
    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    .line 203
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->auxControlsGroup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 206
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playcardControlsGroup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 208
    :cond_0
    return-void
.end method

.method private updateEpisodeButtonVisibility()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->isShowingViewForExpanded:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    move v0, v1

    .line 400
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v2, :cond_0

    .line 401
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_6

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesButtonVisible:Z

    if-eqz v2, :cond_6

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setVisibility(I)V

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesDivider:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 404
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesButtonVisible:Z

    if-eqz v0, :cond_1

    move v3, v1

    :cond_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesExpanded:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesExpanded:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesButtonVisible:Z

    if-eqz v2, :cond_7

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    :cond_3
    return-void

    .line 396
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->isShowingViewForExpanded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v2, v3

    .line 401
    goto :goto_1

    .line 407
    :cond_7
    const/16 v1, 0x8

    goto :goto_2
.end method

.method private updateTimeViews(I)V
    .locals 2

    .prologue
    .line 493
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->timeFormatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->getStringForSeconds(I)Ljava/lang/String;

    move-result-object v0

    .line 497
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->currentTime:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->currentTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->bifSeekTime:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 502
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->bifSeekTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    if-eqz v0, :cond_2

    .line 506
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->timeFormatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getMax()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->getStringForSeconds(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->remainingTime:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 508
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->remainingTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    :cond_2
    return-void
.end method

.method private updateViewsForPanelSlide(F)V
    .locals 3

    .prologue
    .line 552
    mul-float v1, p1, p1

    .line 553
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->collapsedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 554
    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 558
    :cond_1
    return-void
.end method


# virtual methods
.method public attachMenuItem(Lcom/netflix/mediaclient/ui/mdx/CastMenu;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->castMenu:Lcom/netflix/mediaclient/ui/mdx/CastMenu;

    .line 320
    return-void
.end method

.method public computeMdxMenuEnabled(Z)Z
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isPlayingRemotely()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const-string/jumbo v0, "MdxMiniPlayerViews"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mdx is playing remotely - mdx menu enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_0
    return p1

    .line 386
    :cond_0
    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "mdx is not playing remotely - mdx menu enabled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 p1, 0x1

    goto :goto_0
.end method

.method public enableMdxMenu()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->castMenu:Lcom/netflix/mediaclient/ui/mdx/CastMenu;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->castMenu:Lcom/netflix/mediaclient/ui/mdx/CastMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->setEnabled(Z)V

    .line 535
    :cond_0
    return-void
.end method

.method protected varargs fadeInAndShow([Landroid/view/View;)V
    .locals 1

    .prologue
    .line 665
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->fadeInAndShow(Ljava/util/Collection;)V

    .line 666
    return-void
.end method

.method protected varargs fadeOut([Landroid/view/View;)V
    .locals 2

    .prologue
    .line 679
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->fadeOut(Ljava/util/Collection;F)V

    .line 680
    return-void
.end method

.method protected varargs fadeOutAndHide([Landroid/view/View;)V
    .locals 1

    .prologue
    .line 696
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->fadeOutAndHide(Ljava/util/Collection;)V

    .line 697
    return-void
.end method

.method protected varargs fadeOutTranslucent([Landroid/view/View;)V
    .locals 2

    .prologue
    .line 683
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->fadeOut(Ljava/util/Collection;F)V

    .line 684
    return-void
.end method

.method protected findViews()V
    .locals 3

    .prologue
    const v2, 0x7f10012b

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f100104

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->titleGroup:Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f100134

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->title:Landroid/widget/TextView;

    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f100135

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->subtitle:Landroid/widget/TextView;

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f1000f6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->titleExpanded:Landroid/widget/TextView;

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f1000f7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->subtitleExpanded:Landroid/widget/TextView;

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f100133

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->titleTextGroup:Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f100102

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playcardCaret:Landroid/widget/ImageView;

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f1000fd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->bifSeekTime:Landroid/widget/TextView;

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f1000fc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->bifImage:Landroid/widget/ImageView;

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f100114

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->deviceNameGroup:Landroid/view/View;

    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f100118

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playcardControlsGroup:Landroid/view/View;

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f100119

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playOrPauseExpanded:Landroid/widget/ImageView;

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f10011a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackExpanded:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f10011b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->stop:Landroid/widget/ImageView;

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f100110

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->auxControlsGroup:Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f100113

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageExpanded:Landroid/widget/ImageView;

    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f100111

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesExpanded:Landroid/widget/ImageView;

    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f100112

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->volume:Landroid/widget/ImageView;

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f100116

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->currentTime:Landroid/widget/TextView;

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f100117

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->remainingTime:Landroid/widget/TextView;

    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f10012a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f10012c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f10012e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f100130

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesDivider:Landroid/view/View;

    .line 272
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isNotTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    const v1, 0x7f10012d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playOrPauseCollapsed:Landroid/widget/ImageView;

    .line 277
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected abstract getLayoutId()I
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getProgress()I

    move-result v0

    goto :goto_0
.end method

.method public getSlidingPanelDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->titleTextGroup:Landroid/view/View;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v1

    .line 141
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    .line 143
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->initContentClicks()V

    .line 144
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->initTitleText()V

    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->initPlaycardCaret()V

    .line 147
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->initSeekBar(Landroid/content/res/Resources;Z)V

    .line 148
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->initTitleDimens(Landroid/content/res/Resources;)V

    .line 150
    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setMaxWidths(ZZ)V

    .line 151
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->initDividersAndCollapsedViews(Z)V

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setLongTapListenersRecursivelyToShowContentDescriptionToast(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->initOnClickListeners()V

    .line 300
    return-void
.end method

.method public onPanelCollapsed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 524
    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "onPanelCollapsed()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->showArtworkAndHideBif()V

    .line 526
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateViewsForSeekBarUsage(Z)V

    .line 527
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateViewsForPanelChange(Z)V

    .line 528
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateEpisodeButtonVisibility()V

    .line 529
    return-void
.end method

.method public onPanelExpanded()V
    .locals 2

    .prologue
    .line 519
    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "onPanelExpanded()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateViewsForPanelChange(Z)V

    .line 521
    return-void
.end method

.method public onPanelSlide(F)V
    .locals 0

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->translateTitleGroup(F)V

    .line 515
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateViewsForPanelSlide(F)V

    .line 516
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateMdxMenu()V

    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->titleGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->titleGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->titleGroupYPos:F

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isPanelExpanded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateViewsForPanelChange(Z)V

    .line 308
    return-void
.end method

.method public rotateCaretTo(I)V
    .locals 4

    .prologue
    .line 586
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playcardCaret:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playcardCaret:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->animInterpolator:Landroid/view/animation/Interpolator;

    .line 588
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 590
    :cond_0
    return-void
.end method

.method public setControlsEnabled(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set controls enabled: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->log(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 349
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->setEnabled(Z)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playOrPauseCollapsed:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playOrPauseCollapsed:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->enableView(Landroid/view/View;Z)V

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playOrPauseExpanded:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playOrPauseExpanded:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->enableView(Landroid/view/View;Z)V

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->enableView(Landroid/view/View;Z)V

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackExpanded:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->skipBackExpanded:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->enableView(Landroid/view/View;Z)V

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isLanguageReady()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->enableView(Landroid/view/View;Z)V

    .line 358
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageExpanded:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageExpanded:Landroid/widget/ImageView;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isLanguageReady()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->enableView(Landroid/view/View;Z)V

    .line 360
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isEpisodeReady()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->enableView(Landroid/view/View;Z)V

    .line 361
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesExpanded:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesExpanded:Landroid/widget/ImageView;

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isEpisodeReady()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_3
    invoke-direct {p0, v3, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->enableView(Landroid/view/View;Z)V

    .line 363
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->deviceNameGroup:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->deviceNameGroup:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->enableView(Landroid/view/View;Z)V

    .line 364
    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->stop:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->stop:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->enableView(Landroid/view/View;Z)V

    .line 365
    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->volume:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->volume:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->enableView(Landroid/view/View;Z)V

    .line 367
    :cond_b
    const-string/jumbo v0, "setControlsEnabled, enabled: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->log(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->castMenu:Lcom/netflix/mediaclient/ui/mdx/CastMenu;

    if-eqz v0, :cond_c

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->castMenu:Lcom/netflix/mediaclient/ui/mdx/CastMenu;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->computeMdxMenuEnabled(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->setEnabled(Z)V

    .line 371
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    if-eqz v0, :cond_c

    .line 372
    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "setControlsEnabled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->castMenu:Lcom/netflix/mediaclient/ui/mdx/CastMenu;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->update()V

    .line 377
    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isPanelExpanded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateViewsForPanelChange(Z)V

    .line 378
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->notifyControlsEnabled(Z)V

    .line 379
    return-void

    :cond_d
    move v0, v2

    .line 357
    goto/16 :goto_0

    :cond_e
    move v0, v2

    .line 358
    goto/16 :goto_1

    :cond_f
    move v0, v2

    .line 360
    goto :goto_2

    :cond_10
    move v0, v2

    .line 361
    goto :goto_3
.end method

.method public setEpisodesButtonVisibile(Z)V
    .locals 0

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->episodesButtonVisible:Z

    .line 392
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateEpisodeButtonVisibility()V

    .line 393
    return-void
.end method

.method public setLanguageButtonEnabled(Z)V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageCollapsed:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->enableView(Landroid/view/View;Z)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->languageExpanded:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->enableView(Landroid/view/View;Z)V

    .line 414
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->setProgress(I)V

    .line 429
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateTimeViews(I)V

    .line 431
    :cond_0
    return-void
.end method

.method public setProgressMax(I)V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->seekBar:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->setMax(I)V

    .line 420
    :cond_0
    return-void
.end method

.method public setVolumeButtonVisibility(Z)V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->volume:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 435
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->volume:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 437
    :cond_0
    return-void

    .line 435
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected showArtworkAndHideBif()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 538
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->currentTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 539
    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->currentTime:Landroid/widget/TextView;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->fadeInAndShow([Landroid/view/View;)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->bifImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 543
    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->bifImage:Landroid/widget/ImageView;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->fadeOutAndHide([Landroid/view/View;)V

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->bifSeekTime:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 547
    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->bifSeekTime:Landroid/widget/TextView;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->fadeOutAndHide([Landroid/view/View;)V

    .line 549
    :cond_2
    return-void
.end method

.method protected translateTitleGroup(F)V
    .locals 4

    .prologue
    .line 593
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->titleTextGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 594
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 595
    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->titleGroupYPos:F

    iget v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->maxTitleTextYDelta:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 597
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->titleTextGroup:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setY(F)V

    .line 600
    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->maxTitleTextYMargin:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 601
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 605
    :cond_0
    return-void
.end method

.method public updateDeviceNameText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->deviceName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->deviceName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    :cond_0
    return-void
.end method

.method public updateMdxMenu()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->castMenu:Lcom/netflix/mediaclient/ui/mdx/CastMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->callbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    if-eqz v0, :cond_0

    .line 312
    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "updateMdxMenu"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->castMenu:Lcom/netflix/mediaclient/ui/mdx/CastMenu;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->update()V

    .line 316
    :cond_0
    return-void
.end method

.method public updatePlayPauseButton(Z)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 443
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playOrPauseCollapsed:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 444
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playOrPauseCollapsed:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playOrPauseExpanded:Landroid/widget/ImageView;

    aput-object v2, v0, v3

    .line 449
    :goto_0
    array-length v3, v0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 450
    if-eqz v4, :cond_0

    .line 451
    if-eqz p1, :cond_2

    const v1, 0x7f02019e

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 452
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->resumeOnClickListener:Landroid/view/View$OnClickListener;

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 446
    :cond_1
    new-array v0, v3, [Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playOrPauseExpanded:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    goto :goto_0

    .line 451
    :cond_2
    const v1, 0x7f02019d

    goto :goto_2

    .line 452
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->pauseOnClickListener:Landroid/view/View$OnClickListener;

    goto :goto_3

    .line 455
    :cond_4
    return-void
.end method

.method public updateSubtitleText(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 468
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    .line 469
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->subtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->subtitle:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->subtitleExpanded:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->subtitleExpanded:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->subtitleExpanded:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playcardCaret:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playcardCaret:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 481
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    :goto_2
    invoke-static {v2, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 483
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 471
    goto :goto_0

    :cond_4
    move v1, v2

    .line 476
    goto :goto_1

    .line 481
    :cond_5
    const/4 v1, 0x5

    goto :goto_2
.end method

.method public updateTitleText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->titleExpanded:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->titleExpanded:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    :cond_1
    return-void
.end method

.method public updateToEmptyState(Z)V
    .locals 2

    .prologue
    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateSubtitleText(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f090123

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->deviceName:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->deviceName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setControlsEnabled(Z)V

    .line 342
    return-void
.end method

.method protected updateViewsForPanelChange(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 563
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->isShowingViewForExpanded:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 564
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->isShowingViewForExpanded:Ljava/lang/Boolean;

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->isShowingViewForExpanded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_2

    .line 567
    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "Views already updated for panel expansion - skipping"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 564
    goto :goto_0

    .line 571
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->isShowingViewForExpanded:Ljava/lang/Boolean;

    .line 572
    const-string/jumbo v0, "MdxMiniPlayerViews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updating views for panel expansion, expanded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->isShowingViewForExpanded:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->isShowingViewForExpanded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 575
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->collapsedViews:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->fadeOutAndHide(Ljava/util/Collection;)V

    .line 576
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->rotateCaretTo(I)V

    goto :goto_1

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->collapsedViews:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->fadeInAndShow(Ljava/util/Collection;)V

    .line 580
    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->rotateCaretTo(I)V

    .line 581
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateEpisodeButtonVisibility()V

    goto :goto_1
.end method

.method protected updateViewsForSeekBarUsage(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 653
    if-eqz p1, :cond_1

    .line 654
    new-array v0, v4, [Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->auxControlsGroup:Landroid/view/View;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playcardControlsGroup:Landroid/view/View;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->fadeOut([Landroid/view/View;)V

    .line 655
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->deviceNameGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 656
    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->deviceNameGroup:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->fadeOutAndHide([Landroid/view/View;)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->auxControlsGroup:Landroid/view/View;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->playcardControlsGroup:Landroid/view/View;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->deviceNameGroup:Landroid/view/View;

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->fadeInAndShow([Landroid/view/View;)V

    goto :goto_0
.end method
