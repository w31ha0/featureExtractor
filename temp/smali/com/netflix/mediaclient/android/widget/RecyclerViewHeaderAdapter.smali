.class public abstract Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerViewHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecyclerViewHeaderAdapter"

.field private static final TYPE_FOOTER:I = 0x3

.field private static final TYPE_HEADER:I = 0x0

.field public static final TYPE_ITEM_ONE:I = 0x1

.field public static final TYPE_ITEM_TWO:I = 0x2


# instance fields
.field protected final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;"
        }
    .end annotation
.end field

.field private footerView:Landroid/view/View;

.field private final headerViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private isSingleChoiceMode:Z

.field private itemCheckedPosition:I

.field private itemContentType:I

.field private lastCheckedView:Landroid/widget/Checkable;

.field private prevCount:I

.field private prevHeaderCount:I

.field private trackable:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;

.field private viewCreator:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 60
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->headerViews:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->data:Ljava/util/List;

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->itemContentType:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->lastCheckedView:Landroid/widget/Checkable;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->isSingleChoiceMode:Z

    .line 48
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->itemCheckedPosition:I

    .line 207
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->prevCount:I

    .line 230
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->prevHeaderCount:I

    .line 61
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->viewCreator:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    .line 62
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    invoke-static {p0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->createFrameView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static createFrameView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .prologue
    .line 392
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 393
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper;->isInTest(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    :cond_0
    return-object v0
.end method

.method private ensureCheckedState(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 198
    instance-of v0, p2, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 199
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->itemCheckedPosition:I

    if-ne p1, v0, :cond_1

    .line 200
    check-cast p2, Landroid/widget/Checkable;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    check-cast p2, Landroid/widget/Checkable;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method

.method private onBindFooterView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->footerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->removeFooterViewHolderFromViewHierarchy(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 144
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->footerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private onBindHeaderView(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->removeHeaderViewHolderFromViewHierarchy(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 131
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->headerViews:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    return-void
.end method

.method private onBindItemView(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 176
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    move-result-object v1

    .line 177
    if-nez v1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 182
    instance-of v0, v6, Lcom/netflix/mediaclient/ui/details/IEpisodeView;

    if-eqz v0, :cond_2

    move-object v0, v6

    .line 186
    check-cast v0, Lcom/netflix/mediaclient/ui/details/IEpisodeView;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/details/IEpisodeView;->update(Ljava/lang/Object;)V

    .line 194
    :cond_1
    :goto_1
    invoke-direct {p0, p2, v6}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->ensureCheckedState(ILandroid/view/View;)V

    goto :goto_0

    .line 187
    :cond_2
    instance-of v0, v6, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;

    if-eqz v0, :cond_1

    move-object v0, v6

    .line 191
    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->getTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;

    move-result-object v2

    move v3, p2

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;->update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    goto :goto_1
.end method

.method private removeFooterViewHolderFromViewHierarchy(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->footerView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->footerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->footerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private removeHeaderViewHolderFromViewHierarchy(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->headerViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->headerViews:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->footerView:Landroid/view/View;

    .line 346
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->headerViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->headerViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_0
    return-void
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 301
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->notifyDataSetChanged()V

    .line 302
    return-void
.end method

.method public clearItemChecked()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->itemCheckedPosition:I

    .line 384
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->notifyDataSetChanged()V

    .line 385
    return-void
.end method

.method public getCheckedItemPosition()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->itemCheckedPosition:I

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->headerViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 242
    return v0
.end method

.method public getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/Video;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->footerView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 223
    return v0

    .line 214
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getItemCountExcludingHeadersAndFooters()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->isPositionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 276
    :goto_0
    return v0

    .line 273
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->isPositionFooter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const/4 v0, 0x3

    goto :goto_0

    .line 276
    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->itemContentType:I

    goto :goto_0
.end method

.method protected getTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->trackable:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;

    return-object v0
.end method

.method public hasFooter()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->footerView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPositionFooter(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 353
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->footerView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPositionHeader(I)Z
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewFooter(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 263
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->getHeaderViewsCount()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isViewHeader(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 253
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->getHeaderViewsCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->getItemViewType(I)I

    move-result v0

    .line 115
    if-nez v0, :cond_1

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->onBindHeaderView(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 123
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->onPostItemViewBind(I)V

    .line 124
    return-void

    .line 117
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 118
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->onBindFooterView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 119
    :cond_2
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->itemContentType:I

    if-ne v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->onBindItemView(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->itemContentType:I

    if-ne p2, v0, :cond_0

    .line 97
    new-instance v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$VideoViewHolder;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->viewCreator:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-interface {v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;->createItemView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$VideoViewHolder;-><init>(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;Landroid/view/View;Landroid/content/Context;)V

    .line 103
    :goto_0
    return-object v0

    .line 98
    :cond_0
    if-nez p2, :cond_1

    .line 100
    new-instance v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$VideoViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$VideoViewHolder;-><init>(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;Landroid/view/View;Landroid/content/Context;)V

    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 103
    new-instance v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$VideoViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$VideoViewHolder;-><init>(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;Landroid/view/View;Landroid/content/Context;)V

    goto :goto_0

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No matching type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onPostItemViewBind(I)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public setItemChecked(I)V
    .locals 3

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->isSingleChoiceMode:Z

    if-nez v0, :cond_0

    .line 367
    const-string/jumbo v0, "RecyclerViewHeaderAdapter"

    const-string/jumbo v1, "Not in single choice mode - skipping setItemChecked()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_0
    return-void

    .line 371
    :cond_0
    if-gez p1, :cond_1

    .line 372
    const-string/jumbo v0, "RecyclerViewHeaderAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skipping setItemChecked() - invalid position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->itemCheckedPosition:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iput v1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->itemCheckedPosition:I

    .line 378
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->notifyItemChanged(I)V

    .line 379
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public setItemContentType(I)V
    .locals 0

    .prologue
    .line 286
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->itemContentType:I

    .line 287
    return-void
.end method

.method public setItems(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->notifyDataSetChanged()V

    .line 312
    return-void
.end method

.method public setItems(Ljava/util/Collection;ILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;I",
            "Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setViewCreator(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 295
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setItemContentType(I)V

    .line 296
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setItems(Ljava/util/Collection;)V

    .line 297
    return-void
.end method

.method public setSingleChoiceMode(Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->isSingleChoiceMode:Z

    .line 85
    return-void
.end method

.method public setTrackable(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->trackable:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;

    .line 76
    return-void
.end method

.method public setViewCreator(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->viewCreator:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    .line 291
    return-void
.end method

.method public updateItems(Ljava/util/Collection;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 319
    if-nez p2, :cond_0

    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 323
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->notifyDataSetChanged()V

    .line 324
    return-void
.end method
