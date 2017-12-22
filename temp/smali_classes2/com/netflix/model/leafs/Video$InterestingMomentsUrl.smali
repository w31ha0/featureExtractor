.class public Lcom/netflix/model/leafs/Video$InterestingMomentsUrl;
.super Lcom/netflix/model/leafs/Video$VideoArtwork;
.source "Video.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1316
    const-string/jumbo v0, "interestingUrl"

    invoke-direct {p0, v0}, Lcom/netflix/model/leafs/Video$VideoArtwork;-><init>(Ljava/lang/String;)V

    return-void
.end method
