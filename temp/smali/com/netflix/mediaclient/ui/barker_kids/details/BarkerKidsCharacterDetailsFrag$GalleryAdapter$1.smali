.class Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter$1;
.super Ljava/lang/Object;
.source "BarkerKidsCharacterDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# instance fields
.field final synthetic val$this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter$1;->val$this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getImageHeight()I
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter$1;->val$this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 270
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter$1;->val$this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getNumColumns()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v1, v0

    .line 272
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter$1;->val$this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->shouldRenderAsSDP:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f100000    # 0.5625f

    .line 273
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter$1;->val$this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    sub-float v1, v2, v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter$1;->val$this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getNumColumns()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 272
    :cond_0
    const v0, 0x3fb70a3d    # 1.43f

    goto :goto_0
.end method


# virtual methods
.method public createItemView()Landroid/view/View;
    .locals 4

    .prologue
    .line 255
    new-instance v0, Lcom/netflix/mediaclient/android/widget/VideoView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter$1;->val$this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$900(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 256
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setAdjustViewBounds(Z)V

    .line 260
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 262
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter$1;->getImageHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 263
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter$1;->val$this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->shouldRenderAsSDP:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setIsHorizontal(Z)V

    .line 265
    return-object v0
.end method
