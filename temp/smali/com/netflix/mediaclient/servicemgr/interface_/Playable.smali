.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
.super Ljava/lang/Object;
.source "Playable.java"


# virtual methods
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

.method public abstract getAutoPlayMaxCount()I
.end method

.method public abstract getCreditMarks()Lcom/netflix/model/leafs/blades/CreditMarks;
.end method

.method public abstract getEndtime()I
.end method

.method public abstract getEpisodeNumber()I
.end method

.method public abstract getExpirationTime()J
.end method

.method public abstract getLogicalStart()I
.end method

.method public abstract getParentTitle()Ljava/lang/String;
.end method

.method public abstract getPlayableBookmarkPosition()I
.end method

.method public abstract getPlayableBookmarkUpdateTime()J
.end method

.method public abstract getPlayableId()Ljava/lang/String;
.end method

.method public abstract getPlayableTitle()Ljava/lang/String;
.end method

.method public abstract getRuntime()I
.end method

.method public abstract getSeasonAbbrSeqLabel()Ljava/lang/String;
.end method

.method public abstract getSeasonNumber()I
.end method

.method public abstract getTopLevelId()Ljava/lang/String;
.end method

.method public abstract isAdvisoryDisabled()Z
.end method

.method public abstract isAgeProtected()Z
.end method

.method public abstract isAutoPlayEnabled()Z
.end method

.method public abstract isAvailableOffline()Z
.end method

.method public abstract isAvailableToStream()Z
.end method

.method public abstract isExemptFromInterrupterLimit()Z
.end method

.method public abstract isNSRE()Z
.end method

.method public abstract isNextPlayableEpisode()Z
.end method

.method public abstract isPinProtected()Z
.end method

.method public abstract isPlayableEpisode()Z
.end method

.method public abstract isPreviewProtected()Z
.end method

.method public abstract isSupplementalVideo()Z
.end method
