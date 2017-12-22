.class Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;
.super Landroid/support/v7/widget/LinearSnapHelper;
.source "LomoLinearSnapHelper.java"


# instance fields
.field private mConfig:Lcom/netflix/android/widgetry/lolomo/RowConfig;

.field private mDraggingPosition:I

.field private mGravity:I

.field private mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mSnapListener:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$SnapListener;

.field private mSnapping:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;-><init>(ILcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$SnapListener;)V

    .line 67
    return-void
.end method

.method public constructor <init>(ILcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$SnapListener;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/support/v7/widget/LinearSnapHelper;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mDraggingPosition:I

    .line 40
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$1;

    invoke-direct {v0, p0}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$1;-><init>(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 70
    const v0, 0x800003

    if-eq p1, v0, :cond_0

    const v0, 0x800005

    if-eq p1, v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid gravity value. Use START | END constants"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p2, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mSnapListener:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$SnapListener;

    .line 74
    iput p1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mGravity:I

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$SnapListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mSnapListener:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$SnapListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mSnapping:Z

    return v0
.end method

.method static synthetic access$102(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mSnapping:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->getSnappedPosition(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mDraggingPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mDraggingPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)Lcom/netflix/android/widgetry/lolomo/RowConfig;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mConfig:Lcom/netflix/android/widgetry/lolomo/RowConfig;

    return-object v0
.end method

.method private distanceToEnd(Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;Z)I
    .locals 2

    .prologue
    .line 133
    invoke-static {p1}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->isRtlHorizontal(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->distanceToStart(Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;Z)I

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private distanceToStart(Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;Z)I
    .locals 2

    .prologue
    .line 121
    invoke-static {p1}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->isRtlHorizontal(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->distanceToEnd(Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;Z)I

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private findEndView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 195
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 196
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    .line 198
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    move-object v0, v2

    .line 228
    :goto_0
    return-object v0

    .line 202
    :cond_0
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    .line 206
    invoke-static {v3}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->isRtlHorizontal(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    .line 208
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    :goto_1
    move-object v0, p1

    .line 216
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 217
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 219
    :goto_2
    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_3

    if-nez v0, :cond_3

    move-object v0, v3

    .line 220
    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    invoke-virtual {p2, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 211
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 217
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 221
    :cond_3
    if-eqz v0, :cond_4

    move-object v0, v2

    .line 222
    goto :goto_0

    .line 225
    :cond_4
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v2

    .line 228
    goto :goto_0
.end method

.method private findStartView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 150
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 151
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    .line 153
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    move-object v0, v2

    .line 189
    :goto_0
    return-object v0

    .line 157
    :cond_0
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    .line 164
    invoke-static {v3}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->isRtlHorizontal(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    invoke-virtual {p2, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 166
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    :goto_1
    move-object v0, p1

    .line 174
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 175
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    .line 176
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_2

    const/4 v0, 0x1

    .line 178
    :goto_2
    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_3

    if-nez v0, :cond_3

    move-object v0, v3

    .line 179
    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    .line 169
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 176
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 180
    :cond_3
    if-eqz v0, :cond_4

    move-object v0, v2

    .line 181
    goto :goto_0

    .line 185
    :cond_4
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v2

    .line 189
    goto :goto_0
.end method

.method private getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    if-nez v0, :cond_0

    .line 248
    invoke-static {p1}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    return-object v0
.end method

.method private getSnappedPosition(Landroid/support/v7/widget/RecyclerView;)I
    .locals 3

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 234
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_3

    .line 235
    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mGravity:I

    const v2, 0x800003

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mGravity:I

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    .line 236
    :cond_0
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 242
    :goto_0
    return v0

    .line 237
    :cond_1
    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mGravity:I

    const v2, 0x800005

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mGravity:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_3

    .line 238
    :cond_2
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    goto :goto_0

    .line 242
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static isRtlHorizontal(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/netflix/android/widgetry/lolomo/RowConfig;)V
    .locals 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 79
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 81
    iput-object p2, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mConfig:Lcom/netflix/android/widgetry/lolomo/RowConfig;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-super {p0, v0}, Landroid/support/v7/widget/LinearSnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 84
    return-void
.end method

.method public calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 91
    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mGravity:I

    const v2, 0x800003

    if-ne v1, v2, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    invoke-direct {p0, p2, v1, v3}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->distanceToStart(Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;Z)I

    move-result v1

    aput v1, v0, v3

    .line 96
    :goto_0
    const/4 v1, 0x1

    aput v3, v0, v1

    .line 98
    return-object v0

    .line 94
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    invoke-direct {p0, p2, v1, v3}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->distanceToEnd(Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;Z)I

    move-result v1

    aput v1, v0, v3

    goto :goto_0
.end method

.method protected createSnapScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/LinearSmoothScroller;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 264
    instance-of v1, p1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-object v0

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mConfig:Lcom/netflix/android/widgetry/lolomo/RowConfig;

    if-eqz v1, :cond_0

    .line 272
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$2;

    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$2;-><init>(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    instance-of v1, p1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 105
    iget v1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mGravity:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v1, v0

    .line 115
    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->mSnapping:Z

    .line 117
    return-object v1

    .line 107
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->findStartView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 108
    goto :goto_0

    .line 110
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->findEndView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x800003
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
