.class public Lcom/taiwan/imageload/LoadMoreGridView;
.super Landroid/widget/GridView;
.source "LoadMoreGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taiwan/imageload/LoadMoreGridView$OnLoadMoreListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadMoreListView"


# instance fields
.field private mCurrentScrollState:I

.field private mIsLoadingMore:Z

.field private mOnLoadMoreListener:Lcom/taiwan/imageload/LoadMoreGridView$OnLoadMoreListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwan/imageload/LoadMoreGridView;->mIsLoadingMore:Z

    .line 34
    invoke-direct {p0, p1}, Lcom/taiwan/imageload/LoadMoreGridView;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwan/imageload/LoadMoreGridView;->mIsLoadingMore:Z

    .line 39
    invoke-direct {p0, p1}, Lcom/taiwan/imageload/LoadMoreGridView;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwan/imageload/LoadMoreGridView;->mIsLoadingMore:Z

    .line 44
    invoke-direct {p0, p1}, Lcom/taiwan/imageload/LoadMoreGridView;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .prologue
    .line 118
    const-string v0, "LoadMoreListView"

    const-string v1, "onLoadMore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/taiwan/imageload/LoadMoreGridView;->mOnLoadMoreListener:Lcom/taiwan/imageload/LoadMoreGridView$OnLoadMoreListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/taiwan/imageload/LoadMoreGridView;->mOnLoadMoreListener:Lcom/taiwan/imageload/LoadMoreGridView$OnLoadMoreListener;

    invoke-interface {v0}, Lcom/taiwan/imageload/LoadMoreGridView$OnLoadMoreListener;->onLoadMore()V

    .line 122
    :cond_0
    return-void
.end method

.method public onLoadMoreComplete()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwan/imageload/LoadMoreGridView;->mIsLoadingMore:Z

    .line 130
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 82
    iget-object v2, p0, Lcom/taiwan/imageload/LoadMoreGridView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/taiwan/imageload/LoadMoreGridView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/taiwan/imageload/LoadMoreGridView;->mOnLoadMoreListener:Lcom/taiwan/imageload/LoadMoreGridView$OnLoadMoreListener;

    if-eqz v2, :cond_1

    .line 89
    if-ne p3, p4, :cond_2

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    add-int v2, p2, p3

    if-lt v2, p4, :cond_3

    move v0, v1

    .line 97
    .local v0, "loadMore":Z
    :goto_1
    iget-boolean v2, p0, Lcom/taiwan/imageload/LoadMoreGridView;->mIsLoadingMore:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/taiwan/imageload/LoadMoreGridView;->mCurrentScrollState:I

    if-eqz v2, :cond_1

    .line 100
    iput-boolean v1, p0, Lcom/taiwan/imageload/LoadMoreGridView;->mIsLoadingMore:Z

    .line 101
    invoke-virtual {p0}, Lcom/taiwan/imageload/LoadMoreGridView;->onLoadMore()V

    goto :goto_0

    .line 95
    .end local v0    # "loadMore":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 109
    iput p2, p0, Lcom/taiwan/imageload/LoadMoreGridView;->mCurrentScrollState:I

    .line 111
    iget-object v0, p0, Lcom/taiwan/imageload/LoadMoreGridView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/taiwan/imageload/LoadMoreGridView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 115
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/taiwan/imageload/LoadMoreGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    return-void
.end method

.method public setOnLoadMoreListener(Lcom/taiwan/imageload/LoadMoreGridView$OnLoadMoreListener;)V
    .locals 0
    .param p1, "onLoadMoreListener"    # Lcom/taiwan/imageload/LoadMoreGridView$OnLoadMoreListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/taiwan/imageload/LoadMoreGridView;->mOnLoadMoreListener:Lcom/taiwan/imageload/LoadMoreGridView$OnLoadMoreListener;

    .line 76
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/taiwan/imageload/LoadMoreGridView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 65
    return-void
.end method
