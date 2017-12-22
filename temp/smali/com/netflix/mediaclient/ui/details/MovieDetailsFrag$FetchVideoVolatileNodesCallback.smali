.class Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchVideoVolatileNodesCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "MovieDetailsFrag.java"


# instance fields
.field private final inQueue:Z

.field private final matchPercentage:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

.field private final userRating:I

.field private final videoId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;Ljava/lang/String;IIZ)V
    .locals 1

    .prologue
    .line 579
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchVideoVolatileNodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    .line 580
    const-string/jumbo v0, "MovieDetailsFrag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 581
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchVideoVolatileNodesCallback;->videoId:Ljava/lang/String;

    .line 582
    iput p3, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchVideoVolatileNodesCallback;->userRating:I

    .line 583
    iput p4, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchVideoVolatileNodesCallback;->matchPercentage:I

    .line 584
    iput-boolean p5, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchVideoVolatileNodesCallback;->inQueue:Z

    .line 585
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;Ljava/lang/String;IIZLcom/netflix/mediaclient/ui/details/MovieDetailsFrag$1;)V
    .locals 0

    .prologue
    .line 571
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchVideoVolatileNodesCallback;-><init>(Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;Ljava/lang/String;IIZ)V

    return-void
.end method


# virtual methods
.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 589
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 591
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchVideoVolatileNodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Activity state is invalid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 602
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Volatile data has invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 606
    :cond_2
    if-nez p1, :cond_3

    .line 607
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Volatile data no details in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 612
    :cond_3
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchVideoVolatileNodesCallback;->videoId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 613
    const-string/jumbo v0, "MovieDetailsFrag"

    const-string/jumbo v1, "Ignoring stale volatile data callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    :cond_4
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchVideoVolatileNodesCallback;->matchPercentage:I

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getMatchPercentage()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchVideoVolatileNodesCallback;->userRating:I

    .line 619
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getUserThumbRating()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchVideoVolatileNodesCallback;->inQueue:Z

    .line 620
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->isInQueue()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 622
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag$FetchVideoVolatileNodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsFrag;->updateVolatileDataInView(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    goto :goto_0
.end method
