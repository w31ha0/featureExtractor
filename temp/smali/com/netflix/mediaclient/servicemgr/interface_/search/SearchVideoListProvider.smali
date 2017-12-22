.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;
.super Ljava/lang/Object;
.source "SearchVideoListProvider.java"


# virtual methods
.method public abstract getVideosList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;",
            ">()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getVideosListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;
.end method
