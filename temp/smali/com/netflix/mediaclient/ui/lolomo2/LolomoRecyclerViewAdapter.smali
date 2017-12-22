.class Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;
.super Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;
.source "LolomoRecyclerViewAdapter.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/app/LoadingStatus;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter",
        "<",
        "Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowViewHolder;",
        ">;",
        "Lcom/netflix/mediaclient/android/app/LoadingStatus;"
    }
.end annotation


# static fields
.field private static final FETCH_MORE_ANTICIPATION_ITEM_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LolomoRecyclerViewAdapter"

.field private static final VIEW_TYPE_BILLBOARD:I = 0x3

.field private static final VIEW_TYPE_CHARACTER:I = 0x4

.field private static final VIEW_TYPE_CW:I = 0x2

.field private static final VIEW_TYPE_HEADER:I = -0x1

.field private static final VIEW_TYPE_LOLOMO_PROGRESSIVE_LOADING:I = 0x0

.field private static final VIEW_TYPE_LOMO:I = 0x1

.field private static final VIEW_TYPE_UNKNOWN:I = -0x2


# instance fields
.field private mCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

.field private final mGenreId:Ljava/lang/String;

.field private mLoMoStartIndex:I

.field private mLoadingData:Z

.field private final mLolomoAdapterCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;

.field private mLolomoId:Ljava/lang/String;

.field private mLomoRequestId:J

.field private final mLomos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreData:Z

.field private mRequestId:J

.field private final mUiLocation:Lcom/netflix/mediaclient/servicemgr/UiLocation;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/android/widgetry/lolomo/RowConfig;

    const/4 v1, -0x2

    .line 90
    invoke-static {v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->builder(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->build()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, -0x1

    .line 91
    invoke-static {v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->builder(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->build()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v1

    aput-object v1, v0, v5

    .line 92
    invoke-static {v4}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->builder(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->build()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v1

    aput-object v1, v0, v6

    .line 93
    invoke-static {v3}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->builder(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    new-instance v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 94
    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v5}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setNumberOfItemsPerPage(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    .line 96
    invoke-virtual {v1, v5}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setNumberOfPagesToScrollOnFling(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    .line 97
    invoke-virtual {v1, v4}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setListPadding(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v4}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setItemPadding(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->build()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v1

    aput-object v1, v0, v3

    .line 100
    invoke-static {v7}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->builder(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    new-instance v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 101
    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    .line 102
    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumVideosPerPageTableByOrientation(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setNumberOfItemsPerPage(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v5}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setNumberOfPagesToScrollOnFling(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v4}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setListPadding(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v4}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setItemPadding(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 106
    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setAspectRatio(F)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    const v2, 0x3eb33333    # 0.35f

    .line 107
    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setPeekRatio(F)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->build()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 109
    invoke-static {p1, v5}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8202;->getLomoConfig(Landroid/content/Context;I)Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 110
    invoke-static {p1, v6}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8202;->getContinueWatchingConfig(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v2

    aput-object v2, v0, v1

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;-><init>(Landroid/content/Context;[Lcom/netflix/android/widgetry/lolomo/RowConfig;)V

    .line 61
    iput v4, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLoMoStartIndex:I

    .line 62
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mMoreData:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLomos:Ljava/util/List;

    .line 76
    iput-boolean v5, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLoadingData:Z

    .line 112
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLolomoAdapterCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;

    .line 113
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mGenreId:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mGenreId:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mUiLocation:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 115
    return-void

    .line 114
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->GENRE_LOLOMO:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLoadingData:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;)J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mRequestId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->handlePrefetchComplete(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mMoreData:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;)Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;)J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLomoRequestId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->handleResult(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private createBillboardViewHolder(Landroid/view/ViewGroup;Lcom/netflix/android/widgetry/lolomo/RowConfig;)Lcom/netflix/mediaclient/ui/lolomo2/RowBillboardsViewHolder;
    .locals 4

    .prologue
    .line 234
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/RowBillboardsViewHolder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03008f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/RowBillboardsViewHolder;-><init>(Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;)V

    return-object v0
.end method

.method private createHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/netflix/mediaclient/ui/lolomo2/RowHeaderViewHolder;
    .locals 1

    .prologue
    .line 254
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lolomo2/RowHeaderViewHolder;->build(Landroid/view/ViewGroup;)Lcom/netflix/mediaclient/ui/lolomo2/RowHeaderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private createKidsCharacterViewHolder(Landroid/view/ViewGroup;Lcom/netflix/android/widgetry/lolomo/RowConfig;)Lcom/netflix/mediaclient/ui/lolomo2/RowKidsCharacterViewHolder;
    .locals 4

    .prologue
    .line 239
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/RowKidsCharacterViewHolder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030090

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/RowKidsCharacterViewHolder;-><init>(Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;)V

    return-object v0
.end method

.method private createLoadingViewHolder(Landroid/view/ViewGroup;)Lcom/netflix/mediaclient/ui/lolomo2/RowLoadingMoreViewHolder;
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0024

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/lolomo2/RowLoadingMoreViewHolder;->build(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/lolomo2/RowLoadingMoreViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private createLomoViewHolder(Landroid/view/ViewGroup;Lcom/netflix/android/widgetry/lolomo/RowConfig;)Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;
    .locals 4

    .prologue
    .line 229
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030094

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;-><init>(Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;)V

    return-object v0
.end method

.method private createUnknownViewHolder(Landroid/view/ViewGroup;Lcom/netflix/android/widgetry/lolomo/RowConfig;)Lcom/netflix/mediaclient/ui/lolomo2/RowUnknownViewHolder;
    .locals 1

    .prologue
    .line 244
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lolomo2/RowUnknownViewHolder;->build(Landroid/view/ViewGroup;)Lcom/netflix/mediaclient/ui/lolomo2/RowUnknownViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private fetchMoreData(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 286
    iput-boolean v5, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLoadingData:Z

    .line 287
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLomoRequestId:J

    .line 289
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLoMoStartIndex:I

    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig;->getNumberRowsToFetch(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 291
    const-string/jumbo v1, "LolomoRecyclerViewAdapter"

    const-string/jumbo v2, "fetching more data, starting at index: %d"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLoMoStartIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 292
    const-string/jumbo v1, "LolomoRecyclerViewAdapter"

    const-string/jumbo v2, "fetching from: %d to: %d, id: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLoMoStartIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLolomoId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 294
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLolomoAdapterCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 295
    const-string/jumbo v0, "LolomoRecyclerViewAdapter"

    const-string/jumbo v1, "Service manager is null - can\'t fetch data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_0
    return-void

    .line 299
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLoMoStartIndex:I

    sub-int v1, v0, v1

    add-int/lit8 v6, v1, 0x1

    .line 300
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mGenreId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLolomoAdapterCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v7

    iget-object v8, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mGenreId:Ljava/lang/String;

    iget v9, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLoMoStartIndex:I

    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLomoRequestId:J

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Landroid/content/Context;JI)V

    invoke-interface {v7, v8, v9, v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchGenres(Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLolomoAdapterCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v7

    iget v8, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLoMoStartIndex:I

    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLomoRequestId:J

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$Callback;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Landroid/content/Context;JI)V

    invoke-interface {v7, v8, v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchLoMos(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method private getLomo(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLomos:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getHeaderCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    return-object v0
.end method

.method private handlePrefetchComplete(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->fetchMoreData(Landroid/content/Context;)V

    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLolomoAdapterCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;->onLolomoPrefetchComplete(Z)V

    .line 391
    return-void
.end method

.method private handleResult(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 407
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 408
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLomos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 409
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLomos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 410
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLomos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLoMoStartIndex:I

    .line 411
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLolomoAdapterCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;->onDataLoaded()V

    .line 412
    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mMoreData:Z

    if-eqz v2, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getHeaderCount()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->notifyItemChanged(I)V

    .line 416
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getHeaderCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->notifyLomoRangeInserted(II)V

    .line 423
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getHeaderCount()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->notifyItemRemoved(I)V

    .line 421
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getHeaderCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->notifyLomoRangeInserted(II)V

    goto :goto_0
.end method

.method private initLoadingState()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLomos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 385
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->notifyLomoSetChanged()V

    .line 386
    return-void
.end method

.method private isHeaderPosition(I)Z
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getHeaderCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLoadingPosition(I)Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLomos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLomos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getHeaderCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected buildLomoAdapter(Landroid/content/Context;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;
    .locals 6

    .prologue
    .line 133
    invoke-virtual {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->viewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 160
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Missing BaseRowAdapter for view type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->viewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :pswitch_0
    invoke-static {p1, p3}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->buildFakeLomoAdapter(Landroid/content/Context;I)Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$FakeRowAdapter;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 140
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getLomo(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    .line 141
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    goto :goto_0

    .line 144
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getLomo(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    .line 145
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v0, v1, :cond_0

    .line 146
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/InstantQueueLomoAdapter;

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lolomo2/InstantQueueLomoAdapter;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    goto :goto_0

    .line 148
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    goto :goto_0

    .line 152
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getLomo(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    .line 153
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    goto :goto_0

    .line 156
    :pswitch_4
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getLomo(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    .line 157
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public getLomoCount()I
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLomos:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 278
    :goto_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mMoreData:Z

    if-eqz v1, :cond_0

    .line 280
    add-int/lit8 v0, v0, 0x1

    .line 282
    :cond_0
    return v0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLomos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method getLomoSize()I
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLomos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLomoViewType(I)I
    .locals 4

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->isLoadingPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 198
    :goto_0
    return v0

    .line 182
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->isHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    const/4 v0, -0x1

    goto :goto_0

    .line 185
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getLomo(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    .line 186
    sget-object v1, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$3;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$LoMoType:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 200
    const-string/jumbo v1, "LolomoRecyclerViewAdapter"

    const-string/jumbo v2, "Unknown view type."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown view type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 190
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 196
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 198
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getLomos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLomos:Ljava/util/List;

    return-object v0
.end method

.method getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLolomoAdapterCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    return-object v0
.end method

.method public getUiLocation()Lcom/netflix/mediaclient/servicemgr/UiLocation;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mUiLocation:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    return-object v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLoadingData:Z

    return v0
.end method

.method protected onBindViewHolder(Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowViewHolder;ILcom/netflix/android/widgetry/lolomo/BaseRowAdapter;Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 260
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/lolomo2/RowHeaderViewHolder;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 261
    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo2/RowHeaderViewHolder;

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getHeader(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/RowHeaderViewHolder;->bind(Landroid/view/View;)V

    .line 270
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLoadingData:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mMoreData:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getLomoCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getHeaderCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    if-lt p2, v0, :cond_1

    .line 271
    iget-object v0, p1, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->fetchMoreData(Landroid/content/Context;)V

    .line 273
    :cond_1
    return-void

    .line 262
    :cond_2
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 263
    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getLomo(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;->bindListOfMovies(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 264
    :cond_3
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/lolomo2/RowLomoViewHolder;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 265
    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo2/RowLomoViewHolder;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getLomo(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/netflix/mediaclient/ui/lolomo2/RowLomoViewHolder;->bind(Ljava/lang/Object;Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 266
    :cond_4
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/lolomo2/RowUnknownViewHolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 267
    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo2/RowUnknownViewHolder;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getLomo(I)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/RowUnknownViewHolder;->reportUnknownType(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    goto :goto_0
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;Lcom/netflix/android/widgetry/lolomo/RowConfig;)Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowViewHolder;
    .locals 3

    .prologue
    .line 207
    invoke-virtual {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->viewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    const-string/jumbo v0, "LolomoRecyclerViewAdapter"

    const-string/jumbo v1, "Unknown view type."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown view type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->viewType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->createHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/netflix/mediaclient/ui/lolomo2/RowHeaderViewHolder;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    .line 211
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->createLoadingViewHolder(Landroid/view/ViewGroup;)Lcom/netflix/mediaclient/ui/lolomo2/RowLoadingMoreViewHolder;

    move-result-object v0

    goto :goto_0

    .line 213
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->createUnknownViewHolder(Landroid/view/ViewGroup;Lcom/netflix/android/widgetry/lolomo/RowConfig;)Lcom/netflix/mediaclient/ui/lolomo2/RowUnknownViewHolder;

    move-result-object v0

    goto :goto_0

    .line 215
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->createBillboardViewHolder(Landroid/view/ViewGroup;Lcom/netflix/android/widgetry/lolomo/RowConfig;)Lcom/netflix/mediaclient/ui/lolomo2/RowBillboardsViewHolder;

    move-result-object v0

    goto :goto_0

    .line 218
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->createLomoViewHolder(Landroid/view/ViewGroup;Lcom/netflix/android/widgetry/lolomo/RowConfig;)Lcom/netflix/mediaclient/ui/lolomo2/RowListOfMoviesViewHolder;

    move-result-object v0

    goto :goto_0

    .line 220
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->createKidsCharacterViewHolder(Landroid/view/ViewGroup;Lcom/netflix/android/widgetry/lolomo/RowConfig;)Lcom/netflix/mediaclient/ui/lolomo2/RowKidsCharacterViewHolder;

    move-result-object v0

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;)V
    .locals 0

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->refreshData(Landroid/content/Context;)V

    .line 395
    return-void
.end method

.method public refreshData(Landroid/content/Context;)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLolomoAdapterCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 310
    const-string/jumbo v0, "LolomoRecyclerViewAdapter"

    const-string/jumbo v1, "Service manager is null - can\'t refresh data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_0
    return-void

    .line 314
    :cond_0
    const-string/jumbo v0, "LolomoRecyclerViewAdapter"

    const-string/jumbo v1, "Prefetching lolomo..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mRequestId:J

    .line 316
    iput v12, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLoMoStartIndex:I

    .line 317
    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mRequestId:J

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mGenreId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLolomoAdapterCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v8

    iget-object v9, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mGenreId:Ljava/lang/String;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 322
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 323
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 324
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInLolomo()Z

    move-result v7

    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$1;

    const-string/jumbo v2, "LolomoRecyclerViewAdapter"

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Ljava/lang/String;Landroid/content/Context;J)V

    move-object v1, v8

    move-object v2, v9

    move v3, v12

    move v4, v10

    move v5, v12

    move v8, v12

    move-object v9, v0

    .line 320
    invoke-interface/range {v1 .. v9}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->prefetchGenreLoLoMo(Ljava/lang/String;IIIIZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 380
    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->initLoadingState()V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mLolomoAdapterCallback:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$LolomoAdapterCallback;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v6

    .line 350
    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig;->getNumberRowsToFetch(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 351
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 352
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 353
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadExtraCharacterLeaves()Z

    move-result v8

    .line 354
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInLolomo()Z

    move-result v9

    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$2;

    const-string/jumbo v2, "LolomoRecyclerViewAdapter"

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter$2;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Ljava/lang/String;Landroid/content/Context;J)V

    move-object v1, v6

    move v2, v12

    move v3, v10

    move v4, v12

    move v5, v11

    move v6, v12

    move v10, v12

    move-object v11, v0

    .line 349
    invoke-interface/range {v1 .. v11}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->prefetchLoLoMo(IIIIIIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_1
.end method

.method public setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->mCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    .line 404
    return-void
.end method
