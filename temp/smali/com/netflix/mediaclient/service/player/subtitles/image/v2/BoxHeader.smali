.class public Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;
.super Ljava/lang/Object;
.source "BoxHeader.java"


# static fields
.field public static final LARGE_SIZE_SIZE:I = 0x8

.field public static final SIZE_SIZE:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "nf_subtitles_imv2"

.field public static final TYPE_SIZE:I = 0x4

.field public static final USER_TYPE_SIZE:I = 0x10

.field public static final UUID_TYPE:Ljava/lang/String; = "uuid"


# instance fields
.field protected contentSizeInBytes:J

.field protected headerSizeInBytes:J

.field private sizeInBytes:J

.field protected type:Ljava/lang/String;

.field protected userType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 6

    .prologue
    const/4 v2, 0x4

    const-wide/16 v4, 0x8

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "DIS is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    invoke-static {p1, v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->readByteArray(Ljava/io/DataInputStream;I)[B

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->readUint32([B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->sizeInBytes:J

    .line 61
    invoke-static {p1, v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->readByteArray(Ljava/io/DataInputStream;I)[B

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->decode([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->type:Ljava/lang/String;

    .line 63
    iput-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->headerSizeInBytes:J

    .line 65
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->sizeInBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mp4-badsize: size can not be 0!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->sizeInBytes:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 71
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->readByteArray(Ljava/io/DataInputStream;I)[B

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->readUint64([B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->sizeInBytes:J

    .line 73
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->headerSizeInBytes:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->headerSizeInBytes:J

    .line 76
    :cond_2
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->sizeInBytes:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 77
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mp4-badsize: size can not be less than 8 bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->isUUIDType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->readByteArray(Ljava/io/DataInputStream;I)[B

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->decode([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->userType:Ljava/lang/String;

    .line 84
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->headerSizeInBytes:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->headerSizeInBytes:J

    .line 87
    :cond_4
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->sizeInBytes:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->headerSizeInBytes:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->contentSizeInBytes:J

    .line 88
    return-void
.end method

.method public static isUUIDType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 159
    const-string/jumbo v0, "uuid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getContentSizeInBytes()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->contentSizeInBytes:J

    return-wide v0
.end method

.method public getHeaderSizeInBytes()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->headerSizeInBytes:J

    return-wide v0
.end method

.method public getSizeInBytes()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->sizeInBytes:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->userType:Ljava/lang/String;

    return-object v0
.end method

.method public isExtendedType()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->userType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->userType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->userType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BoxHeader{sizeInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->sizeInBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", headerSizeInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->headerSizeInBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contentSizeInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->contentSizeInBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
