.class Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "EpisodesFrag.java"


# instance fields
.field private final mInQueue:Z

.field private final mMatchPercentage:I

.field private final mSeasonCount:I

.field private final mUserRating:I

.field private final mVideoId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Ljava/lang/String;IIZI)V
    .locals 1

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    .line 1225
    const-string/jumbo v0, "EpisodesFrag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 1226
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;->mVideoId:Ljava/lang/String;

    .line 1227
    iput p3, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;->mUserRating:I

    .line 1228
    iput p4, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;->mMatchPercentage:I

    .line 1229
    iput-boolean p5, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;->mInQueue:Z

    .line 1230
    iput p6, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;->mSeasonCount:I

    .line 1231
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Ljava/lang/String;IIZILcom/netflix/mediaclient/ui/details/EpisodesFrag$1;)V
    .locals 0

    .prologue
    .line 1208
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Ljava/lang/String;IIZI)V

    return-void
.end method


# virtual methods
.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1235
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1237
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->access$800(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1238
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Activity state is invalid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1247
    :cond_1
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1248
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Volatile data has invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1252
    :cond_2
    if-nez p1, :cond_3

    .line 1253
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Volatile data no details in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1258
    :cond_3
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;->mVideoId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1259
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Ignoring stale volatile data callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1264
    :cond_4
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;->mMatchPercentage:I

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getMatchPercentage()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;->mUserRating:I

    .line 1265
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getUserThumbRating()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;->mInQueue:Z

    .line 1266
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->isInQueue()Z

    move-result v1

    if-eq v0, v1, :cond_6

    .line 1268
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->updateVolatileDataInView(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    .line 1272
    :cond_6
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSeasonCount()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;->mSeasonCount:I

    if-eq v0, v1, :cond_0

    .line 1273
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Season counts changed, need to update spinner"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchVideoVolatileNodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->access$900(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V

    goto :goto_0
.end method
