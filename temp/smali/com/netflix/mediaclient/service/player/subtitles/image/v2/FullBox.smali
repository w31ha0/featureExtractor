.class public abstract Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;
.super Lcom/netflix/mediaclient/service/player/subtitles/image/v2/Box;
.source "FullBox.java"


# static fields
.field public static final FLAG_SIZE:I = 0x3


# instance fields
.field protected flags:Ljava/util/BitSet;

.field protected version:S


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/Box;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)V

    .line 29
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->readUint8(B)S

    move-result v0

    iput-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;->version:S

    .line 30
    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->readByteArray(Ljava/io/DataInputStream;I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;->flags:Ljava/util/BitSet;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;SLjava/util/BitSet;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/Box;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)V

    .line 43
    iput-short p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;->version:S

    .line 45
    if-eqz p3, :cond_0

    .line 46
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;->flags:Ljava/util/BitSet;

    .line 52
    :goto_0
    return-void

    .line 48
    :cond_0
    const/16 v0, 0x18

    .line 49
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;->flags:Ljava/util/BitSet;

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;->flags:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public getFlags()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;->flags:Ljava/util/BitSet;

    return-object v0
.end method

.method public getVersion()S
    .locals 1

    .prologue
    .line 55
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;->version:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FullBox{version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;->version:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;->flags:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/Box;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    return-object v0
.end method
