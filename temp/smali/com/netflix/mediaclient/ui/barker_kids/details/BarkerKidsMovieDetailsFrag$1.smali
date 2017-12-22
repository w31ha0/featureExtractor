.class Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$1;
.super Ljava/lang/Object;
.source "BarkerKidsMovieDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getImageHeight()I
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 64
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->access$100(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 66
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->access$200(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3fb70a3d    # 1.43f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public createItemView()Landroid/view/View;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lcom/netflix/mediaclient/android/widget/VideoView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->access$000(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setAdjustViewBounds(Z)V

    .line 51
    new-instance v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setClickListener(Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;)V

    .line 55
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 57
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$1;->getImageHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    return-object v0
.end method
