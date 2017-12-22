.class public Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "EpisodesAdapter.java"


# instance fields
.field private final numItems:I

.field private final requestId:J

.field private final startIndex:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;JII)V
    .locals 2

    .prologue
    .line 189
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    .line 190
    const-string/jumbo v0, "EpisodesAdapter"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 191
    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->requestId:J

    .line 192
    sub-int v0, p5, p4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->numItems:I

    .line 193
    iput p4, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->startIndex:I

    .line 194
    return-void
.end method


# virtual methods
.method public onEpisodesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 198
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onEpisodesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->access$000(Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-wide v2, v2, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->requestId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 204
    const-string/jumbo v0, "EpisodesAdapter"

    const-string/jumbo v1, "Ignoring stale request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->hasMoreData:Z

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iput-boolean v4, v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->isLoading:Z

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 218
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    const-string/jumbo v0, "EpisodesAdapter"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->access$100(Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;)V

    goto :goto_0

    .line 224
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 225
    :cond_3
    const-string/jumbo v0, "EpisodesAdapter"

    const-string/jumbo v1, "No details in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iput-boolean v4, v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->hasMoreData:Z

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->notifyDataSetChanged()V

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->access$100(Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;)V

    goto :goto_0

    .line 235
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->numItems:I

    if-ge v0, v1, :cond_5

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iput-boolean v4, v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->hasMoreData:Z

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->startIndex:I

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->updateEpisodesData(Ljava/util/List;I)V

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->updateEpisodeSelection()V

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->onEpisodesUpdated(Ljava/util/List;)V

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/DataUtil;->hasUnavailableEpisodes(Ljava/util/List;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setAsDAB(Z)V

    goto/16 :goto_0
.end method
