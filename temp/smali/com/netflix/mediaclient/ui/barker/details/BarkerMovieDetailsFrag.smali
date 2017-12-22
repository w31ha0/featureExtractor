.class public Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;
.super Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;
.source "BarkerMovieDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/IHandleBackPress;


# static fields
.field private static final ANIMATE_IN_DURATION_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "BarkerMovieDetailsFrag"


# instance fields
.field private barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

.field private copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

.field private fragBackground:Landroid/view/View;

.field private fromSameActivityType:Z

.field private innerGridDecoration:Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

.field private isFromRelated:Z

.field previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

.field private relatedTitlesHistory:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;",
            ">;"
        }
    .end annotation
.end field

.field private rootContainer:Landroid/view/View;

.field private showRecyclerBackground:Z

.field private supressAnimateIn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->supressAnimateIn:Z

    .line 52
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->innerGridDecoration:Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->videoId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->fetchMovieData()V

    return-void
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->isFromRelated:Z

    return p1
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    return-object v0
.end method

.method private addCopyrightAsFooter()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->create(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;)Lcom/netflix/mediaclient/ui/details/CopyrightView;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->setGravityAsCenter()V

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;-><init>()V

    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string/jumbo v2, "video_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-object v0
.end method

.method private restorePreviousRelatedTitle()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->titleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->videoId:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->fetchMovieData()V

    .line 80
    :cond_0
    return-void
.end method

.method private setSameActivity()V
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_same_activity_type"

    const/4 v2, 0x0

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->fromSameActivityType:Z

    .line 139
    :cond_0
    return-void
.end method

.method private setupBackground(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->fromSameActivityType:Z

    if-eqz v0, :cond_1

    .line 151
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/api/Api16Util;->setBackgroundDrawableCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->setupRecyclerShadow()V

    goto :goto_0
.end method

.method private setupDismissClick()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->rootContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->rootContainer:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$2;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :cond_0
    return-void
.end method

.method private updateTrackId(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    .line 207
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    invoke-static {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->updateTrackId(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Lcom/netflix/mediaclient/servicemgr/interface_/details/Similarable;Ljava/util/Stack;Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;)V

    .line 209
    :cond_0
    return-void
.end method


# virtual methods
.method protected animateIn()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/high16 v2, 0x3f800000    # 1.0f

    .line 247
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 250
    const/16 v1, 0x1f4

    invoke-virtual {v0, v2, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setAlphaWithAnimation(FI)V

    .line 252
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->fromSameActivityType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->showRecyclerBackground:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->fragBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->fragBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 255
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 256
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 258
    :cond_0
    return-void
.end method

.method protected findViews(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->findViews(Landroid/view/View;)V

    .line 283
    const v0, 0x7f100209

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->rootContainer:Landroid/view/View;

    .line 284
    const v0, 0x7f10020c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->fragBackground:Landroid/view/View;

    .line 285
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->rootContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->rootContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getBackgroundResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 288
    :cond_0
    return-void
.end method

.method protected getBackgroundResource()I
    .locals 1

    .prologue
    .line 291
    const v0, 0x7f0f00fb

    return v0
.end method

.method protected getNumColumns()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getNumberOfSims()I

    move-result v0

    return v0
.end method

.method protected getRecyclerViewShadowWidth()I
    .locals 3

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 181
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a017c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public handleBackPressed()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->restorePreviousRelatedTitle()V

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initDetailsViewGroup(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 296
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeActionBarDummyView()V

    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->showRelatedTitle()V

    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    check-cast v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->hideDataSelector()V

    .line 300
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->onCreate(Landroid/os/Bundle;)V

    .line 86
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    .line 87
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->supressAnimateIn:Z

    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState$RestoreInstanceState;->invoke(Landroid/os/Bundle;Ljava/util/Stack;)V

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->titleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->videoId:Ljava/lang/String;

    .line 97
    :cond_0
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 102
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->setSameActivity()V

    .line 104
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->setupBackground(Landroid/view/View;)V

    .line 105
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getVideoId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    const/4 v3, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;-><init>(Ljava/lang/String;Landroid/os/Parcelable;IILcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 114
    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState$SaveInstanceState;->invoke(Landroid/os/Bundle;Ljava/util/Stack;)V

    .line 118
    :cond_0
    return-void
.end method

.method protected setScrollPosition()V
    .locals 2

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->isFromRelated:Z

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->isFromRelated:Z

    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->recyclerViewState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->recyclerViewState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    .line 228
    :cond_1
    return-void
.end method

.method protected setupDetailsPageParallaxScrollListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hidelogo()V

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/View;

    invoke-static {v2, v0, v1, v2, v2}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->createDefault(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    .line 344
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0
.end method

.method protected setupRecyclerShadow()V
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->fragBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->showRecyclerBackground:Z

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->fragBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getRecyclerViewShadowWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 175
    :cond_0
    return-void
.end method

.method protected setupRecyclerView()V
    .locals 3

    .prologue
    .line 159
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setupRecyclerView()V

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setBackgroundColor(I)V

    .line 163
    :cond_0
    return-void
.end method

.method protected setupRecyclerViewAdapter()V
    .locals 3

    .prologue
    .line 304
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter;

    const/4 v1, 0x1

    iget v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->numColumns:I

    invoke-direct {v0, p0, v1, v2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;ZI)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addHeaderView(Landroid/view/View;)V

    .line 307
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->addCopyrightAsFooter()V

    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 309
    return-void
.end method

.method protected setupRecyclerViewItemDecoration()V
    .locals 3

    .prologue
    .line 352
    new-instance v0, Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->numColumns:I

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->innerGridDecoration:Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

    .line 353
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->innerGridDecoration:Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 354
    return-void
.end method

.method protected setupRecyclerViewLayoutManager()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->setupRecyclerViewLayoutManager()V

    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 314
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAlpha(F)V

    .line 315
    return-void
.end method

.method protected showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setVideoAndEpisodeIds(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_1
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    .line 195
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->showViews()V

    .line 196
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->setupDismissClick()V

    .line 197
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->updateBookmark(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    .line 198
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->updateTrackId(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    .line 199
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->setScrollPosition()V

    goto :goto_0
.end method

.method protected bridge synthetic showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    return-void
.end method

.method protected showViews()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->rootContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->supressAnimateIn:Z

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAlpha(F)V

    .line 270
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setAlpha(F)V

    .line 272
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->fromSameActivityType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->showRecyclerBackground:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->fragBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->fragBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 277
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->animateIn()V

    goto :goto_0
.end method

.method protected updateBookmark(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    check-cast v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;

    .line 233
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    .line 234
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v1

    .line 236
    if-lez v1, :cond_0

    .line 237
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->setBookmarkVisibility(I)V

    .line 238
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->updateBookmark(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->setBookmarkVisibility(I)V

    goto :goto_0
.end method
