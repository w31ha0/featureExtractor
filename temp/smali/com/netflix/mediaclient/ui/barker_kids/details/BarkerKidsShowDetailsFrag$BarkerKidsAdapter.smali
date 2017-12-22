.class Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;
.super Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;
.source "BarkerKidsShowDetailsFrag.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BarkerEpisodesAdapter"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;

    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 126
    return-void
.end method


# virtual methods
.method public fetchMoreData()V
    .locals 10

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 169
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    instance-of v1, v1, Lcom/netflix/mediaclient/ui/details/ServiceManagerProvider;

    if-eqz v1, :cond_6

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/ServiceManagerProvider;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    move-object v2, v0

    .line 173
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    const-string/jumbo v0, "BarkerEpisodesAdapter"

    const-string/jumbo v1, "Manager is not ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_1
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    if-nez v0, :cond_2

    .line 179
    const-string/jumbo v0, "BarkerEpisodesAdapter"

    const-string/jumbo v1, "No season details yet"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 187
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->requestId:J

    .line 188
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->episodeStartIndex:I

    add-int/lit8 v0, v0, 0x28

    add-int/lit8 v5, v0, -0x1

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->access$300(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getId()Ljava/lang/String;

    move-result-object v1

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getId()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->logEmptySeasonId(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;)V

    goto :goto_1

    .line 200
    :cond_3
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->access$400(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v3

    .line 201
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v8

    if-eqz v3, :cond_4

    move-object v7, v0

    :goto_2
    if-eqz v3, :cond_5

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-object v6, v0

    :goto_3
    iget v9, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->episodeStartIndex:I

    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->requestId:J

    iget v4, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->episodeStartIndex:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;JII)V

    move-object v1, v8

    move-object v2, v7

    move-object v3, v6

    move v4, v9

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_1

    :cond_4
    move-object v7, v1

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-object v6, v0

    goto :goto_3

    :cond_6
    move-object v2, v0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->data:Ljava/util/List;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->hasFooter()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected initToLoadingState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 146
    const-string/jumbo v0, "BarkerEpisodesAdapter"

    const-string/jumbo v1, "initToLoadingState"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->isLoading:Z

    .line 148
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->hasMoreData:Z

    .line 150
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->requestId:J

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->access$100(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->episodeStartIndex:I

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->fetchMoreData()V

    .line 157
    return-void
.end method

.method public updateEpisodeStartIndex(I)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->access$200(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    iput p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->episodeStartIndex:I

    goto :goto_0
.end method

.method protected updateEpisodesData(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->isSeasonUserSelected:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->setItems(Ljava/util/Collection;)V

    .line 132
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->episodeStartIndex:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->episodeStartIndex:I

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->access$000(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;)V

    .line 138
    return-void

    .line 134
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->updateEpisodesData(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public updateItems(Ljava/util/Collection;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->updateItems(Ljava/util/Collection;I)V

    .line 207
    const-string/jumbo v0, "BarkerEpisodesAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateItems: startIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " episodeStartIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsAdapter;->episodeStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method
