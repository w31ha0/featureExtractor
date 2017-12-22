.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/details/Trailerable;
.super Ljava/lang/Object;
.source "Trailerable.java"


# virtual methods
.method public abstract getTrailers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTrailersListPos()I
.end method

.method public abstract getTrailersRequestId()Ljava/lang/String;
.end method

.method public abstract getTrailersTrackId()I
.end method
