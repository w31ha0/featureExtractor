.class public abstract Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;
.super Ljava/lang/Object;
.source "BaseProgressiveRowAdapter.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;
.implements Lcom/netflix/mediaclient/ui/lomo/RowAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback",
        "<TT;>;",
        "Lcom/netflix/mediaclient/ui/lomo/RowAdapter;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "BaseProgressiveRowAdapter"


# instance fields
.field private final adapterCallbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

.field private currDataIndex:I

.field private hasMoreData:Z

.field private lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

.field private final manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field protected final paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private requestId:J

.field private final viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter",
            "<TT;>;",
            "Lcom/netflix/mediaclient/servicemgr/ServiceManager;",
            "Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;",
            "Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->adapterCallbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

    .line 68
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 69
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    .line 70
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    .line 75
    return-void
.end method

.method private fetchMoreData()V
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->requestId:J

    .line 197
    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->getNumVideosToFetchPerBatch(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 198
    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->fetchMoreData(II)V

    .line 199
    return-void
.end method

.method private getNumVideosToFetchPerBatch(I)I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->computeNumVideosToFetchPerBatch(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract fetchMoreData(II)V
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method protected getLoMo()Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    return-object v0
.end method

.method protected getManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->requestId:J

    return-wide v0
.end method

.method public getRowHeightInPx()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getRowHeightInPx()I

    move-result v0

    return v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->isLastItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->fetchMoreData()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getView(Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected handlePrefetchDPData(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 167
    if-lez p2, :cond_0

    .line 168
    const-string/jumbo v0, "BaseProgressiveRowAdapter"

    const-string/jumbo v1, "prefetch DP only for videos in first page."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->computeNumItemsPerPage()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPForLomoRow(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;Ljava/util/List;I)V

    goto :goto_0
.end method

.method public hasMoreData()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    return v0
.end method

.method public invalidateRequestId()V
    .locals 2

    .prologue
    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->requestId:J

    .line 115
    return-void
.end method

.method public onErrorResponse()V
    .locals 2

    .prologue
    .line 119
    const-string/jumbo v0, "BaseProgressiveRowAdapter"

    const-string/jumbo v1, "onErrorResponse(), hasMoreData now false"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->adapterCallbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;->notifyParentOfError()V

    .line 122
    return-void
.end method

.method public onNoVideosInResponse()V
    .locals 2

    .prologue
    .line 126
    const-string/jumbo v0, "BaseProgressiveRowAdapter"

    const-string/jumbo v1, "onNoVideosInResponse(), hasMoreData now false"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->adapterCallbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;->notifyParentOfDataSetChange()V

    .line 129
    return-void
.end method

.method public final refreshData(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->clearData()V

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->setListViewPos(I)V

    .line 139
    iput v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    .line 140
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    .line 142
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->fetchMoreData()V

    .line 143
    return-void
.end method

.method public restoreFromMemento(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 183
    check-cast p1, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;

    .line 184
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->invalidateRequestId()V

    .line 185
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    .line 186
    iget-boolean v0, p1, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;->hasMoreData:Z

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    .line 187
    iget v0, p1, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;->currDataIndex:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;->adapterMemento:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->restoreFromMemento(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;)V

    .line 192
    return-void
.end method

.method public saveToMemento()Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;
    .locals 5

    .prologue
    .line 177
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    iget v3, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;ZILcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;)V

    return-object v0
.end method

.method public bridge synthetic saveToMemento()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->saveToMemento()Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter$Memento;

    move-result-object v0

    return-object v0
.end method

.method public shouldOverlapPages()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public trackPresentation(I)V
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    instance-of v3, p0, Lcom/netflix/mediaclient/ui/lomo/ProgressiveGenreVideoAdapter;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->trackPresentation(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;ILjava/lang/Boolean;)V

    .line 218
    return-void
.end method

.method public updateDataSet(Ljava/util/List;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->getNumVideosToFetchPerBatch(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    .line 156
    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->currDataIndex:I

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->paginatedAdapter:Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;

    iget-boolean v5, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->hasMoreData:Z

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->appendData(Ljava/util/List;Ljava/lang/String;IIZ)V

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->adapterCallbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;->notifyParentOfDataSetChange()V

    .line 163
    invoke-virtual {p0, p1, p3}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;->handlePrefetchDPData(Ljava/util/List;I)V

    .line 164
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
