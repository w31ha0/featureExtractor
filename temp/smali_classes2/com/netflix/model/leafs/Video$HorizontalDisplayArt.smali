.class public Lcom/netflix/model/leafs/Video$HorizontalDisplayArt;
.super Lcom/netflix/model/leafs/Video$VideoArtwork;
.source "Video.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1299
    const-string/jumbo v0, "horzDispUrl"

    invoke-direct {p0, v0}, Lcom/netflix/model/leafs/Video$VideoArtwork;-><init>(Ljava/lang/String;)V

    .line 1300
    return-void
.end method
