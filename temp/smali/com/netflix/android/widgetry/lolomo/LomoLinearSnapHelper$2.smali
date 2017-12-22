.class Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$2;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "LomoLinearSnapHelper.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$2;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$2;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    invoke-static {v0}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->access$500(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->millisecondsPerInch()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 1

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    return v0
.end method

.method protected onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 4

    .prologue
    .line 288
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$2;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$2;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    invoke-static {v1}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->access$300(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v0

    .line 290
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 291
    const/4 v2, 0x1

    aget v0, v0, v2

    .line 292
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$2;->calculateTimeForDeceleration(I)I

    move-result v2

    .line 293
    if-lez v2, :cond_0

    .line 294
    iget-object v3, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$2;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v1, v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 296
    :cond_0
    return-void
.end method

.method public setTargetPosition(I)V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$2;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    invoke-static {v0}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->access$500(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->numberOfItemsPerPage()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$2;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    invoke-static {v1}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->access$500(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->numberOfPagesToScrollOnFling()I

    move-result v1

    mul-int/2addr v0, v1

    .line 278
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$2;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    invoke-static {v1}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->access$400(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)I

    move-result v1

    if-le p1, v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$2;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    invoke-static {v1}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->access$400(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 283
    :goto_0
    invoke-super {p0, v0}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 284
    return-void

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper$2;->this$0:Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    invoke-static {v1}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->access$400(Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;)I

    move-result v1

    sub-int v0, v1, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method
