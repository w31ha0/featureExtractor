.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;
.super Ljava/lang/Object;
.source "CWVideo.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/ArtworkUrlProvider;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/CleanBoxart;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Video;


# virtual methods
.method public abstract createModifiedBigStillUrl()Ljava/lang/String;
.end method

.method public abstract createModifiedSmallStillUrl()Ljava/lang/String;
.end method

.method public abstract createModifiedStillUrl()Ljava/lang/String;
.end method

.method public abstract getCurrentEpisodeTitle()Ljava/lang/String;
.end method

.method public abstract getInterestingSmallUrl()Ljava/lang/String;
.end method

.method public abstract getInterestingUrl()Ljava/lang/String;
.end method

.method public abstract getTrickplayBigImgBaseUrl()Ljava/lang/String;
.end method

.method public abstract getTrickplayImgBaseUrl()Ljava/lang/String;
.end method
