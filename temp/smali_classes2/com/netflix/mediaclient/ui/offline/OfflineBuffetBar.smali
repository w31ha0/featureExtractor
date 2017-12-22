.class public Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;
.super Lcom/netflix/android/widgetry/buffet/BuffetBar;
.source "OfflineBuffetBar.java"


# instance fields
.field mDownloadingView:Landroid/widget/ImageView;

.field mLoadingView:Landroid/widget/ProgressBar;

.field mProgressView:Lcom/netflix/mediaclient/android/widget/NetflixTextView;

.field progessAnimation:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;-><init>(Landroid/view/ViewGroup;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->inflateAndFindViews(Landroid/view/ViewGroup;)V

    .line 32
    return-void
.end method

.method private inflateAndFindViews(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 38
    const v1, 0x7f0300bc

    .line 39
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->getTargetParent()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    .line 38
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->getBuffetLayout()Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getMessageViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->getBuffetLayout()Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getMessageViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f100282

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/NetflixTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->mProgressView:Lcom/netflix/mediaclient/android/widget/NetflixTextView;

    .line 43
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->getBuffetLayout()Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getMessageViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f100281

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->mLoadingView:Landroid/widget/ProgressBar;

    .line 44
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->getBuffetLayout()Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getMessageViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f100283

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->mDownloadingView:Landroid/widget/ImageView;

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->mDownloadingView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->progessAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 48
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->mDownloadingView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->getBuffetLayout()Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 52
    return-void
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;II)Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;-><init>(Landroid/view/ViewGroup;)V

    .line 61
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->setText(Ljava/lang/CharSequence;)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 62
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->setBackgroundColor(I)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 64
    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->setDuration(I)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 65
    return-object v0
.end method


# virtual methods
.method public hideLoading()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->mLoadingView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    return-void
.end method

.method public hidePercentageAndLoading()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->mProgressView:Lcom/netflix/mediaclient/android/widget/NetflixTextView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->mLoadingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->mDownloadingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->progessAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 101
    return-void
.end method

.method public pauseLoadingProgress()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->progessAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 108
    return-void
.end method

.method public resumeLoadingProgress()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->progessAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 115
    return-void
.end method

.method public showLoading()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->progessAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->mLoadingView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public showProgressWithAnimation(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    if-lez p1, :cond_2

    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->mProgressView:Lcom/netflix/mediaclient/android/widget/NetflixTextView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixTextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->mProgressView:Lcom/netflix/mediaclient/android/widget/NetflixTextView;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->getAsPercentString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->mDownloadingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->progessAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->progessAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->hideLoading()V

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->mProgressView:Lcom/netflix/mediaclient/android/widget/NetflixTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->mDownloadingView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->progessAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method
