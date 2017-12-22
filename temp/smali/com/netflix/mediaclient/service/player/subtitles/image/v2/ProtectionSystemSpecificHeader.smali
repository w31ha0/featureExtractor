.class public Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ProtectionSystemSpecificHeader;
.super Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;
.source "ProtectionSystemSpecificHeader.java"


# static fields
.field public static final USER_TYPE:Ljava/lang/String; = "com.netflix.pssh\u201d"


# instance fields
.field private data:[B

.field private drmSystem:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V

    .line 43
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ProtectionSystemSpecificHeader;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.pssh\u201d"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->isUserType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SegmentIndex does not have expected user type value!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    const/16 v0, 0x24

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->readByteArray(Ljava/io/DataInputStream;I)[B

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->decode([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ProtectionSystemSpecificHeader;->drmSystem:Ljava/util/UUID;

    .line 54
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->readByteArray(Ljava/io/DataInputStream;I)[B

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->readUint32([B)J

    move-result-wide v0

    .line 57
    long-to-int v0, v0

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->readByteArray(Ljava/io/DataInputStream;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ProtectionSystemSpecificHeader;->data:[B

    .line 58
    return-void
.end method

.method public static isThisBox(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)Z
    .locals 2

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Header is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    const-string/jumbo v0, "com.netflix.pssh\u201d"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getUserType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ProtectionSystemSpecificHeader;->data:[B

    return-object v0
.end method

.method public getDrmSystem()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ProtectionSystemSpecificHeader;->drmSystem:Ljava/util/UUID;

    return-object v0
.end method
