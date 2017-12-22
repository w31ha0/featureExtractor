.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;
.super Ljava/lang/Object;
.source "KidsCharacterDetails.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Video;


# virtual methods
.method public abstract getBifUrl()Ljava/lang/String;
.end method

.method public abstract getCatalogIdUrl()Ljava/lang/String;
.end method

.method public abstract getCharacterId()Ljava/lang/String;
.end method

.method public abstract getCharacterImageUrl()Ljava/lang/String;
.end method

.method public abstract getCharacterName()Ljava/lang/String;
.end method

.method public abstract getGallery()Ljava/util/List;
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

.method public abstract getGalleryRequestId()Ljava/lang/String;
.end method

.method public abstract getGalleryTrackId()I
.end method

.method public abstract getHighResolutionLandscapeBoxArtUrl()Ljava/lang/String;
.end method

.method public abstract getHighResolutionPortraitBoxArtUrl()Ljava/lang/String;
.end method

.method public abstract getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
.end method

.method public abstract getStoryUrl()Ljava/lang/String;
.end method

.method public abstract getSynopsis()Ljava/lang/String;
.end method

.method public abstract getWatchNextDispUrl()Ljava/lang/String;
.end method
