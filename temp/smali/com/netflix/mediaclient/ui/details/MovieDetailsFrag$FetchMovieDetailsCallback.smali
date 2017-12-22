.class Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "MovieDetailsFrag.java"


# instance fields
.field private final requestId:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;J)V
    .locals 2

    .prologue
    .line 504
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    .line 505
    const-string/jumbo v0, "MovieDetailsFrag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 506
    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->requestId:J

    .line 507
    return-void
.end method


# virtual methods
.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 511
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 513
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Activity state is invalid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->requestId:J

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-wide v4, v4, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->requestId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->access$100(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 524
    :cond_1
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Ignoring stale callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 528
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iput-boolean v1, v2, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->isLoading:Z

    .line 529
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 530
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->showErrorView()V

    goto :goto_0

    .line 535
    :cond_3
    if-nez p1, :cond_4

    .line 536
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "No details in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->showErrorView()V

    goto :goto_0

    .line 546
    :cond_4
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->shouldRefreshVolatileData()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    .line 547
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 549
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    .line 550
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v3

    if-nez v3, :cond_6

    .line 551
    :cond_5
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Manager is null/notReady - can\'t reload data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 555
    :cond_6
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->requestId:J

    .line 556
    const-string/jumbo v3, "MovieDetailsFrag"

    const-string/jumbo v4, "Fetching volatile data for video ID: %s"

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-object v6, v6, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->videoId:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 558
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v7

    new-instance v8, Lcom/netflix/falkor/task/FetchVideoVolatileNodesTask;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->videoId:Ljava/lang/String;

    .line 559
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v3, v4, :cond_8

    :goto_1
    invoke-direct {v8, v2, v0}, Lcom/netflix/falkor/task/FetchVideoVolatileNodesTask;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchVideoVolatileNodesCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->videoId:Ljava/lang/String;

    .line 560
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getUserThumbRating()I

    move-result v3

    .line 561
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getMatchPercentage()I

    move-result v4

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->isInQueue()Z

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchVideoVolatileNodesCallback;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;Ljava/lang/String;IIZLcom/netflix/mediaclient/ui/details/MovieDetailsFrag$1;)V

    .line 558
    invoke-interface {v7, v8, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchTask(Lcom/netflix/falkor/task/CmpTaskDetails;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    .line 565
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchMovieDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    .line 566
    invoke-static {p2}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->reportDPMetadataFetchedEvent(Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 559
    goto :goto_1
.end method
