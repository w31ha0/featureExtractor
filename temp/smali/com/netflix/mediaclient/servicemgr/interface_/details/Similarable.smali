.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/details/Similarable;
.super Ljava/lang/Object;
.source "Similarable.java"


# virtual methods
.method public abstract getSimilars()Ljava/util/List;
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

.method public abstract getSimilarsListPos()I
.end method

.method public abstract getSimilarsRequestId()Ljava/lang/String;
.end method

.method public abstract getSimilarsTrackId()I
.end method
