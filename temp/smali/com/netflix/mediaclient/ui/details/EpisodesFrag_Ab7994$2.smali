.class Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;
.super Ljava/lang/Object;
.source "EpisodesFrag_Ab7994.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# instance fields
.field private height:I

.field padding:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;

.field private width:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;)V
    .locals 2

    .prologue
    .line 255
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;

    .line 260
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;->padding:I

    .line 264
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;->calculateViewDimensions()V

    .line 265
    return-void
.end method

.method private calculateViewDimensions()V
    .locals 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 285
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 286
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;

    .line 287
    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->access$000(Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0109

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->access$000(Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;->width:I

    .line 289
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;->width:I

    int-to-float v0, v0

    const v1, 0x3fb70a3d    # 1.43f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;->height:I

    .line 290
    return-void
.end method


# virtual methods
.method public createItemView()Landroid/view/View;
    .locals 4

    .prologue
    .line 269
    new-instance v0, Lcom/netflix/mediaclient/android/widget/VideoView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 270
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setAdjustViewBounds(Z)V

    .line 273
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 275
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;->width:I

    iget v3, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994$2;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 276
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    return-object v0
.end method
