.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;
.super Ljava/lang/Object;
.source "ShowDetails.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/EvidenceDetails;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/Similarable;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/Trailerable;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;


# virtual methods
.method public abstract getCharacterRoles()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCreators()Ljava/lang/String;
.end method

.method public abstract getCurrentEpisodeBadges()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentEpisodeHorzDispUrl()Ljava/lang/String;
.end method

.method public abstract getCurrentEpisodeId()Ljava/lang/String;
.end method

.method public abstract getCurrentEpisodeNumber()I
.end method

.method public abstract getCurrentEpisodeStoryImgUrl()Ljava/lang/String;
.end method

.method public abstract getCurrentEpisodeSynopsis()Ljava/lang/String;
.end method

.method public abstract getCurrentEpisodeTitle()Ljava/lang/String;
.end method

.method public abstract getCurrentSeasonNumber()I
.end method

.method public abstract getNumCreators()I
.end method

.method public abstract getNumOfEpisodes()I
.end method

.method public abstract getNumSeasonsLabel()Ljava/lang/String;
.end method

.method public abstract getSeasonCount()I
.end method
