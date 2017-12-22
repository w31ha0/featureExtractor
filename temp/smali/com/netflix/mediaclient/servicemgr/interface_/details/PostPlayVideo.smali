.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;
.super Ljava/lang/Object;
.source "PostPlayVideo.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;


# virtual methods
.method public abstract getEpisodeBadges()Ljava/util/List;
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

.method public abstract getInterestingSmallUrl()Ljava/lang/String;
.end method

.method public abstract getInterestingUrl()Ljava/lang/String;
.end method

.method public abstract getNarrative()Ljava/lang/String;
.end method
