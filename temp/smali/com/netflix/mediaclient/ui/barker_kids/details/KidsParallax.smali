.class Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;
.super Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;
.source "KidsParallax.java"


# static fields
.field private static final TOOLBAR_FADE_DURATION_MS:I = 0x12c

.field private static final TRACKER_VIEW_FADE_INTO_ACTIONBAR_FADEIN_DURATION_MS:I = 0x12c

.field private static final TRACKER_VIEW_FADE_INTO_ACTIONBAR_FADEOUT_DURATION_MS:I = 0x12c


# instance fields
.field private animating:Z

.field private finalTrackingPosition:I

.field private isLatched:Z

.field private shadow:Landroid/view/View;

.field private toolbarView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 29
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, v6

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;-><init>(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;IIILandroid/view/View;)V

    .line 32
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->finalTrackingPosition:I

    .line 33
    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->setApplyToolBarGradientTransform(Z)V

    .line 34
    return-void
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->isLatched:Z

    return p1
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->animating:Z

    return p1
.end method

.method private fadeInActionBarColor()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 111
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->isLatched:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->animating:Z

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 114
    if-eqz v0, :cond_0

    .line 115
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->animating:Z

    .line 116
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 117
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    new-instance v2, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax$1;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax$1;-><init>(Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;Landroid/graphics/drawable/TransitionDrawable;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method private fadeOutActionbarColor()V
    .locals 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->isLatched:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->animating:Z

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 141
    if-eqz v0, :cond_0

    .line 142
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 143
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->isLatched:Z

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method


# virtual methods
.method protected getLatchPosition()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getDefaultActionBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTrackerViewFinalXPosition()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->finalTrackingPosition:I

    return v0
.end method

.method protected getTrackerViewLatchFadeinDuration()I
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x12c

    return v0
.end method

.method protected getTrackerViewLatchFadeoutDuration()I
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x12c

    return v0
.end method

.method protected onHeaderShown()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->fadeOutActionbarColor()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->shadow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->shadow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_1
    return-void
.end method

.method protected onItemsShown()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->fadeInActionBarColor()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->shadow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->shadow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_1
    return-void
.end method

.method protected onTrackingViewLatched()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->fadeInActionBarColor()V

    .line 75
    :cond_0
    return-void
.end method

.method protected onTrackingViewUnlatched()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->trackingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->fadeOutActionbarColor()V

    .line 81
    :cond_0
    return-void
.end method

.method protected setInitialToolbarColor()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->shadow:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->toolbarView:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/api/Api16Util;->setBackgroundDrawableCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_0
    return-void
.end method

.method protected setToolbarColor()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public setToolbarColor(I)V
    .locals 0

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->onHeaderShown()V

    .line 69
    :cond_0
    return-void
.end method
