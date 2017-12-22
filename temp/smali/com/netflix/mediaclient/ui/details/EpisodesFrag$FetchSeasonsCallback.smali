.class Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "EpisodesFrag.java"


# instance fields
.field private final mEpisodeCount:I

.field private final mRequestId:J

.field private final mSeasonCount:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;IIJ)V
    .locals 2

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    .line 1162
    const-string/jumbo v0, "EpisodesFrag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 1163
    iput p2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;->mSeasonCount:I

    .line 1164
    iput p3, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;->mEpisodeCount:I

    .line 1165
    iput-wide p4, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;->mRequestId:J

    .line 1166
    return-void
.end method


# virtual methods
.method public onSeasonsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1170
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onSeasonsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->access$700(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Activity state is invalid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;->mRequestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-wide v2, v2, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->seasonsRequestId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1178
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Stale seasons response - ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1182
    :cond_2
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1183
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Seasons fetch response has invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1187
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->access$500(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;->mSeasonCount:I

    if-eq v0, v1, :cond_4

    .line 1190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->updateSeasonData(Ljava/util/List;)V

    .line 1196
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    .line 1197
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getNumOfEpisodes()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;->mEpisodeCount:I

    if-eq v0, v1, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchSeasonsCallback;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->fetchMoreData()V

    goto :goto_0
.end method
