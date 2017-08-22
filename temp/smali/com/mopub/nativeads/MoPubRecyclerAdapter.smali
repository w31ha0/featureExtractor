.class public final Lcom/mopub/nativeads/MoPubRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MoPubRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final NATIVE_AD_VIEW_TYPE_BASE:I = -0x38


# instance fields
.field private mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mStrategy:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mViewPositionMap:Ljava/util/WeakHashMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibilityTracker:Lcom/mopub/nativeads/VisibilityTracker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "originalAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-static {}, Lcom/mopub/nativeads/MoPubNativeAdPositioning;->serverPositioning()Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "originalAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "adPositioning"    # Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    new-instance v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-direct {v0, p1, p3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    new-instance v1, Lcom/mopub/nativeads/VisibilityTracker;

    invoke-direct {v1, p1}, Lcom/mopub/nativeads/VisibilityTracker;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/mopub/nativeads/VisibilityTracker;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "originalAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "adPositioning"    # Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    new-instance v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-direct {v0, p1, p3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    new-instance v1, Lcom/mopub/nativeads/VisibilityTracker;

    invoke-direct {v1, p1}, Lcom/mopub/nativeads/VisibilityTracker;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/mopub/nativeads/VisibilityTracker;)V

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/mopub/nativeads/VisibilityTracker;)V
    .locals 2
    .param p1, "streamAdPlacer"    # Lcom/mopub/nativeads/MoPubStreamAdPlacer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "originalAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "visibilityTracker"    # Lcom/mopub/nativeads/VisibilityTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    sget-object v0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->INSERT_AT_END:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStrategy:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    .line 65
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mViewPositionMap:Ljava/util/WeakHashMap;

    .line 66
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 67
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mVisibilityTracker:Lcom/mopub/nativeads/VisibilityTracker;

    .line 68
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mVisibilityTracker:Lcom/mopub/nativeads/VisibilityTracker;

    new-instance v1, Lcom/mopub/nativeads/MoPubRecyclerAdapter$1;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter$1;-><init>(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/VisibilityTracker;->setVisibilityTrackerListener(Lcom/mopub/nativeads/VisibilityTracker$VisibilityTrackerListener;)V

    .line 76
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->setHasStableIdsInternal(Z)V

    .line 78
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 79
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    new-instance v1, Lcom/mopub/nativeads/MoPubRecyclerAdapter$2;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter$2;-><init>(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setAdLoadedListener(Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;)V

    .line 90
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    .line 92
    new-instance v0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;-><init>(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 157
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/MoPubRecyclerAdapter;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubRecyclerAdapter;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->handleVisibilityChanged(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStrategy:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    return-object v0
.end method

.method public static computeScrollOffset(Landroid/support/v7/widget/LinearLayoutManager;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 3
    .param p0, "linearLayoutManager"    # Landroid/support/v7/widget/LinearLayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 226
    if-nez p1, :cond_1

    .line 227
    const/4 v0, 0x0

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 231
    .local v1, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 232
    .local v0, "offset":I
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 233
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getStackFromEnd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    .line 238
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getStackFromEnd()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 240
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    .line 242
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method private handleVisibilityChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p2, "invisibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const v1, 0x7fffffff

    .line 546
    .local v1, "min":I
    const/4 v0, 0x0

    .line 547
    .local v0, "max":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 548
    .local v3, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mViewPositionMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 549
    .local v2, "pos":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 552
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 553
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 554
    goto :goto_0

    .line 555
    .end local v2    # "pos":Ljava/lang/Integer;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v1, v5}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->placeAdsInRange(II)V

    .line 556
    return-void
.end method

.method private setHasStableIdsInternal(Z)V
    .locals 0
    .param p1, "hasStableIds"    # Z

    .prologue
    .line 562
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 563
    return-void
.end method


# virtual methods
.method public clearAds()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->clearAds()V

    .line 332
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 451
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->destroy()V

    .line 452
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mVisibilityTracker:Lcom/mopub/nativeads/VisibilityTracker;

    invoke-virtual {v0}, Lcom/mopub/nativeads/VisibilityTracker;->destroy()V

    .line 453
    return-void
.end method

.method public getAdjustedPosition(I)I
    .locals 1
    .param p1, "originalPosition"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedCount(I)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 466
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    const-wide/16 v2, -0x1

    .line 475
    :goto_0
    return-wide v2

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdData(I)Ljava/lang/Object;

    move-result-object v0

    .line 471
    .local v0, "adData":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 472
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    neg-int v1, v1

    int-to-long v2, v1

    goto :goto_0

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v2, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 431
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdViewType(I)I

    move-result v0

    .line 432
    .local v0, "type":I
    if-eqz v0, :cond_0

    .line 433
    add-int/lit8 v1, v0, -0x38

    .line 436
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v2, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v1

    goto :goto_0
.end method

.method public getOriginalPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v0

    return v0
.end method

.method handleAdLoaded(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdLoaded(I)V

    .line 529
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyItemInserted(I)V

    .line 530
    return-void
.end method

.method handleAdRemoved(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdRemoved(I)V

    .line 538
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyItemRemoved(I)V

    .line 539
    return-void
.end method

.method public isAd(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v0

    return v0
.end method

.method public loadAds(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestParameters"    # Lcom/mopub/nativeads/RequestParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    .line 222
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 163
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 164
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 416
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdData(I)Ljava/lang/Object;

    move-result-object v0

    .line 417
    .local v0, "adResponse":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 418
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    .end local v0    # "adResponse":Ljava/lang/Object;
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->bindAdView(Lcom/mopub/nativeads/NativeAd;Landroid/view/View;)V

    .line 427
    :goto_0
    return-void

    .line 422
    .restart local v0    # "adResponse":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mViewPositionMap:Ljava/util/WeakHashMap;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mVisibilityTracker:Lcom/mopub/nativeads/VisibilityTracker;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mopub/nativeads/VisibilityTracker;->addView(Landroid/view/View;I)V

    .line 426
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v2, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 399
    const/16 v1, -0x38

    if-lt p2, v1, :cond_1

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdViewTypeCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x38

    if-gt p2, v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    add-int/lit8 v2, p2, 0x38

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object v0

    .line 402
    .local v0, "adRenderer":Lcom/mopub/nativeads/MoPubAdRenderer;
    if-nez v0, :cond_0

    .line 403
    const-string v1, "No view binder was registered for ads in MoPubRecyclerAdapter."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 405
    const/4 v1, 0x0

    .line 411
    .end local v0    # "adRenderer":Lcom/mopub/nativeads/MoPubAdRenderer;
    :goto_0
    return-object v1

    .line 407
    .restart local v0    # "adRenderer":Lcom/mopub/nativeads/MoPubAdRenderer;
    :cond_0
    new-instance v2, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;

    .line 408
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1, p1}, Lcom/mopub/nativeads/MoPubAdRenderer;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;-><init>(Landroid/view/View;)V

    move-object v1, v2

    .line 407
    goto :goto_0

    .line 411
    .end local v0    # "adRenderer":Lcom/mopub/nativeads/MoPubAdRenderer;
    :cond_1
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 170
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 481
    instance-of v0, p1, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;

    if-eqz v0, :cond_0

    .line 482
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    .line 486
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 491
    instance-of v0, p1, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;

    if-eqz v0, :cond_0

    .line 492
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 498
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 502
    instance-of v0, p1, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;

    if-eqz v0, :cond_0

    .line 503
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 509
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 513
    instance-of v0, p1, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;

    if-eqz v0, :cond_0

    .line 514
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 520
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public refreshAds(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->refreshAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    .line 259
    return-void
.end method

.method public refreshAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .locals 14
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestParameters"    # Lcom/mopub/nativeads/RequestParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 272
    iget-object v12, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v12, :cond_0

    .line 273
    const-string v12, "This adapter is not attached to a RecyclerView and cannot be refreshed."

    invoke-static {v12}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v12, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    .line 278
    .local v5, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-nez v5, :cond_1

    .line 279
    const-string v12, "Can\'t refresh ads when there is no layout manager on a RecyclerView."

    invoke-static {v12}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_1
    instance-of v12, v5, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v12, :cond_5

    move-object v6, v5

    .line 287
    check-cast v6, Landroid/support/v7/widget/LinearLayoutManager;

    .line 288
    .local v6, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 289
    .local v2, "firstPosition":I
    iget-object v12, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 290
    .local v3, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {v6, v3}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->computeScrollOffset(Landroid/support/v7/widget/LinearLayoutManager;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v10

    .line 293
    .local v10, "scrollOffset":I
    const/4 v12, 0x0

    add-int/lit8 v13, v2, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 294
    .local v11, "startOfRange":I
    :goto_1
    iget-object v12, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v12, v11}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v12

    if-eqz v12, :cond_2

    if-lez v11, :cond_2

    .line 295
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 299
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->getItemCount()I

    move-result v4

    .line 300
    .local v4, "itemCount":I
    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 301
    .local v1, "endOfRange":I
    :goto_2
    iget-object v12, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v12, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v12

    if-eqz v12, :cond_3

    add-int/lit8 v12, v4, -0x1

    if-ge v1, v12, :cond_3

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 305
    :cond_3
    iget-object v12, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v12, v11}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v9

    .line 306
    .local v9, "originalStartOfRange":I
    iget-object v12, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v12, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v8

    .line 307
    .local v8, "originalEndOfRange":I
    iget-object v12, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 309
    .local v0, "endCount":I
    iget-object v12, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v12, v8, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    .line 310
    iget-object v12, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v9}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    move-result v7

    .line 312
    .local v7, "numAdsRemoved":I
    if-lez v7, :cond_4

    .line 313
    sub-int v12, v2, v7

    invoke-virtual {v6, v12, v10}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 316
    :cond_4
    invoke-virtual/range {p0 .. p2}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    goto :goto_0

    .line 318
    .end local v0    # "endCount":I
    .end local v1    # "endOfRange":I
    .end local v2    # "firstPosition":I
    .end local v3    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v4    # "itemCount":I
    .end local v6    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    .end local v7    # "numAdsRemoved":I
    .end local v8    # "originalEndOfRange":I
    .end local v9    # "originalStartOfRange":I
    .end local v10    # "scrollOffset":I
    .end local v11    # "startOfRange":I
    :cond_5
    const-string v12, "This LayoutManager can\'t be refreshed."

    invoke-static {v12}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .locals 1
    .param p1, "adRenderer"    # Lcom/mopub/nativeads/MoPubAdRenderer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 193
    const-string v0, "Cannot register a null adRenderer"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    goto :goto_0
.end method

.method public setAdLoadedListener(Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 185
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    .line 186
    return-void
.end method

.method public setContentChangeStrategy(Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;)V
    .locals 1
    .param p1, "strategy"    # Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 386
    invoke-static {p1}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 389
    :cond_0
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStrategy:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    goto :goto_0
.end method

.method public setHasStableIds(Z)V
    .locals 2
    .param p1, "hasStableIds"    # Z

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->setHasStableIdsInternal(Z)V

    .line 444
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 445
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 446
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mAdapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 447
    return-void
.end method
