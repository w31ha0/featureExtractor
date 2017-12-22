.class public Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;
.super Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;
.source "BarkerKidsMovieDetailsFrag.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->numColumns:I

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->numColumns:I

    return v0
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;-><init>()V

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    const-string/jumbo v2, "video_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->setArguments(Landroid/os/Bundle;)V

    .line 32
    return-object v0
.end method


# virtual methods
.method protected getBackgroundResource()I
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f0f00ff

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f03007e

    return v0
.end method

.method protected getNumColumns()I
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected getRecyclerViewShadowWidth()I
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a017c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected initDetailsViewGroup(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$BarkerKidsMovieDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$BarkerKidsMovieDetailsViewGroup;-><init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeActionBarDummyView()V

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->showRelatedTitle()V

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    check-cast v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->hideDataSelector()V

    .line 41
    return-void
.end method

.method protected setupDetailsPageParallaxScrollListener()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 105
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getHeroImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    check-cast v4, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;

    .line 106
    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getHeroImage2()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v4

    aput-object v4, v3, v5

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;-><init>(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 109
    return-void
.end method

.method protected setupRecyclerView()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->setupRecyclerView()V

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setBackgroundColor(I)V

    .line 82
    :cond_0
    return-void
.end method

.method protected setupRecyclerViewAdapter()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->setupRecyclerViewAdapter()V

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    new-instance v1, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setViewCreator(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 69
    return-void
.end method

.method protected setupRecyclerViewItemDecoration()V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0184

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->numColumns:I

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 117
    return-void
.end method

.method protected setupRecyclerViewLayoutManager()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->setupRecyclerViewLayoutManager()V

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    return-void
.end method
