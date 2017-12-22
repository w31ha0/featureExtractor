.class public abstract Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;
.super Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowViewHolder;
.source "BaseVerticalRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowViewHolder;"
    }
.end annotation


# instance fields
.field public final layoutManager:Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;

.field public final recyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;


# direct methods
.method protected constructor <init>(Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 313
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowViewHolder;-><init>(Landroid/view/View;)V

    .line 315
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;->layoutManager:Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;

    .line 316
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;->recyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    .line 317
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;->recyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lomoId not found in itemView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;->recyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;->layoutManager:Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 321
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;->recyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    invoke-virtual {v0, v4}, Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;->setScrollingTouchSlop(I)V

    .line 323
    invoke-virtual {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->recycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;->recyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    invoke-virtual {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->recycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;->recyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    invoke-virtual {v0, v4}, Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;->setHasFixedSize(Z)V

    .line 328
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;->layoutManager:Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;

    invoke-virtual {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->numberOfItemsPerPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;->setInitialPrefetchItemCount(I)V

    .line 330
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;->recyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    invoke-virtual {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->listPadding()I

    move-result v1

    invoke-virtual {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->listPadding()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;->setPadding(IIII)V

    .line 332
    invoke-virtual {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->freeScroll()Z

    move-result v0

    if-nez v0, :cond_2

    .line 333
    invoke-virtual {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->numberOfItemsPerPage()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 334
    new-instance v0, Landroid/support/v7/widget/PagerSnapHelper;

    invoke-direct {v0}, Landroid/support/v7/widget/PagerSnapHelper;-><init>()V

    .line 335
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;->recyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PagerSnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 341
    :cond_2
    :goto_0
    return-void

    .line 337
    :cond_3
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;

    const v1, 0x800003

    invoke-direct {v0, v1}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;-><init>(I)V

    .line 338
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;->recyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    invoke-virtual {v0, v1, p2}, Lcom/netflix/android/widgetry/lolomo/LomoLinearSnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/netflix/android/widgetry/lolomo/RowConfig;)V

    goto :goto_0
.end method


# virtual methods
.method public final bind(Ljava/lang/Object;Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;->recyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    invoke-virtual {v0, p2}, Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 345
    if-eqz p3, :cond_0

    .line 346
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;->layoutManager:Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;

    invoke-virtual {v0, p3}, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 348
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;->onBind(Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method public abstract onBind(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
