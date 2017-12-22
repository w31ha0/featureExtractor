.class Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowAdapter;
.super Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;
.source "LoadingLolomoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter",
        "<",
        "Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mPulseAnimator:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;-><init>(Landroid/content/Context;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    .line 105
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;-><init>(Landroid/content/Context;Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;Z)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowAdapter;->mPulseAnimator:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/netflix/android/widgetry/lolomo/RowConfig;ILcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$1;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowAdapter;-><init>(Landroid/content/Context;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0x14

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 119
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowAdapter;->mPulseAnimator:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->start()V

    .line 120
    return-void
.end method

.method public bridge synthetic onBindCoverViewHolder(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;I)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowAdapter;->onBindCoverViewHolder(Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;I)V

    return-void
.end method

.method public onBindCoverViewHolder(Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;I)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;
    .locals 6

    .prologue
    .line 110
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 111
    sget v0, Lcom/netflix/android/widgetry/R$id;->lomo_boxart_loading:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 112
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowAdapter;->getConfig()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v3

    sget v4, Lcom/netflix/android/widgetry/R$id;->lomo_boxart_loading:I

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;ILcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$1;)V

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 125
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowAdapter;->mPulseAnimator:Lcom/netflix/android/widgetry/lolomo/PulseAnimator;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/PulseAnimator;->stop()V

    .line 126
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;

    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowAdapter;->onViewRecycled(Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;

    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowAdapter;->onViewRecycled(Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingViewHolder;)V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onViewRecycled(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;)V

    .line 141
    return-void
.end method
