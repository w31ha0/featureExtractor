.class public Lcom/netflix/model/leafs/Video$TrickPlayBaseBigUrl;
.super Lcom/netflix/model/leafs/Video$VideoArtwork;
.source "Video.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1324
    const-string/jumbo v0, "baseUrlBig"

    invoke-direct {p0, v0}, Lcom/netflix/model/leafs/Video$VideoArtwork;-><init>(Ljava/lang/String;)V

    return-void
.end method
