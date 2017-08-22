.class public Lcom/ifixit/android/sectionheaders/SectionListView;
.super Landroid/widget/FrameLayout;
.source "SectionListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private mAdapter:Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;

.field private mHeaderPosition:I

.field private mListView:Landroid/widget/ListView;

.field private mPinnedHeader:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mHeaderPosition:I

    .line 21
    invoke-direct {p0, p1}, Lcom/ifixit/android/sectionheaders/SectionListView;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mHeaderPosition:I

    .line 26
    invoke-direct {p0, p1}, Lcom/ifixit/android/sectionheaders/SectionListView;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "def"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mHeaderPosition:I

    .line 31
    invoke-direct {p0, p1}, Lcom/ifixit/android/sectionheaders/SectionListView;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 37
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030067

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    const v1, 0x7f0e009e

    invoke-virtual {p0, v1}, Lcom/ifixit/android/sectionheaders/SectionListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mListView:Landroid/widget/ListView;

    .line 40
    return-void
.end method

.method private injectPinnedHeader(Landroid/view/View;)V
    .locals 3
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mPinnedHeader:Landroid/view/View;

    if-eq v1, p1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mPinnedHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mPinnedHeader:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/ifixit/android/sectionheaders/SectionListView;->removeView(Landroid/view/View;)V

    .line 88
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 90
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, p1, v0}, Lcom/ifixit/android/sectionheaders/SectionListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iput-object p1, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mPinnedHeader:Landroid/view/View;

    .line 94
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 9
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 56
    iget-object v5, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mAdapter:Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;

    invoke-virtual {v5, p2}, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;->getHeaderPosition(I)I

    move-result v0

    .local v0, "headerPos":I
    iget v5, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mHeaderPosition:I

    if-eq v0, v5, :cond_0

    .line 57
    iput v0, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mHeaderPosition:I

    .line 58
    iget-object v5, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mAdapter:Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;

    iget v6, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mHeaderPosition:I

    iget-object v7, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mPinnedHeader:Landroid/view/View;

    invoke-virtual {v5, v6, v7, p0}, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/ifixit/android/sectionheaders/SectionListView;->injectPinnedHeader(Landroid/view/View;)V

    .line 61
    :cond_0
    iget-object v5, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mAdapter:Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;

    invoke-virtual {v5, p2}, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;->getNextHeaderPosition(I)I

    move-result v1

    .line 62
    .local v1, "nextHeader":I
    sub-int v2, v1, p2

    .line 64
    .local v2, "nextHeaderChild":I
    iget-object v5, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 68
    .local v3, "nextView":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mPinnedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 69
    :cond_1
    iget-object v5, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mPinnedHeader:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 74
    .local v4, "top":I
    :goto_0
    iget-object v5, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mPinnedHeader:Landroid/view/View;

    iget-object v6, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mPinnedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mPinnedHeader:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v7, v4, v7

    iget-object v8, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mPinnedHeader:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/view/View;->layout(IIII)V

    .line 75
    return-void

    .line 71
    .end local v4    # "top":I
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .restart local v4    # "top":I
    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 78
    return-void
.end method

.method public setAdapter(Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mAdapter:Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;

    .line 48
    iget-object v0, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mAdapter:Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    iget-object v0, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 50
    iget-object v0, p0, Lcom/ifixit/android/sectionheaders/SectionListView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 51
    return-void
.end method
