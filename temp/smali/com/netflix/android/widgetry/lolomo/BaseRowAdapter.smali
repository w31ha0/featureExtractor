.class public abstract Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseRowAdapter"


# instance fields
.field private final mConfig:Lcom/netflix/android/widgetry/lolomo/RowConfig;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private mLinearLayoutManager:Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;

.field private final mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

.field private final mRowPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 47
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$1;

    invoke-direct {v0, p0}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$1;-><init>(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    iput-object p2, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->mConfig:Lcom/netflix/android/widgetry/lolomo/RowConfig;

    .line 64
    iput p3, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->mRowPosition:I

    .line 65
    return-void
.end method

.method public static buildFakeLomoAdapter(Landroid/content/Context;I)Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$FakeRowAdapter;
    .locals 1

    .prologue
    .line 381
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$FakeRowAdapter;

    invoke-direct {v0, p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$FakeRowAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public getConfig()Lcom/netflix/android/widgetry/lolomo/RowConfig;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->mConfig:Lcom/netflix/android/widgetry/lolomo/RowConfig;

    return-object v0
.end method

.method public getLinearLayoutManager()Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->mLinearLayoutManager:Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;

    return-object v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->mRecyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    return-object v0
.end method

.method protected getRowPosition()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->mRowPosition:I

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->mLinearLayoutManager:Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;

    move-object v0, p1

    .line 158
    check-cast v0, Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->mRecyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    .line 159
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 160
    return-void
.end method

.method public abstract onBindCoverViewHolder(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onBindViewHolder(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onBindViewHolder(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public final onBindViewHolder(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onBindCoverViewHolder(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;I)V

    .line 117
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->getConfig()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->layoutCoverView(Lcom/netflix/android/widgetry/lolomo/RowConfig;)V

    .line 118
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->onBindViewHolder()V

    .line 119
    return-void
.end method

.method public final onBindViewHolder(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onBindViewHolder(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;I)V

    .line 152
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public onDestroy(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->mLinearLayoutManager:Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;

    .line 166
    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->mRecyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    .line 167
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 168
    return-void
.end method

.method public bridge synthetic onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onFailedToRecycleView(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onFailedToRecycleView(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->onFailedToRecycleView()V

    .line 125
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onParentScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method protected onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method protected onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onViewAttachedToWindow(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p1, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v0, :cond_0

    iget-object v0, p1, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v0, :cond_1

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->getConfig()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->layoutCoverView(Lcom/netflix/android/widgetry/lolomo/RowConfig;)V

    .line 134
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->onViewAttachedToWindow()V

    .line 135
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 136
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onViewDetachedFromWindow(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->onViewDetachedFromWindow()V

    .line 142
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 143
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onViewRecycled(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->onViewRecycled()V

    .line 80
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 81
    return-void
.end method

.method public shouldHideRowIfEmpty()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method
