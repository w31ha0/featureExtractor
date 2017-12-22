.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$FetchPostPlayForPlaybackCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "CastPlayerPostPlayFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    .line 448
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 449
    return-void
.end method


# virtual methods
.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 453
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 454
    if-eqz p1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$902(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 456
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 457
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$1100(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V

    .line 459
    :cond_0
    return-void
.end method

.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 463
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 464
    if-eqz p1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 467
    :cond_0
    return-void
.end method

.method public onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .prologue
    .line 479
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 480
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;->getPostPlayVideos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;->getPostPlayVideos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$1200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getTopLevelId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$FetchPostPlayForPlaybackCallback;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    .line 483
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$FetchPostPlayForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;Ljava/lang/String;)V

    .line 482
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 486
    :cond_1
    return-void
.end method

.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 471
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 472
    if-eqz p1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 475
    :cond_0
    return-void
.end method
