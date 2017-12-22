.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
.super Ljava/lang/Object;
.source "VideoDetails.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/ArtworkUrlProvider;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Video;


# virtual methods
.method public abstract getActors()Ljava/lang/String;
.end method

.method public abstract getAdvisories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBifUrl()Ljava/lang/String;
.end method

.method public abstract getCatalogIdUrl()Ljava/lang/String;
.end method

.method public abstract getCertification()Ljava/lang/String;
.end method

.method public abstract getCopyright()Ljava/lang/String;
.end method

.method public abstract getCreditMarks()Lcom/netflix/model/leafs/blades/CreditMarks;
.end method

.method public abstract getDefaultTrailer()Ljava/lang/String;
.end method

.method public abstract getExpirationTime()J
.end method

.method public abstract getGenres()Ljava/lang/String;
.end method

.method public abstract getHighResolutionLandscapeBoxArtUrl()Ljava/lang/String;
.end method

.method public abstract getHighResolutionPortraitBoxArtUrl()Ljava/lang/String;
.end method

.method public abstract getMaturityLevel()I
.end method

.method public abstract getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
.end method

.method public abstract getQuality()Ljava/lang/String;
.end method

.method public abstract getStoryUrl()Ljava/lang/String;
.end method

.method public abstract getSupplementalMessage()Ljava/lang/String;
.end method

.method public abstract getSynopsis()Ljava/lang/String;
.end method

.method public abstract getTitleCroppedImgUrl()Ljava/lang/String;
.end method

.method public abstract getTitleImgUrl()Ljava/lang/String;
.end method

.method public abstract getTvCardUrl()Ljava/lang/String;
.end method

.method public abstract getYear()I
.end method

.method public abstract hasTrailers()Z
.end method

.method public abstract hasWatched()Z
.end method

.method public abstract isAvailableToStream()Z
.end method

.method public abstract isInQueue()Z
.end method

.method public abstract isNSRE()Z
.end method

.method public abstract isOriginal()Z
.end method

.method public abstract isSupplementalVideo()Z
.end method

.method public abstract shouldRefreshVolatileData()Z
.end method
