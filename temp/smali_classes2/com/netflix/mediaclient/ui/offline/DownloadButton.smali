.class public Lcom/netflix/mediaclient/ui/offline/DownloadButton;
.super Landroid/widget/FrameLayout;
.source "DownloadButton.java"


# static fields
.field static final BUTTON_TAG:Ljava/lang/String; = "download_btn"

.field private static final TAG:Ljava/lang/String; = "download_button"

.field static preQueued:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buttonState:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field private mDownloadButtonClickListener:Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;

.field private playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

.field private playableId:Ljava/lang/String;

.field private primaryMessageView:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private showPrimaryMessages:Z

.field private showViewMyDownloads:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->preQueued:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->NOT_AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->buttonState:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->showPrimaryMessages:Z

    if-eqz v0, :cond_0

    const v0, 0x7f030054

    :goto_0
    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->findViews(Landroid/view/View;)V

    .line 90
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->initViews()V

    .line 91
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setupLongPressMessages()V

    .line 92
    return-void

    .line 86
    :cond_0
    const v0, 0x7f030053

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->playableId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->buttonState:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->showViewMyDownloads:Z

    return v0
.end method

.method private animateIconChange(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 385
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 391
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static clearPreQueued()V
    .locals 1

    .prologue
    .line 563
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->preQueued:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 564
    return-void
.end method

.method private findViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    const v0, 0x7f100195

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    .line 108
    const v0, 0x7f100196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->primaryMessageView:Landroid/widget/TextView;

    .line 109
    return-void
.end method

.method private getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 336
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    :cond_0
    const v1, 0x7f0200b3

    if-eq p1, v1, :cond_1

    const v1, 0x7f0200b0

    if-ne p1, v1, :cond_2

    .line 339
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f008c

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 342
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getTextColor()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 348
    :cond_2
    return-object v0
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    sget-object v0, Lcom/netflix/mediaclient/R$styleable;->DownloadButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->showPrimaryMessages:Z

    .line 102
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->showViewMyDownloads:Z

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f0200b0

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    const-string/jumbo v0, "download_btn"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method public static removePlayablesFromPreQueued(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 553
    sget-object v2, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->preQueued:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 555
    :cond_0
    return-void
.end method

.method public static removePreQueued(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 559
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->preQueued:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 560
    return-void
.end method

.method private rotateIcon()V
    .locals 5

    .prologue
    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 356
    :cond_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 357
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 358
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 360
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$2;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 381
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private setButtonIcon()V
    .locals 4

    .prologue
    const v3, 0x7f090079

    const/4 v2, 0x0

    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 279
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$3;->$SwitchMap$com$netflix$mediaclient$ui$offline$DownloadButton$ButtonState:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->buttonState:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 303
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f0200b3

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setPrimaryMessage(I)V

    .line 306
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->rotateIcon()V

    goto :goto_0

    .line 281
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 282
    const v0, 0x7f0200b6

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->animateIconChange(Landroid/graphics/drawable/Drawable;)V

    .line 283
    const v0, 0x7f090078

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setPrimaryMessage(I)V

    goto :goto_0

    .line 287
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 288
    const v0, 0x7f0200b1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->animateIconChange(Landroid/graphics/drawable/Drawable;)V

    .line 289
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setPrimaryMessage(I)V

    goto :goto_0

    .line 292
    :pswitch_3
    const v0, 0x7f0200b5

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->animateIconChange(Landroid/graphics/drawable/Drawable;)V

    .line 293
    const v0, 0x7f090077

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setPrimaryMessage(I)V

    goto :goto_0

    .line 297
    :pswitch_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 298
    const v0, 0x7f0200b4

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->animateIconChange(Landroid/graphics/drawable/Drawable;)V

    .line 299
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setPrimaryMessage(I)V

    goto :goto_0

    .line 310
    :pswitch_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 311
    const v0, 0x7f0200b2

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->animateIconChange(Landroid/graphics/drawable/Drawable;)V

    .line 312
    const v0, 0x7f09007a

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setPrimaryMessage(I)V

    goto/16 :goto_0

    .line 316
    :pswitch_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 317
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 324
    :pswitch_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f0200b0

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getBrowseExperienceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 326
    const v0, 0x7f090076

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setPrimaryMessage(I)V

    goto/16 :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private setPrimaryMessage(I)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->primaryMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->primaryMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->primaryMessageView:Landroid/widget/TextView;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->ACTION_LABEL:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->manageSectionTextColor(Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)V

    goto :goto_0
.end method

.method private setupLongPressMessages()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$1;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getPlayableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->playableId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->buttonState:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object v0
.end method

.method public onDownloadButtonSelection()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->mDownloadButtonClickListener:Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->mDownloadButtonClickListener:Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;->onDownloadButtonSelected(Landroid/view/View;)V

    .line 68
    :cond_0
    return-void
.end method

.method public refreshDownloadButton(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .prologue
    .line 567
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->playableId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 570
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 157
    :cond_0
    return-void
.end method

.method setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 256
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->buttonState:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 257
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->playableId:Ljava/lang/String;

    .line 259
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-eq p1, v0, :cond_0

    .line 260
    invoke-static {p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->removePreQueued(Ljava/lang/String;)V

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setButtonIcon()V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "download_btn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setTag(Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public setStateFromPlayable(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    const-string/jumbo v0, "download_button"

    const-string/jumbo v3, "setStateFromPlayable"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 172
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v3

    if-nez v3, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    .line 179
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    .line 180
    new-instance v3, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;

    invoke-direct {v3, p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadButton;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->mDownloadButtonClickListener:Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;

    .line 181
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->mDownloadButtonClickListener:Lcom/netflix/mediaclient/ui/offline/DownloadButton$DownloadButtonClickListener;

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v3

    .line 183
    const/4 v0, 0x0

    .line 184
    if-eqz v3, :cond_2

    .line 185
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getOfflinePlayableViewData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    .line 187
    :cond_2
    const-string/jumbo v3, "download_button"

    const-string/jumbo v4, "setStateFromPlayable hasOfflinePlayableData=%b"

    new-array v5, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 188
    if-eqz v0, :cond_a

    .line 189
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->hasErrorOrWarning(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 187
    goto :goto_1

    .line 194
    :cond_4
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    .line 195
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPercentageDownloaded()I

    move-result v2

    .line 197
    sget-object v3, Lcom/netflix/mediaclient/ui/offline/DownloadButton$3;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$DownloadState:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 235
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->preQueued:Ljava/util/List;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 236
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAvailableOffline()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    :goto_2
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :pswitch_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getWatchState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->hasError()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 201
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->SAVED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->DOWNLOADING:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setProgress(I)V

    goto/16 :goto_0

    .line 217
    :pswitch_3
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->showBangIconErrorInUi()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 219
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_6
    if-lez v2, :cond_7

    .line 222
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->PAUSED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setProgress(I)V

    goto/16 :goto_0

    .line 225
    :cond_7
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    :pswitch_4
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :cond_8
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->NOT_AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_2

    .line 238
    :cond_9
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :cond_a
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->preQueued:Ljava/util/List;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 243
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAvailableOffline()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    :goto_3
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->NOT_AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_3

    .line 245
    :cond_c
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
