.class public Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$FakeRowAdapter;
.super Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;
.source "BaseRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter",
        "<",
        "Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final FAKE_CONFIG:Lcom/netflix/android/widgetry/lolomo/RowConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->builder(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->build()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v0

    sput-object v0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$FakeRowAdapter;->FAKE_CONFIG:Lcom/netflix/android/widgetry/lolomo/RowConfig;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 389
    sget-object v0, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$FakeRowAdapter;->FAKE_CONFIG:Lcom/netflix/android/widgetry/lolomo/RowConfig;

    invoke-direct {p0, p1, v0, p2}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;-><init>(Landroid/content/Context;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    .line 390
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public onBindCoverViewHolder(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;I)V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 384
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

    invoke-super {p0, p1, p2}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onBindViewHolder(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 384
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

    invoke-super {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onBindViewHolder(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$FakeRowAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 384
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onFailedToRecycleView(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 384
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onViewAttachedToWindow(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 384
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onViewDetachedFromWindow(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 384
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;

    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onViewRecycled(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;)V

    return-void
.end method
