.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;
.super Ljava/lang/Object;
.source "Billboard.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Video;


# virtual methods
.method public abstract getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;
.end method

.method public abstract getCertification()Ljava/lang/String;
.end method

.method public abstract getHighResolutionLandscapeBoxArtUrl()Ljava/lang/String;
.end method

.method public abstract getNumSeasonsLabel()Ljava/lang/String;
.end method

.method public abstract getSeasonCount()I
.end method

.method public abstract getStoryUrl()Ljava/lang/String;
.end method

.method public abstract getSynopsis()Ljava/lang/String;
.end method

.method public abstract getYear()I
.end method

.method public abstract hasTrailers()Z
.end method
