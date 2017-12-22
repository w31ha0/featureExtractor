.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;
.super Ljava/lang/Object;
.source "MovieDetails.java"

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

.method public abstract getDirectors()Ljava/lang/String;
.end method

.method public abstract getNumDirectors()I
.end method
