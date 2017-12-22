.class Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter$1;
.super Ljava/lang/Object;
.source "BarkerMovieDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# instance fields
.field final synthetic val$this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter$1;->val$this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getImageHeight()I
    .locals 2

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter$1;->getImageWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3fb70a3d    # 1.43f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getImageWidth()I
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter$1;->val$this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter$1;->val$this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->access$1100(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;->getAllSpaceWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter$1;->val$this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getNumColumns()I

    move-result v1

    div-int/2addr v0, v1

    .line 424
    return v0
.end method


# virtual methods
.method public createItemView()Landroid/view/View;
    .locals 4

    .prologue
    .line 405
    new-instance v0, Lcom/netflix/mediaclient/android/widget/VideoView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter$1;->val$this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->access$1000(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 406
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setAdjustViewBounds(Z)V

    .line 407
    new-instance v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter$1;->val$this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter$1;->val$this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setClickListener(Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;)V

    .line 411
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 413
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter$1;->getImageWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter$1;->getImageHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 414
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setIsHorizontal(Z)V

    .line 416
    return-object v0
.end method
