.class public Lcom/netflix/model/branches/FalkorEpisode;
.super Lcom/netflix/model/branches/FalkorVideo;
.source "FalkorEpisode.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;
.implements Lcom/netflix/model/branches/FalkorObject;


# instance fields
.field public episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/ModelProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/netflix/model/branches/FalkorVideo;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    .line 22
    return-void
.end method


# virtual methods
.method public episodeIsNSRE()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->isNSRE()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAutoPlayMaxCount()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getAutoPlayMaxCount()I

    move-result v0

    goto :goto_0
.end method

.method public getAvailabilityDateMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getAvailabilityDateMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBookmarkPosition()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Bookmark;->getBookmarkPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getCatalogIdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getShowRestUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDetail()Lcom/netflix/model/leafs/Episode$Detail;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    return-object v0
.end method

.method protected bridge synthetic getDetail()Lcom/netflix/model/leafs/Video$Detail;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorEpisode;->getDetail()Lcom/netflix/model/leafs/Episode$Detail;

    move-result-object v0

    return-object v0
.end method

.method public getEpisodeBadges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getEpisodeBadges()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getEpisodeIdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Episode$Detail;->restUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEpisodeNumber()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getEpisodeNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    iget-wide v0, v0, Lcom/netflix/model/leafs/Episode$Detail;->expirationTime:J

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-super {p0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInterestingSmallUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getInterestingSmallUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInterestingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getInterestingUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNextEpisodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getNextEpisodeId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNextEpisodeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getNextEpisodeTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/FalkorEpisode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string/jumbo v0, "detail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    new-instance v0, Lcom/netflix/model/leafs/Episode$Detail;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Episode$Detail;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    goto :goto_0

    .line 35
    :cond_1
    invoke-super {p0, p1}, Lcom/netflix/model/branches/FalkorVideo;->getOrCreate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getParentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getShowTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayableBookmarkUpdateTime()J
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->bookmark:Lcom/netflix/model/leafs/Video$Bookmark;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Bookmark;->getLastModified()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPlayableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayableTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSeasonAbbrSeqLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Episode$Detail;->abbrSeqLabel:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Episode$Detail;->abbrSeqLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSeasonId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getSeasonId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSeasonNumber()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getSeasonNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getShowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getShowId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getShowTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->getShowTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTopLevelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorEpisode;->getShowId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public isAutoPlayEnabled()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->isAutoPlayEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isExemptFromInterrupterLimit()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->isExemptFromInterrupterLimit()Z

    move-result v0

    goto :goto_0
.end method

.method public isNextPlayableEpisode()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->isNextPlayableEpisode()Z

    move-result v0

    goto :goto_0
.end method

.method public isPinProtected()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->isPinProtected()Z

    move-result v0

    goto :goto_0
.end method

.method public isPlayableEpisode()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public isPreRelease()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public isPreviewProtected()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Episode$Detail;->isPreviewProtected()Z

    move-result v0

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "detail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    check-cast p2, Lcom/netflix/model/leafs/Episode$Detail;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorEpisode;->episodeDetail:Lcom/netflix/model/leafs/Episode$Detail;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netflix/model/branches/FalkorVideo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
