.class public Lcom/mopub/nativeads/MoPubAdAdapter;
.super Landroid/widget/BaseAdapter;
.source "MoPubAdAdapter.java"


# instance fields
.field private mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mOriginalAdapter:Landroid/widget/Adapter;
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
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/Adapter;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "originalAdapter"    # Landroid/widget/Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-static {}, Lcom/mopub/nativeads/MoPubNativeAdPositioning;->serverPositioning()Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/nativeads/MoPubAdAdapter;-><init>(Landroid/app/Activity;Landroid/widget/Adapter;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/Adapter;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "originalAdapter"    # Landroid/widget/Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "adPositioning"    # Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    new-instance v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-direct {v0, p1, p3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    new-instance v1, Lcom/mopub/nativeads/VisibilityTracker;

    invoke-direct {v1, p1}, Lcom/mopub/nativeads/VisibilityTracker;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/mopub/nativeads/MoPubAdAdapter;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroid/widget/Adapter;Lcom/mopub/nativeads/VisibilityTracker;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/Adapter;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "originalAdapter"    # Landroid/widget/Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "adPositioning"    # Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    new-instance v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-direct {v0, p1, p3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    new-instance v1, Lcom/mopub/nativeads/VisibilityTracker;

    invoke-direct {v1, p1}, Lcom/mopub/nativeads/VisibilityTracker;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/mopub/nativeads/MoPubAdAdapter;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroid/widget/Adapter;Lcom/mopub/nativeads/VisibilityTracker;)V

    .line 75
    return-void
.end method

.method constructor <init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroid/widget/Adapter;Lcom/mopub/nativeads/VisibilityTracker;)V
    .locals 2
    .param p1, "streamAdPlacer"    # Lcom/mopub/nativeads/MoPubStreamAdPlacer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "originalAdapter"    # Landroid/widget/Adapter;
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
    .line 95
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    .line 97
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 98
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mViewPositionMap:Ljava/util/WeakHashMap;

    .line 100
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mVisibilityTracker:Lcom/mopub/nativeads/VisibilityTracker;

    .line 101
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mVisibilityTracker:Lcom/mopub/nativeads/VisibilityTracker;

    new-instance v1, Lcom/mopub/nativeads/MoPubAdAdapter$1;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubAdAdapter$1;-><init>(Lcom/mopub/nativeads/MoPubAdAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/VisibilityTracker;->setVisibilityTrackerListener(Lcom/mopub/nativeads/VisibilityTracker$VisibilityTrackerListener;)V

    .line 108
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    new-instance v1, Lcom/mopub/nativeads/MoPubAdAdapter$2;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubAdAdapter$2;-><init>(Lcom/mopub/nativeads/MoPubAdAdapter;)V

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 121
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    new-instance v1, Lcom/mopub/nativeads/MoPubAdAdapter$3;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubAdAdapter$3;-><init>(Lcom/mopub/nativeads/MoPubAdAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setAdLoadedListener(Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;)V

    .line 134
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/MoPubAdAdapter;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubAdAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/MoPubAdAdapter;->handleVisibilityChange(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mopub/nativeads/MoPubAdAdapter;)Landroid/widget/Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubAdAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mopub/nativeads/MoPubAdAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubAdAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    return-object v0
.end method

.method private handleVisibilityChange(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const v1, 0x7fffffff

    .line 392
    .local v1, "min":I
    const/4 v0, 0x0

    .line 393
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

    .line 394
    .local v3, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mViewPositionMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 395
    .local v2, "pos":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 398
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 399
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 400
    goto :goto_0

    .line 401
    .end local v2    # "pos":Ljava/lang/Integer;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v1, v5}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->placeAdsInRange(II)V

    .line 402
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    instance-of v0, v0, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    check-cast v0, Landroid/widget/ListAdapter;

    .line 262
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    .line 262
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAds()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->clearAds()V

    .line 243
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->destroy()V

    .line 256
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mVisibilityTracker:Lcom/mopub/nativeads/VisibilityTracker;

    invoke-virtual {v0}, Lcom/mopub/nativeads/VisibilityTracker;->destroy()V

    .line 257
    return-void
.end method

.method public getAdjustedPosition(I)I
    .locals 1
    .param p1, "originalPosition"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedCount(I)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 292
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdData(I)Ljava/lang/Object;

    move-result-object v0

    .line 293
    .local v0, "ad":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 296
    .end local v0    # "ad":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "ad":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v2, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 310
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdData(I)Ljava/lang/Object;

    move-result-object v0

    .line 311
    .local v0, "adData":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 312
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    neg-int v1, v1

    int-to-long v2, v1

    .line 314
    :goto_0
    return-wide v2

    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v2, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 359
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdViewType(I)I

    move-result v0

    .line 360
    .local v0, "viewType":I
    if-eqz v0, :cond_0

    .line 361
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 363
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v2, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v1

    goto :goto_0
.end method

.method public getOriginalPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 337
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v2, p1, p2, p3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 338
    .local v0, "adView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 339
    move-object v1, v0

    .line 344
    .local v1, "resultView":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mViewPositionMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mVisibilityTracker:Lcom/mopub/nativeads/VisibilityTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/mopub/nativeads/VisibilityTracker;->addView(Landroid/view/View;I)V

    .line 347
    return-object v1

    .line 341
    .end local v1    # "resultView":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    iget-object v3, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 342
    invoke-virtual {v3, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v3

    .line 341
    invoke-interface {v2, v3, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "resultView":Landroid/view/View;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v0

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method handleAdLoaded(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdLoaded(I)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubAdAdapter;->notifyDataSetChanged()V

    .line 143
    return-void
.end method

.method handleAdRemoved(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdRemoved(I)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubAdAdapter;->notifyDataSetChanged()V

    .line 151
    return-void
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public insertItem(I)V
    .locals 1
    .param p1, "originalPosition"    # I

    .prologue
    .line 441
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->insertItem(I)V

    .line 442
    return-void
.end method

.method public isAd(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 385
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedCount(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubAdAdapter;->isAd(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    instance-of v0, v0, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    check-cast v0, Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 268
    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    .line 268
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAds(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;)V

    .line 196
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
    .line 214
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    .line 215
    return-void
.end method

.method public refreshAds(Landroid/widget/ListView;Ljava/lang/String;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 601
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mopub/nativeads/MoPubAdAdapter;->refreshAds(Landroid/widget/ListView;Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    .line 602
    return-void
.end method

.method public refreshAds(Landroid/widget/ListView;Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .locals 12
    .param p1, "listView"    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestParameters"    # Lcom/mopub/nativeads/RequestParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x0

    .line 615
    const-string v10, "You called MoPubAdAdapter.refreshAds with a null ListView"

    invoke-static {p1, v10}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 647
    :goto_0
    return-void

    .line 621
    :cond_0
    invoke-virtual {p1, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 622
    .local v1, "firstView":Landroid/view/View;
    if-nez v1, :cond_1

    move v4, v9

    .line 625
    .local v4, "offsetY":I
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 626
    .local v0, "firstPosition":I
    add-int/lit8 v10, v0, -0x1

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 627
    .local v8, "startRange":I
    :goto_2
    iget-object v10, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v10, v8}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v10

    if-eqz v10, :cond_2

    if-lez v8, :cond_2

    .line 628
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 622
    .end local v0    # "firstPosition":I
    .end local v4    # "offsetY":I
    .end local v8    # "startRange":I
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_1

    .line 630
    .restart local v0    # "firstPosition":I
    .restart local v4    # "offsetY":I
    .restart local v8    # "startRange":I
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 631
    .local v2, "lastPosition":I
    :goto_3
    iget-object v10, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v10, v2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubAdAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v2, v10, :cond_3

    .line 632
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 634
    :cond_3
    iget-object v10, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v10, v8}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v7

    .line 635
    .local v7, "originalStartRange":I
    iget-object v10, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalCount(I)I

    move-result v6

    .line 638
    .local v6, "originalEndRange":I
    iget-object v10, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubAdAdapter;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalCount(I)I

    move-result v5

    .line 639
    .local v5, "originalCount":I
    iget-object v10, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v10, v6, v5}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    .line 640
    iget-object v10, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v10, v9, v7}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    move-result v3

    .line 643
    .local v3, "numAdsRemoved":I
    if-lez v3, :cond_4

    .line 644
    sub-int v9, v0, v3

    invoke-virtual {p1, v9, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 646
    :cond_4
    invoke-virtual {p0, p2, p3}, Lcom/mopub/nativeads/MoPubAdAdapter;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    goto :goto_0
.end method

.method public final registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .locals 1
    .param p1, "adRenderer"    # Lcom/mopub/nativeads/MoPubAdRenderer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 163
    const-string v0, "Tried to set a null ad renderer on the placer."

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "originalPosition"    # I

    .prologue
    .line 459
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeItem(I)V

    .line 460
    return-void
.end method

.method public final setAdLoadedListener(Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 183
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    .line 184
    return-void
.end method

.method public setOnClickListener(Landroid/widget/ListView;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 473
    const-string v0, "You called MoPubAdAdapter.setOnClickListener with a null ListView"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    :goto_0
    return-void

    .line 477
    :cond_0
    if-nez p2, :cond_1

    .line 478
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 482
    :cond_1
    new-instance v0, Lcom/mopub/nativeads/MoPubAdAdapter$4;

    invoke-direct {v0, p0, p2}, Lcom/mopub/nativeads/MoPubAdAdapter$4;-><init>(Lcom/mopub/nativeads/MoPubAdAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public setOnItemLongClickListener(Landroid/widget/ListView;Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 505
    const-string v0, "You called MoPubAdAdapter.setOnItemLongClickListener with a null ListView"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    :goto_0
    return-void

    .line 509
    :cond_0
    if-nez p2, :cond_1

    .line 510
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0

    .line 514
    :cond_1
    new-instance v0, Lcom/mopub/nativeads/MoPubAdAdapter$5;

    invoke-direct {v0, p0, p2}, Lcom/mopub/nativeads/MoPubAdAdapter$5;-><init>(Lcom/mopub/nativeads/MoPubAdAdapter;Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0
.end method

.method public setOnItemSelectedListener(Landroid/widget/ListView;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 533
    const-string v0, "You called MoPubAdAdapter.setOnItemSelectedListener with a null ListView"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 537
    :cond_0
    if-nez p2, :cond_1

    .line 538
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 542
    :cond_1
    new-instance v0, Lcom/mopub/nativeads/MoPubAdAdapter$6;

    invoke-direct {v0, p0, p2}, Lcom/mopub/nativeads/MoPubAdAdapter$6;-><init>(Lcom/mopub/nativeads/MoPubAdAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method public setSelection(Landroid/widget/ListView;I)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "originalPosition"    # I

    .prologue
    .line 567
    const-string v0, "You called MoPubAdAdapter.setSelection with a null ListView"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public smoothScrollToPosition(Landroid/widget/ListView;I)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "originalPosition"    # I

    .prologue
    .line 584
    const-string v0, "You called MoPubAdAdapter.smoothScrollToPosition with a null ListView"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method
