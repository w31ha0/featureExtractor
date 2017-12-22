.class public Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;
.super Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;
.source "BarkerKidsShowDetailsFrag.java"


# static fields
.field private static final EXTRA_SHOW_ID:Ljava/lang/String; = "extra_show_id"

.field private static final TAG:Ljava/lang/String; = "KubrickKidsShowDetailsFrag"


# instance fields
.field isSeasonUserSelected:Z

.field protected itemDecoration:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

.field protected viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;-><init>()V

    .line 100
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;)V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->showViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;-><init>()V

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string/jumbo v2, "extra_show_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string/jumbo v2, "extra_show_details"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v0
.end method


# virtual methods
.method protected calculateSpinnerLeftPosition()I
    .locals 3

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    .line 339
    if-lez v1, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0185

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 344
    add-int/2addr v0, v1

    return v0
.end method

.method protected createSeasonsSelectorGroup()Landroid/view/ViewGroup;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    const v3, 0x7f0f008d

    .line 236
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->createSeasonsSelectorGroup()Landroid/view/ViewGroup;

    move-result-object v1

    .line 237
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->setSpinnerBackground(I)V

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;

    .line 240
    if-eqz v0, :cond_0

    .line 241
    const v2, 0x7f0f0110

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->setDropDownBackgroundColor(I)V

    .line 242
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->setDropDownTextColor(I)V

    .line 244
    :cond_0
    return-object v1
.end method

.method protected getBackgroundResource()I
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f0f00ff

    return v0
.end method

.method protected getNumColumns()I
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected getRecyclerViewShadowWidth()I
    .locals 3

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a017c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f03007e

    return v0
.end method

.method protected initDetailsViewGroup()V
    .locals 2

    .prologue
    .line 369
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsShowDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsShowDetailsViewGroup;-><init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeActionBarDummyView()V

    .line 371
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->hideRelatedTitle()V

    .line 372
    return-void
.end method

.method protected setSpinnerBackground(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 249
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 250
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 252
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0201ef

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 253
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->setAutoMirrored(Z)V

    .line 254
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 256
    if-eqz v2, :cond_0

    .line 257
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 261
    return-void
.end method

.method protected setSpinnerSelection()V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->setSeasonIndex()V

    .line 215
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->currSeasonIndex:I

    if-gez v0, :cond_1

    .line 216
    const-string/jumbo v0, "KubrickKidsShowDetailsFrag"

    const-string/jumbo v1, "No valid season index found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getSelectedItemPosition()I

    move-result v0

    .line 223
    iget v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->currSeasonIndex:I

    if-eq v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    iget v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->currSeasonIndex:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setNonTouchSelection(I)V

    goto :goto_0
.end method

.method protected setupDetailsPageParallaxScrollListener()Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-nez v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-object v0

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    .line 273
    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hidelogo()V

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getFooterViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    .line 280
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;-><init>(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    .line 289
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 291
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    new-instance v1, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$2;-><init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->setOnScrollStateChangedListener(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$IScrollStateChanged;)V

    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    goto :goto_0

    .line 283
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 284
    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getHeroImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    check-cast v4, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getHeroImage2()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;-><init>(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    goto :goto_1
.end method

.method protected setupRecyclerViewAdapter()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;-><init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 92
    return-void
.end method

.method protected setupRecyclerViewItemDecoration()V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->itemDecoration:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 357
    new-instance v0, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a016e

    .line 358
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getNumColumns()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;-><init>(II)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->itemDecoration:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    .line 359
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->itemDecoration:Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 360
    return-void
.end method

.method protected setupRecyclerViewLayoutManager()V
    .locals 2

    .prologue
    .line 363
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->setupRecyclerViewLayoutManager()V

    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 365
    return-void
.end method

.method protected setupSeasonsSpinnerAdapter()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$3;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$3;-><init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter$IViewCreator;)V

    .line 330
    const v1, 0x7f0f008d

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->setItemBackgroundColor(I)V

    .line 331
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 332
    return-void
.end method

.method protected showStandardViews()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->start()V

    .line 70
    :cond_0
    return-void
.end method

.method public switchSeason(IZ)V
    .locals 2

    .prologue
    .line 110
    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->isSeasonUserSelected:Z

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->tryGetEpisodeIndexBySeasonNumber(I)I

    move-result v1

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    check-cast v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->updateEpisodeStartIndex(I)V

    .line 115
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->switchSeason(IZ)V

    .line 116
    return-void
.end method

.method protected updateShowDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->updateShowDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setViewCreator(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 98
    return-void
.end method
