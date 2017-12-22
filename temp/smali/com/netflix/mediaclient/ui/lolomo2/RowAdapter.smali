.class public abstract Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;
.super Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;
.source "RowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;",
        "O::",
        "Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;",
        ">",
        "Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final MAX_LOADING_ANIMATED_ITEM_COUNT:I = 0x3

.field public static final TYPE_COVER:I = 0x0

.field public static final TYPE_LOADING:I = 0x1


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDiffHelper:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter",
            "<TT;TO;>.DiffHelper;"
        }
    .end annotation
.end field

.field private mFromIndex:I

.field private mLiveAdjustmentCount:I

.field private mLoadingData:Z

.field private final mLomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

.field final mLomoContext:Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

.field private final mParentAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

.field private mRegisteredBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mVideoUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

.field private final mVideos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TO;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-direct {p0, p1, p4, p5}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;-><init>(Landroid/content/Context;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    .line 50
    iput v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mLiveAdjustmentCount:I

    .line 52
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mDiffHelper:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;

    .line 92
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mVideoUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mVideos:Ljava/util/List;

    .line 153
    iput v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mFromIndex:I

    .line 155
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mLoadingData:Z

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mRegisteredBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mLomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 180
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mParentAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    .line 181
    invoke-static {}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;->builder()Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;->setLomo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {v0, p5}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;->setRowPosition(I)Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getUiLocation()Lcom/netflix/mediaclient/servicemgr/UiLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;->setUiLocation(Lcom/netflix/mediaclient/servicemgr/UiLocation;)Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;->build()Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mLomoContext:Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    .line 185
    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->loadData(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 188
    :cond_0
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->setHasStableIds(Z)V

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mLiveAdjustmentCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;I)I
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mLiveAdjustmentCount:I

    return p1
.end method

.method static computeEndIndex(Landroid/content/Context;I)I
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    .line 243
    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method addVideos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TO;>;)V"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mVideos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 234
    return-void
.end method

.method final getDiffHelper()Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter",
            "<TT;TO;>.DiffHelper;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mDiffHelper:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;

    return-object v0
.end method

.method getFromIndex()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mFromIndex:I

    return v0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mLomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getNumVideos()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->getVideos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->getNumberOfLoadingMorePlaceHolder()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mLiveAdjustmentCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->getVideos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getLomo()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mLomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    return-object v0
.end method

.method getLomoContext()Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mLomoContext:Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    return-object v0
.end method

.method getNumberOfLoadingMorePlaceHolder()I
    .locals 2

    .prologue
    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->getConfig()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->numberOfItemsPerPage()I

    move-result v0

    const/4 v1, 0x3

    .line 341
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method protected getRefreshFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUpdateVideosCallback(Landroid/content/Context;)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mVideos:Ljava/util/List;

    return-object v0
.end method

.method protected final isLoadingData()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mLoadingData:Z

    return v0
.end method

.method protected abstract loadData(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 194
    return-void
.end method

.method public onBindCoverViewHolder(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->getConfig()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->numberOfItemsPerPage()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 258
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->getVideos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->getVideos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->onBindVideo(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;IZ)V

    .line 270
    :goto_1
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->onBindLoadingMore(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;IZ)V

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mParentAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_2

    .line 265
    iget-object v1, p1, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->loadData(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_1

    .line 267
    :cond_2
    const-string/jumbo v0, "serviceManager should not be null while binding new data"

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected abstract onBindLoadingMore(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZ)V"
        }
    .end annotation
.end method

.method protected abstract onBindVideo(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TO;IZ)V"
        }
    .end annotation
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 316
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onCreate(Landroid/content/Context;)V

    .line 317
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->getRefreshFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_0

    .line 319
    const-string/jumbo v1, "BaseRowAdapter"

    const-string/jumbo v2, "Register receiver..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mRegisteredBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 323
    :cond_0
    return-void
.end method

.method public onDestroy(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mRegisteredBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 329
    const-string/jumbo v0, "BaseRowAdapter"

    const-string/jumbo v1, "Unregister receiver..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mRegisteredBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mRegisteredBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 333
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onDestroy(Landroid/content/Context;)V

    .line 334
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 199
    return-void
.end method

.method protected onRefresh(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/content/Intent;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method protected final refresh(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/content/Intent;)Z
    .locals 7

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->getUpdateVideosCallback(Landroid/content/Context;)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v6

    .line 280
    if-eqz v6, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->setLoadingData(Z)V

    .line 284
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->getVideos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->computeEndIndex(Landroid/content/Context;I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->onRefresh(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/content/Intent;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->isLoadingData()Z

    move-result v0

    return v0
.end method

.method setFromIndex(I)V
    .locals 0

    .prologue
    .line 224
    iput p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mFromIndex:I

    .line 225
    return-void
.end method

.method final setLoadingData(Z)V
    .locals 0

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mLoadingData:Z

    .line 208
    return-void
.end method

.method protected toContentString(Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method updateWithNewVideos(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TO;>;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 352
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 353
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mDiffHelper:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->size()I

    move-result v1

    .line 354
    const-string/jumbo v2, "BaseRowAdapter"

    const-string/jumbo v3, "Calculating diff new : %s vs old : %s ..."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 355
    new-instance v2, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$VideosDiffCallback;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mDiffHelper:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;

    invoke-direct {v2, p0, v3, p1}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$VideosDiffCallback;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;Ljava/util/List;)V

    invoke-static {v2, v7}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v2

    .line 356
    const-string/jumbo v3, "BaseRowAdapter"

    const-string/jumbo v4, "Update adapter..."

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->getVideos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 358
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->getVideos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 359
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mVideoUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    invoke-virtual {v2, v3}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V

    .line 360
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->getVideos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->setFromIndex(I)V

    .line 361
    if-nez v0, :cond_1

    if-lez v1, :cond_1

    .line 362
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mParentAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mLomoContext:Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;->rowPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->notifyItemChanged(I)V

    .line 366
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mDiffHelper:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->save()V

    .line 367
    return-void

    .line 363
    :cond_1
    if-lez v0, :cond_0

    if-nez v1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mParentAdapter:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->mLomoContext:Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;->rowPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method
