.class public abstract Lcom/netflix/mediaclient/service/player/subtitles/image/v2/Box;
.super Ljava/lang/Object;
.source "Box.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_subtitles_imv2"


# instance fields
.field protected boxHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Box header is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/Box;->boxHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    .line 34
    return-void
.end method


# virtual methods
.method public getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/Box;->boxHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Box{boxHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/Box;->boxHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
