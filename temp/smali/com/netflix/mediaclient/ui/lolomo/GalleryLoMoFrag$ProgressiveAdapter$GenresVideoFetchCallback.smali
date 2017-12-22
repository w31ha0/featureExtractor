.class Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "GalleryLoMoFrag.java"


# instance fields
.field private final cachedQueryObject:Ljava/lang/Object;

.field private final numItems:I

.field private final start:I

.field final synthetic this$1:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;Ljava/lang/Object;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 315
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->this$1:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    .line 316
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 317
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->cachedQueryObject:Ljava/lang/Object;

    .line 318
    sub-int v0, p5, p4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->numItems:I

    .line 319
    iput p4, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->start:I

    .line 320
    return-void
.end method


# virtual methods
.method handlePrefetchDPData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->this$1:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPForSimilars(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)V

    .line 359
    return-void
.end method

.method public onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 324
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 325
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->this$1:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->isDetached()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->cachedQueryObject:Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->this$1:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->queryObject:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 330
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->this$1:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    iput-boolean v0, v1, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->hasMoreData:Z

    .line 331
    const-string/jumbo v0, "GalleryLoMoFrag"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->this$1:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->showErrorView()V

    goto :goto_0

    .line 340
    :cond_2
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 341
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->this$1:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->numItems:I

    if-ne v3, v4, :cond_3

    :goto_1
    iput-boolean v0, v2, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->hasMoreData:Z

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->this$1:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->start:I

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->updateItems(Ljava/util/Collection;I)V

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->this$1:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    iget v1, v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->startIndex:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->startIndex:I

    .line 344
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->this$1:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->hideLoadingAndErrorViews()V

    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->this$1:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    iget v0, v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->startIndex:I

    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->handlePrefetchDPData(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 341
    goto :goto_1

    .line 349
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->this$1:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    iput-boolean v1, v2, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->hasMoreData:Z

    .line 350
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->this$1:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    iget v2, v2, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->startIndex:I

    if-nez v2, :cond_5

    .line 351
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->this$1:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->setEmptyVisibility(Z)V

    .line 353
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;->this$1:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    goto :goto_0
.end method
