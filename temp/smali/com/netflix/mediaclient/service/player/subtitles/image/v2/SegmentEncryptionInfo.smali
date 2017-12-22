.class public Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;
.super Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;
.source "SegmentEncryptionInfo.java"


# static fields
.field public static final USER_TYPE:Ljava/lang/String; = "com.netflix.senc"


# instance fields
.field private defaultIVSize:B

.field private mImageEncryptions:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;

.field private sampleCount:I


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V
    .locals 5

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V

    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.senc"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->isUserType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SegmentIndex does not have expected user type value!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->sampleCount:I

    .line 57
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->defaultIVSize:B

    .line 59
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->sampleCount:I

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->mImageEncryptions:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;

    .line 60
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->sampleCount:I

    if-ge v0, v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->mImageEncryptions:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;

    new-instance v2, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;

    iget-byte v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->defaultIVSize:B

    const/4 v4, 0x0

    invoke-direct {v2, p2, v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;-><init>(Ljava/io/DataInputStream;BLcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$1;)V

    aput-object v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method

.method public static isThisBox(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)Z
    .locals 2

    .prologue
    .line 85
    if-nez p0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Header is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    const-string/jumbo v0, "com.netflix.senc"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getUserType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDefaultIVSize()B
    .locals 1

    .prologue
    .line 70
    iget-byte v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->defaultIVSize:B

    return v0
.end method

.method public getImageEncryptions()[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->mImageEncryptions:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;

    return-object v0
.end method

.method public getSampleCount()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->sampleCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SegmentEncryptionInfo{sampleCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->sampleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", defaultIVSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->defaultIVSize:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mImageEncryptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo;->mImageEncryptions:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;

    .line 223
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    return-object v0
.end method
