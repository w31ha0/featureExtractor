.class public Lcom/netflix/model/leafs/Video$HorizontalDisplaySmallArt;
.super Lcom/netflix/model/leafs/Video$VideoArtwork;
.source "Video.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1305
    const-string/jumbo v0, "horzDispSmallUrl"

    invoke-direct {p0, v0}, Lcom/netflix/model/leafs/Video$VideoArtwork;-><init>(Ljava/lang/String;)V

    .line 1306
    return-void
.end method
