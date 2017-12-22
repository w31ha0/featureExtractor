.class public Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;
.super Ljava/lang/Object;
.source "SegmentIndex.java"


# static fields
.field public static final HEADER_SIZE:I = 0x2e

.field public static final MIN_SIZE:I = 0x2e

.field private static final SIDX:[B

.field protected static final TAG:Ljava/lang/String; = "nf_subtitles"


# instance fields
.field private mDownloadSegment:Z

.field private mDuration:I

.field private mEndTime:I

.field private mEntryCount:S

.field private mIdentifier:I

.field private mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;

.field private mIndex:I

.field private mIndexID:Ljava/util/UUID;

.field private mSegmentSize:J

.field private mSegmentStartPosition:J

.field private mSize:I

.field private mStartTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->SIDX:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x73t
        0x69t
        0x64t
        0x78t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/DataInputStream;II)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v5, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mDownloadSegment:Z

    .line 105
    iput v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mEndTime:I

    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Segment index is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    const/4 v0, 0x4

    new-array v2, v0, [B

    .line 122
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    aput-byte v0, v2, v1

    .line 123
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    aput-byte v0, v2, v5

    .line 124
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    aput-byte v0, v2, v6

    .line 125
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    aput-byte v0, v2, v7

    move v0, v1

    .line 127
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 128
    aget-byte v3, v2, v0

    sget-object v4, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->SIDX:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_1

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Identifier  is NOT \'sidx\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_2
    aget-byte v0, v2, v1

    shl-int/lit8 v0, v0, 0x18

    aget-byte v3, v2, v5

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    aget-byte v3, v2, v6

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    aget-byte v2, v2, v7

    or-int/2addr v0, v2

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mIdentifier:I

    .line 134
    const/16 v0, 0x24

    new-array v0, v0, [B

    .line 135
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 136
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mIndexID:Ljava/util/UUID;

    .line 138
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mDuration:I

    .line 140
    iput p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mStartTime:I

    .line 141
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mStartTime:I

    iget v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mDuration:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mEndTime:I

    .line 143
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mEntryCount:S

    .line 145
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mEntryCount:S

    mul-int/lit8 v0, v0, 0x1c

    add-int/lit8 v0, v0, 0x2e

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mSize:I

    .line 151
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mEntryCount:S

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;

    move v0, v1

    .line 153
    :goto_1
    iget-short v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mEntryCount:S

    if-ge v0, v2, :cond_3

    .line 154
    const-string/jumbo v2, "nf_subtitles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parsing image "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " metadata."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;

    new-instance v3, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;-><init>(Ljava/io/DataInputStream;Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$1;)V

    aput-object v3, v2, v0

    .line 156
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;

    aget-object v3, v2, v0

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v3, p3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;->setTotalIndex(I)V

    .line 157
    const-string/jumbo v3, "nf_subtitles"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Parsing image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " metadata done."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    add-int/lit8 v0, v0, 0x1

    move p3, v2

    goto :goto_1

    .line 160
    :cond_3
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mEntryCount:S

    if-lez v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;->getImageStartPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mSegmentStartPosition:J

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 163
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;->getImageStartPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mSegmentStartPosition:J

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;->getSize()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mSegmentSize:J

    .line 165
    :cond_4
    return-void
.end method


# virtual methods
.method public declared-synchronized downloadStarted()V
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mDownloadSegment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 282
    if-ne p0, p1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v0

    .line 284
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 285
    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 287
    goto :goto_0

    .line 288
    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;

    .line 289
    iget v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mIndex:I

    iget v3, p1, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mIndex:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 290
    goto :goto_0

    .line 291
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mIndexID:Ljava/util/UUID;

    if-nez v2, :cond_5

    .line 292
    iget-object v2, p1, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mIndexID:Ljava/util/UUID;

    if-eqz v2, :cond_0

    move v0, v1

    .line 293
    goto :goto_0

    .line 294
    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mIndexID:Ljava/util/UUID;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mIndexID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 295
    goto :goto_0
.end method

.method public getAllVisibleSubtitleBlocks(J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->inRange(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;

    if-eqz v0, :cond_1

    .line 253
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 254
    invoke-interface {v4, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->inRange(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    new-instance v5, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;

    invoke-direct {v5, v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_1
    return-object v1
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mDuration:I

    return v0
.end method

.method public getEndTime()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mEndTime:I

    return v0
.end method

.method public getEntryCount()S
    .locals 1

    .prologue
    .line 180
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mEntryCount:S

    return v0
.end method

.method public getIdentifier()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mIdentifier:I

    return v0
.end method

.method public getImages()[Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mIndex:I

    return v0
.end method

.method public getIndexID()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mIndexID:Ljava/util/UUID;

    return-object v0
.end method

.method public getSegmentSize()J
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mSegmentSize:J

    return-wide v0
.end method

.method public getSegmentStartPosition()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mSegmentStartPosition:J

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mSize:I

    return v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mStartTime:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 273
    .line 275
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mIndex:I

    add-int/lit8 v0, v0, 0x1f

    .line 276
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mIndexID:Ljava/util/UUID;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 277
    return v0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mIndexID:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public inRange(J)Z
    .locals 3

    .prologue
    .line 240
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mStartTime:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mEndTime:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIndex(I)V
    .locals 0

    .prologue
    .line 268
    iput p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mIndex:I

    .line 269
    return-void
.end method

.method public declared-synchronized shouldDownload()Z
    .locals 1

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mDownloadSegment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SegmentIndex [mIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIndexID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mIndexID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEntryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mEntryCount:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mImages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mImages:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex$ImageDescriptorV1;

    .line 220
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDownloadSegment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mDownloadSegment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSegmentStartPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mSegmentStartPosition:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSegmentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mSegmentSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mStartTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/SegmentIndex;->mEndTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    return-object v0
.end method
