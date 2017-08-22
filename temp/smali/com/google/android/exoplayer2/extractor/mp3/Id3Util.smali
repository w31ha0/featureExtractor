.class final Lcom/google/android/exoplayer2/extractor/mp3/Id3Util;
.super Ljava/lang/Object;
.source "Id3Util.java"


# static fields
.field private static final CHARSET_BY_ENCODING:[Ljava/nio/charset/Charset;

.field private static final ID3_TAG:I

.field private static final MAXIMUM_METADATA_SIZE:I = 0x300000


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const-string v0, "ID3"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp3/Id3Util;->ID3_TAG:I

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    const-string v2, "ISO-8859-1"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "UTF-16LE"

    .line 38
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UTF-16BE"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp3/Id3Util;->CHARSET_BY_ENCODING:[Ljava/nio/charset/Charset;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canParseMetadata(IIII)Z
    .locals 3
    .param p0, "majorVersion"    # I
    .param p1, "minorVersion"    # I
    .param p2, "flags"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 79
    const/16 v0, 0xff

    if-eq p1, v0, :cond_3

    if-lt p0, v1, :cond_3

    if-gt p0, v2, :cond_3

    const/high16 v0, 0x300000

    if-gt p3, v0, :cond_3

    if-ne p0, v1, :cond_0

    and-int/lit8 v0, p2, 0x3f

    if-nez v0, :cond_3

    and-int/lit8 v0, p2, 0x40

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    and-int/lit8 v0, p2, 0x1f

    if-nez v0, :cond_3

    :cond_1
    if-ne p0, v2, :cond_2

    and-int/lit8 v0, p2, 0xf

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static canUnescapeVersion4(Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z
    .locals 12
    .param p0, "frame"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "unsignedIntDataSizeHack"    # Z

    .prologue
    const/4 v3, 0x1

    const-wide/16 v10, 0x7f

    const/4 v4, 0x0

    .line 212
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    if-nez v5, :cond_1

    .line 237
    :cond_0
    :goto_1
    return v3

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    .line 218
    .local v0, "dataSize":J
    if-nez p1, :cond_3

    .line 220
    const-wide/32 v6, 0x808080

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    move v3, v4

    .line 221
    goto :goto_1

    .line 223
    :cond_2
    and-long v6, v0, v10

    const/16 v5, 0x8

    shr-long v8, v0, v5

    and-long/2addr v8, v10

    const/4 v5, 0x7

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    const/16 v5, 0x10

    shr-long v8, v0, v5

    and-long/2addr v8, v10

    const/16 v5, 0xe

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    const/16 v5, 0x18

    shr-long v8, v0, v5

    and-long/2addr v8, v10

    const/16 v5, 0x15

    shl-long/2addr v8, v5

    or-long v0, v6, v8

    .line 226
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-lez v5, :cond_4

    move v3, v4

    .line 227
    goto :goto_1

    .line 229
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 230
    .local v2, "flags":I
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_5

    .line 231
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_5

    move v3, v4

    .line 232
    goto :goto_1

    .line 235
    :cond_5
    long-to-int v5, v0

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0
.end method

.method private static findNextComment(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 14
    .param p0, "majorVersion"    # I
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x4

    const/4 v7, 0x0

    .line 136
    :goto_0
    if-ne p0, v13, :cond_3

    .line 137
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    const/4 v11, 0x6

    if-ge v10, v11, :cond_1

    .line 180
    :cond_0
    :goto_1
    return-object v7

    .line 140
    :cond_1
    const/4 v10, 0x3

    const-string v11, "US-ASCII"

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "id":Ljava/lang/String;
    const-string v10, "\u0000\u0000\u0000"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v5

    .line 145
    .local v5, "frameSize":I
    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    if-gt v5, v10, :cond_0

    .line 148
    const-string v10, "COM"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 174
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 175
    .local v3, "encoding":I
    if-ltz v3, :cond_0

    sget-object v10, Lcom/google/android/exoplayer2/extractor/mp3/Id3Util;->CHARSET_BY_ENCODING:[Ljava/nio/charset/Charset;

    array-length v10, v10

    if-ge v3, v10, :cond_0

    .line 178
    sget-object v10, Lcom/google/android/exoplayer2/extractor/mp3/Id3Util;->CHARSET_BY_ENCODING:[Ljava/nio/charset/Charset;

    aget-object v0, v10, v3

    .line 179
    .local v0, "charset":Ljava/nio/charset/Charset;
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p1, v10, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\u0000"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "commentFields":[Ljava/lang/String;
    array-length v10, v1

    if-ne v10, v13, :cond_0

    aget-object v7, v1, v9

    aget-object v8, v1, v8

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    goto :goto_1

    .line 152
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    .end local v1    # "commentFields":[Ljava/lang/String;
    .end local v3    # "encoding":I
    .end local v5    # "frameSize":I
    .end local v6    # "id":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    const/16 v11, 0xa

    if-lt v10, v11, :cond_0

    .line 155
    const-string v10, "US-ASCII"

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {p1, v12, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 156
    .restart local v6    # "id":Ljava/lang/String;
    const-string v10, "\u0000\u0000\u0000\u0000"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 159
    if-ne p0, v12, :cond_7

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v5

    .line 160
    .restart local v5    # "frameSize":I
    :goto_2
    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    if-gt v5, v10, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 164
    .local v4, "flags":I
    if-ne p0, v12, :cond_4

    and-int/lit8 v10, v4, 0xc

    if-nez v10, :cond_5

    :cond_4
    const/4 v10, 0x3

    if-ne p0, v10, :cond_8

    and-int/lit16 v10, v4, 0xc0

    if-eqz v10, :cond_8

    :cond_5
    move v2, v8

    .line 166
    .local v2, "compressedOrEncrypted":Z
    :goto_3
    if-nez v2, :cond_6

    const-string v10, "COMM"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 170
    .end local v2    # "compressedOrEncrypted":Z
    .end local v4    # "flags":I
    :cond_6
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_0

    .line 159
    .end local v5    # "frameSize":I
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    goto :goto_2

    .restart local v4    # "flags":I
    .restart local v5    # "frameSize":I
    :cond_8
    move v2, v9

    .line 164
    goto :goto_3
.end method

.method private static parseGaplessInfo(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)V
    .locals 7
    .param p0, "frame"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "version"    # I
    .param p2, "flags"    # I
    .param p3, "out"    # Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x4

    .line 88
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp3/Id3Util;->unescape(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Z

    .line 91
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 92
    if-ne p1, v5, :cond_4

    and-int/lit8 v3, p2, 0x40

    if-eqz v3, :cond_4

    .line 93
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-ge v3, v4, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 97
    .local v1, "extendedHeaderSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 101
    if-lt v1, v6, :cond_2

    .line 102
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 104
    .local v2, "paddingSize":I
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lt v3, v1, :cond_0

    .line 110
    .end local v2    # "paddingSize":I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 124
    .end local v1    # "extendedHeaderSize":I
    :cond_3
    :goto_1
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/extractor/mp3/Id3Util;->findNextComment(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v0

    .local v0, "comment":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 125
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_3

    .line 126
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p3, v4, v3}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 111
    .end local v0    # "comment":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    if-ne p1, v4, :cond_3

    and-int/lit8 v3, p2, 0x40

    if-eqz v3, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lt v3, v4, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v1

    .line 116
    .restart local v1    # "extendedHeaderSize":I
    if-lt v1, v6, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    if-gt v1, v3, :cond_0

    .line 119
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1
.end method

.method public static parseId3(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)V
    .locals 11
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "out"    # Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x0

    .line 50
    new-instance v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v6, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 51
    .local v6, "scratch":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/4 v5, 0x0

    .line 53
    .local v5, "peekedId3Bytes":I
    :goto_0
    iget-object v7, v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p0, v7, v9, v10}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 54
    invoke-virtual {v6, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 55
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v7

    sget v8, Lcom/google/android/exoplayer2/extractor/mp3/Id3Util;->ID3_TAG:I

    if-eq v7, v8, :cond_0

    .line 73
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 74
    invoke-interface {p0, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 75
    return-void

    .line 59
    :cond_0
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 60
    .local v3, "majorVersion":I
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 61
    .local v4, "minorVersion":I
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 62
    .local v0, "flags":I
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    .line 63
    .local v2, "length":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v3, v4, v0, v2}, Lcom/google/android/exoplayer2/extractor/mp3/Id3Util;->canParseMetadata(IIII)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 64
    new-array v1, v2, [B

    .line 65
    .local v1, "frame":[B
    invoke-interface {p0, v1, v9, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 66
    new-instance v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v7, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v7, v3, v0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/Id3Util;->parseGaplessInfo(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)V

    .line 71
    .end local v1    # "frame":[B
    :goto_1
    add-int/lit8 v7, v2, 0xa

    add-int/2addr v5, v7

    .line 72
    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1
.end method

.method private static unescape(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Z
    .locals 7
    .param p0, "frame"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "version"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    const/4 v5, 0x4

    if-eq p1, v5, :cond_4

    .line 185
    and-int/lit16 v3, p2, 0x80

    if-eqz v3, :cond_2

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 188
    .local v0, "bytes":[B
    array-length v2, v0

    .line 189
    .local v2, "newLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v2, :cond_1

    .line 190
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0xff

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    .line 191
    add-int/lit8 v3, v1, 0x2

    add-int/lit8 v5, v1, 0x1

    sub-int v6, v2, v1

    add-int/lit8 v6, v6, -0x2

    invoke-static {v0, v3, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    add-int/lit8 v2, v2, -0x1

    .line 189
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .end local v0    # "bytes":[B
    .end local v1    # "i":I
    .end local v2    # "newLength":I
    :cond_2
    :goto_1
    move v3, v4

    .line 207
    :cond_3
    return v3

    .line 199
    :cond_4
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/extractor/mp3/Id3Util;->canUnescapeVersion4(Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 200
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/extractor/mp3/Id3Util;->unescapeVersion4(Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V

    goto :goto_1

    .line 201
    :cond_5
    invoke-static {p0, v4}, Lcom/google/android/exoplayer2/extractor/mp3/Id3Util;->canUnescapeVersion4(Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 202
    invoke-static {p0, v4}, Lcom/google/android/exoplayer2/extractor/mp3/Id3Util;->unescapeVersion4(Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V

    goto :goto_1
.end method

.method private static unescapeVersion4(Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V
    .locals 13
    .param p0, "frame"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "unsignedIntDataSizeHack"    # Z

    .prologue
    .line 241
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 243
    .local v0, "bytes":[B
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    const/16 v12, 0xa

    if-lt v11, v12, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    if-nez v11, :cond_1

    .line 282
    :cond_0
    return-void

    .line 247
    :cond_1
    if-eqz p1, :cond_4

    .line 248
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 249
    .local v1, "dataSize":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 250
    .local v3, "flags":I
    move v6, v3

    .line 251
    .local v6, "previousFlags":I
    and-int/lit8 v11, v3, 0x1

    if-eqz v11, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 254
    .local v5, "offset":I
    add-int/lit8 v11, v5, 0x4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-static {v0, v11, v0, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    add-int/lit8 v1, v1, -0x4

    .line 256
    and-int/lit8 v3, v3, -0x2

    .line 257
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 259
    .end local v5    # "offset":I
    :cond_2
    and-int/lit8 v11, v3, 0x2

    if-eqz v11, :cond_6

    .line 261
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v11

    add-int/lit8 v7, v11, 0x1

    .line 262
    .local v7, "readOffset":I
    move v9, v7

    .line 263
    .local v9, "writeOffset":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v10, v9

    .end local v9    # "writeOffset":I
    .local v10, "writeOffset":I
    :goto_2
    add-int/lit8 v11, v4, 0x1

    if-ge v11, v1, :cond_5

    .line 264
    add-int/lit8 v11, v7, -0x1

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0xff

    if-ne v11, v12, :cond_3

    aget-byte v11, v0, v7

    if-nez v11, :cond_3

    .line 265
    add-int/lit8 v7, v7, 0x1

    .line 266
    add-int/lit8 v1, v1, -0x1

    .line 268
    :cond_3
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "writeOffset":I
    .restart local v9    # "writeOffset":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "readOffset":I
    .local v8, "readOffset":I
    aget-byte v11, v0, v7

    aput-byte v11, v0, v10

    .line 263
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    .end local v9    # "writeOffset":I
    .restart local v10    # "writeOffset":I
    move v7, v8

    .end local v8    # "readOffset":I
    .restart local v7    # "readOffset":I
    goto :goto_2

    .line 248
    .end local v1    # "dataSize":I
    .end local v3    # "flags":I
    .end local v4    # "i":I
    .end local v6    # "previousFlags":I
    .end local v7    # "readOffset":I
    .end local v10    # "writeOffset":I
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v1

    goto :goto_1

    .line 270
    .restart local v1    # "dataSize":I
    .restart local v3    # "flags":I
    .restart local v4    # "i":I
    .restart local v6    # "previousFlags":I
    .restart local v7    # "readOffset":I
    .restart local v10    # "writeOffset":I
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v11

    sub-int v12, v7, v10

    sub-int/2addr v11, v12

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 271
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-static {v0, v7, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    and-int/lit8 v3, v3, -0x3

    .line 274
    .end local v4    # "i":I
    .end local v7    # "readOffset":I
    .end local v10    # "writeOffset":I
    :cond_6
    if-ne v3, v6, :cond_7

    if-eqz p1, :cond_8

    .line 275
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v11

    add-int/lit8 v2, v11, -0x6

    .line 276
    .local v2, "dataSizeOffset":I
    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/mp3/Id3Util;->writeSyncSafeInteger([BII)V

    .line 277
    add-int/lit8 v11, v2, 0x4

    shr-int/lit8 v12, v3, 0x8

    int-to-byte v12, v12

    aput-byte v12, v0, v11

    .line 278
    add-int/lit8 v11, v2, 0x5

    and-int/lit16 v12, v3, 0xff

    int-to-byte v12, v12

    aput-byte v12, v0, v11

    .line 280
    .end local v2    # "dataSizeOffset":I
    :cond_8
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_0
.end method

.method private static writeSyncSafeInteger([BII)V
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .prologue
    .line 285
    shr-int/lit8 v0, p2, 0x15

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 286
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0xe

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 287
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x7

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 288
    add-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p2, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 289
    return-void
.end method
