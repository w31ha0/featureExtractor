.class public Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter;
.super Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;
.source "LoadingLolomoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter",
        "<",
        "Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAGIC_COUNT:I = 0x14

.field private static final TYPE_LOADING:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netflix/android/widgetry/lolomo/RowConfig;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/android/widgetry/lolomo/RowConfig;

    .line 36
    invoke-virtual {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->toBuilder()Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v3}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setViewType(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    new-instance v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 38
    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->build()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v1

    aput-object v1, v0, v3

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;-><init>(Landroid/content/Context;[Lcom/netflix/android/widgetry/lolomo/RowConfig;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected buildLomoAdapter(Landroid/content/Context;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowAdapter;-><init>(Landroid/content/Context;Lcom/netflix/android/widgetry/lolomo/RowConfig;ILcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$1;)V

    return-object v0
.end method

.method protected getLomoCount()I
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x14

    return v0
.end method

.method public getLomoViewType(I)I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowViewHolder;ILcom/netflix/android/widgetry/lolomo/BaseRowAdapter;Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter;->onBindViewHolder(Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;ILcom/netflix/android/widgetry/lolomo/BaseRowAdapter;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;ILcom/netflix/android/widgetry/lolomo/BaseRowAdapter;Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p1, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;->recyclerView:Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;

    invoke-virtual {v0, p3}, Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 67
    if-eqz p4, :cond_0

    .line 68
    iget-object v0, p1, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;->layoutManager:Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;

    invoke-virtual {v0, p4}, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;Lcom/netflix/android/widgetry/lolomo/RowConfig;)Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowViewHolder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;Lcom/netflix/android/widgetry/lolomo/RowConfig;)Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;Lcom/netflix/android/widgetry/lolomo/RowConfig;)Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;

    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/netflix/android/widgetry/R$layout;->lomo_loading:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/netflix/android/widgetry/R$id;->lolomo_row:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;-><init>(Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;ILcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$1;)V

    return-object v0
.end method
