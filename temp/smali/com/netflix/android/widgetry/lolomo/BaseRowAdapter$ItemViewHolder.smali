.class public abstract Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseRowAdapter.java"


# instance fields
.field public final cover:Landroid/view/View;

.field final debugItemView:Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

.field private final mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V
    .locals 1

    .prologue
    .line 205
    invoke-static {p2}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->getItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 206
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->debugItemView:Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->cover:Landroid/view/View;

    .line 212
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->mParent:Landroid/view/ViewGroup;

    .line 213
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->debugItemView:Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private adjustItemHeight(Lcom/netflix/android/widgetry/lolomo/RowConfig;Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 299
    iget v2, p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    if-nez v2, :cond_0

    .line 300
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to adjustItemWidth() method is required before calling adjustItemHeight()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->aspectRatio()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 303
    iget v2, p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->aspectRatio()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 304
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->maxHeight()I

    move-result v2

    if-lez v2, :cond_1

    iget v2, p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->maxHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 310
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->adjustStrategy()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    move v0, v1

    .line 329
    :goto_1
    return v0

    .line 313
    :pswitch_0
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->maxHeight()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    goto :goto_0

    .line 317
    :pswitch_1
    const-string/jumbo v2, "BaseRowAdapter"

    const-string/jumbo v3, "[pos=%d] Item height too large, request re-layout with one additional item"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 319
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->incrementNumberOfItemsPerPage()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->layoutCoverView(Lcom/netflix/android/widgetry/lolomo/RowConfig;)V

    goto :goto_1

    .line 326
    :cond_2
    const/4 v0, -0x2

    iput v0, p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private adjustItemWidth(Lcom/netflix/android/widgetry/lolomo/RowConfig;Landroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 4

    .prologue
    .line 271
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->numberOfItemsPerPage()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "config.numberOfItemsPerPage need a positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->itemPadding()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 275
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->peekRatio()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->listPadding()I

    move-result v2

    sub-int/2addr v1, v2

    .line 279
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->numberOfItemsPerPage()I

    move-result v2

    div-int v2, v1, v2

    sub-int/2addr v2, v0

    iput v2, p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 281
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->peekRatio()F

    move-result v2

    iget v3, p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 283
    sub-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->numberOfItemsPerPage()I

    move-result v2

    div-int/2addr v1, v2

    sub-int v0, v1, v0

    iput v0, p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 290
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->listPadding()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 288
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->numberOfItemsPerPage()I

    move-result v2

    div-int/2addr v1, v2

    sub-int v0, v1, v0

    iput v0, p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    goto :goto_0
.end method

.method private static getItemView(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/android/widgetry/R$id;->debug_feature_lolomo_row_item_overlay:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/common/NetflixCommon;->isDebugFeatureEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;-><init>(Landroid/content/Context;)V

    .line 218
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object p0, v0

    .line 221
    :cond_0
    return-object p0
.end method


# virtual methods
.method public bind()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->cover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->cover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method layoutCoverView(Lcom/netflix/android/widgetry/lolomo/RowConfig;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 231
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->debugItemView:Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->debugItemView:Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->onLayoutCoverView()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_2

    .line 238
    const-string/jumbo v0, "BaseRowAdapter"

    const-string/jumbo v1, "[pos=%d] Parent not measured yet, will layout cover view later..."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 239
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder$1;-><init>(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;Lcom/netflix/android/widgetry/lolomo/RowConfig;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 265
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 251
    if-nez v0, :cond_3

    .line 253
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->adjustItemWidth(Lcom/netflix/android/widgetry/lolomo/RowConfig;Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 257
    invoke-direct {p0, p1, v0}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->adjustItemHeight(Lcom/netflix/android/widgetry/lolomo/RowConfig;Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .line 259
    if-eqz v1, :cond_1

    .line 260
    const-string/jumbo v1, "BaseRowAdapter"

    const-string/jumbo v2, "[pos=%d] Layout cover view to %dx%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 261
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->itemPadding()I

    move-result v1

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->itemPadding()I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->itemPadding()I

    move-result v3

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->itemPadding()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    .line 262
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method final onBindViewHolder()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->debugItemView:Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->debugItemView:Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->onBindViewHolder()V

    .line 370
    :cond_0
    return-void
.end method

.method public onFailedToRecycleView()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->debugItemView:Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->debugItemView:Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->onFailedToRecycleView()V

    .line 377
    :cond_0
    return-void
.end method

.method public onViewAttachedToWindow()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->debugItemView:Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->debugItemView:Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->onViewAttachedToWindow()V

    .line 350
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->debugItemView:Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->debugItemView:Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->onViewDetachedFromWindow()V

    .line 357
    :cond_0
    return-void
.end method

.method public onViewRecycled()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->debugItemView:Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->debugItemView:Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->onViewRecycled()V

    .line 364
    :cond_0
    return-void
.end method
