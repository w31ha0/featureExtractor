.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;
.super Ljava/lang/Object;
.source "PostPlayVideosProvider.java"


# virtual methods
.method public abstract getInteractivePostplay()Lcom/netflix/model/leafs/InteractivePostplay;
.end method

.method public abstract getPostPlayContexts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayContext;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPostPlayExperienceData()Lcom/netflix/model/leafs/PostPlayExperience;
.end method

.method public abstract getPostPlayVideos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;",
            ">;"
        }
    .end annotation
.end method
