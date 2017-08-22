.class public final Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;
.super Ljava/lang/Object;
.source "Id3Decoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/MetadataDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/metadata/MetadataDecoder",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ID3_TEXT_ENCODING_ISO_8859_1:I = 0x0

.field private static final ID3_TEXT_ENCODING_UTF_16:I = 0x1

.field private static final ID3_TEXT_ENCODING_UTF_16BE:I = 0x2

.field private static final ID3_TEXT_ENCODING_UTF_8:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeApicFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;
    .locals 13
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 221
    .local v5, "encoding":I
    invoke-static {v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "charset":Ljava/lang/String;
    add-int/lit8 v11, p1, -0x1

    new-array v1, v11, [B

    .line 224
    .local v1, "data":[B
    add-int/lit8 v11, p1, -0x1

    invoke-virtual {p0, v1, v12, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 226
    invoke-static {v1, v12}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v7

    .line 227
    .local v7, "mimeTypeEndIndex":I
    new-instance v6, Ljava/lang/String;

    const-string v11, "ISO-8859-1"

    invoke-direct {v6, v1, v12, v7, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 229
    .local v6, "mimeType":Ljava/lang/String;
    add-int/lit8 v11, v7, 0x1

    aget-byte v11, v1, v11

    and-int/lit16 v10, v11, 0xff

    .line 231
    .local v10, "pictureType":I
    add-int/lit8 v4, v7, 0x2

    .line 232
    .local v4, "descriptionStartIndex":I
    invoke-static {v1, v4, v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 233
    .local v3, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    sub-int v11, v3, v4

    invoke-direct {v2, v1, v4, v11, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 236
    .local v2, "description":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v11

    add-int v9, v3, v11

    .line 237
    .local v9, "pictureDataStartIndex":I
    array-length v11, v1

    invoke-static {v1, v9, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 239
    .local v8, "pictureData":[B
    new-instance v11, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    invoke-direct {v11, v6, v2, v10, v8}, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v11
.end method

.method private static decodeBinaryFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;
    .locals 2
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 258
    new-array v0, p1, [B

    .line 259
    .local v0, "frame":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 261
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    invoke-direct {v1, p2, v0}, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static decodeGeobFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;
    .locals 15
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 194
    .local v5, "encoding":I
    invoke-static {v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "charset":Ljava/lang/String;
    add-int/lit8 v13, p1, -0x1

    new-array v1, v13, [B

    .line 197
    .local v1, "data":[B
    const/4 v13, 0x0

    add-int/lit8 v14, p1, -0x1

    invoke-virtual {p0, v1, v13, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 199
    const/4 v13, 0x0

    invoke-static {v1, v13}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v10

    .line 200
    .local v10, "mimeTypeEndIndex":I
    new-instance v9, Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "ISO-8859-1"

    invoke-direct {v9, v1, v13, v10, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 202
    .local v9, "mimeType":Ljava/lang/String;
    add-int/lit8 v8, v10, 0x1

    .line 203
    .local v8, "filenameStartIndex":I
    invoke-static {v1, v8, v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v7

    .line 204
    .local v7, "filenameEndIndex":I
    new-instance v6, Ljava/lang/String;

    sub-int v13, v7, v8

    invoke-direct {v6, v1, v8, v13, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 207
    .local v6, "filename":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v13

    add-int v4, v7, v13

    .line 208
    .local v4, "descriptionStartIndex":I
    invoke-static {v1, v4, v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 209
    .local v3, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    sub-int v13, v3, v4

    invoke-direct {v2, v1, v4, v13, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 212
    .local v2, "description":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v13

    add-int v12, v3, v13

    .line 213
    .local v12, "objectDataStartIndex":I
    array-length v13, v1

    invoke-static {v1, v12, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 215
    .local v11, "objectData":[B
    new-instance v13, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    invoke-direct {v13, v9, v6, v2, v11}, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v13
.end method

.method private static decodeId3Header(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 13
    .param p0, "id3Buffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/metadata/MetadataDecoderException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    .line 130
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 131
    .local v2, "id1":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 132
    .local v3, "id2":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 133
    .local v4, "id3":I
    const/16 v6, 0x49

    if-ne v2, v6, :cond_0

    const/16 v6, 0x44

    if-ne v3, v6, :cond_0

    const/16 v6, 0x33

    if-eq v4, v6, :cond_1

    .line 134
    :cond_0
    new-instance v6, Lcom/google/android/exoplayer2/metadata/MetadataDecoderException;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Unexpected ID3 file identifier, expected \"ID3\", actual \"%c%c%c\"."

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    .line 134
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 137
    :cond_1
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 140
    .local v1, "flags":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v5

    .line 143
    .local v5, "id3Size":I
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    .line 145
    .local v0, "extendedHeaderSize":I
    const/4 v6, 0x4

    if-le v0, v6, :cond_2

    .line 146
    add-int/lit8 v6, v0, -0x4

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 148
    :cond_2
    sub-int/2addr v5, v0

    .line 152
    .end local v0    # "extendedHeaderSize":I
    :cond_3
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_4

    .line 153
    add-int/lit8 v5, v5, -0xa

    .line 156
    :cond_4
    return v5
.end method

.method private static decodePrivFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;
    .locals 7
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 179
    new-array v0, p1, [B

    .line 180
    .local v0, "data":[B
    invoke-virtual {p0, v0, v6, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 182
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 183
    .local v2, "ownerEndIndex":I
    new-instance v1, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v1, v0, v6, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 185
    .local v1, "owner":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    .line 186
    .local v4, "privateDataStartIndex":I
    array-length v5, v0

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 188
    .local v3, "privateData":[B
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    invoke-direct {v5, v1, v3}, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object v5
.end method

.method private static decodeTextInformationFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 7
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 244
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 245
    .local v4, "encoding":I
    invoke-static {v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "charset":Ljava/lang/String;
    add-int/lit8 v5, p1, -0x1

    new-array v1, v5, [B

    .line 248
    .local v1, "data":[B
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v1, v6, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 250
    invoke-static {v1, v6, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 251
    .local v3, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v6, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 253
    .local v2, "description":Ljava/lang/String;
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v5, p2, v2}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private static decodeTxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/TxxxFrame;
    .locals 10
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 162
    .local v4, "encoding":I
    invoke-static {v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "charset":Ljava/lang/String;
    add-int/lit8 v8, p1, -0x1

    new-array v1, v8, [B

    .line 165
    .local v1, "data":[B
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v1, v9, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 167
    invoke-static {v1, v9, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 168
    .local v3, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v9, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 170
    .local v2, "description":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v8

    add-int v7, v3, v8

    .line 171
    .local v7, "valueStartIndex":I
    invoke-static {v1, v7, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v6

    .line 172
    .local v6, "valueEndIndex":I
    new-instance v5, Ljava/lang/String;

    sub-int v8, v6, v7

    invoke-direct {v5, v1, v7, v8, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 174
    .local v5, "value":Ljava/lang/String;
    new-instance v8, Lcom/google/android/exoplayer2/metadata/id3/TxxxFrame;

    invoke-direct {v8, v2, v5}, Lcom/google/android/exoplayer2/metadata/id3/TxxxFrame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method private static delimiterLength(I)I
    .locals 1
    .param p0, "encodingByte"    # I

    .prologue
    .line 120
    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getCharsetName(I)Ljava/lang/String;
    .locals 1
    .param p0, "encodingByte"    # I

    .prologue
    .line 270
    packed-switch p0, :pswitch_data_0

    .line 280
    const-string v0, "ISO-8859-1"

    :goto_0
    return-object v0

    .line 272
    :pswitch_0
    const-string v0, "ISO-8859-1"

    goto :goto_0

    .line 274
    :pswitch_1
    const-string v0, "UTF-16"

    goto :goto_0

    .line 276
    :pswitch_2
    const-string v0, "UTF-16BE"

    goto :goto_0

    .line 278
    :pswitch_3
    const-string v0, "UTF-8"

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static indexOfEos([BII)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "encoding"    # I

    .prologue
    .line 92
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    .line 95
    .local v0, "terminationPos":I
    if-eqz p2, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    :cond_0
    move v1, v0

    .line 107
    :goto_0
    return v1

    .line 104
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    .line 100
    :cond_2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 101
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    move v1, v0

    .line 102
    goto :goto_0

    .line 107
    :cond_3
    array-length v1, p0

    goto :goto_0
.end method

.method private static indexOfZeroByte([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I

    .prologue
    .line 111
    move v0, p1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 112
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    .line 116
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 111
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    array-length v0, p0

    goto :goto_1
.end method


# virtual methods
.method public canDecode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "application/id3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic decode([BI)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/metadata/MetadataDecoderException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decode([BI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public decode([BI)Ljava/util/List;
    .locals 18
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/metadata/MetadataDecoderException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v11, "id3Frames":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;>;"
    new-instance v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v10, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 49
    .local v10, "id3Data":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-static {v10}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeId3Header(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v12

    .line 51
    .local v12, "id3Size":I
    :goto_0
    if-lez v12, :cond_0

    .line 52
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 53
    .local v4, "frameId0":I
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 54
    .local v5, "frameId1":I
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 55
    .local v6, "frameId2":I
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 56
    .local v7, "frameId3":I
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v8

    .line 57
    .local v8, "frameSize":I
    const/4 v13, 0x1

    if-gt v8, v13, :cond_1

    .line 88
    .end local v4    # "frameId0":I
    .end local v5    # "frameId1":I
    .end local v6    # "frameId2":I
    .end local v7    # "frameId3":I
    .end local v8    # "frameSize":I
    :cond_0
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    return-object v13

    .line 62
    .restart local v4    # "frameId0":I
    .restart local v5    # "frameId1":I
    .restart local v6    # "frameId2":I
    .restart local v7    # "frameId3":I
    .restart local v8    # "frameSize":I
    :cond_1
    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 66
    const/16 v13, 0x54

    if-ne v4, v13, :cond_2

    const/16 v13, 0x58

    if-ne v5, v13, :cond_2

    const/16 v13, 0x58

    if-ne v6, v13, :cond_2

    const/16 v13, 0x58

    if-ne v7, v13, :cond_2

    .line 67
    :try_start_0
    invoke-static {v10, v8}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeTxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/TxxxFrame;

    move-result-object v3

    .line 81
    .local v3, "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :goto_1
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v13, v8, 0xa

    sub-int/2addr v12, v13

    goto :goto_0

    .line 68
    .end local v3    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_2
    const/16 v13, 0x50

    if-ne v4, v13, :cond_3

    const/16 v13, 0x52

    if-ne v5, v13, :cond_3

    const/16 v13, 0x49

    if-ne v6, v13, :cond_3

    const/16 v13, 0x56

    if-ne v7, v13, :cond_3

    .line 69
    invoke-static {v10, v8}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodePrivFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    move-result-object v3

    .restart local v3    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_1

    .line 70
    .end local v3    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_3
    const/16 v13, 0x47

    if-ne v4, v13, :cond_4

    const/16 v13, 0x45

    if-ne v5, v13, :cond_4

    const/16 v13, 0x4f

    if-ne v6, v13, :cond_4

    const/16 v13, 0x42

    if-ne v7, v13, :cond_4

    .line 71
    invoke-static {v10, v8}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeGeobFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    move-result-object v3

    .restart local v3    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_1

    .line 72
    .end local v3    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_4
    const/16 v13, 0x41

    if-ne v4, v13, :cond_5

    const/16 v13, 0x50

    if-ne v5, v13, :cond_5

    const/16 v13, 0x49

    if-ne v6, v13, :cond_5

    const/16 v13, 0x43

    if-ne v7, v13, :cond_5

    .line 73
    invoke-static {v10, v8}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeApicFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v3

    .restart local v3    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_1

    .line 74
    .end local v3    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_5
    const/16 v13, 0x54

    if-ne v4, v13, :cond_6

    .line 75
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "%c%c%c%c"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 76
    .local v9, "id":Ljava/lang/String;
    invoke-static {v10, v8, v9}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeTextInformationFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v3

    .line 77
    .restart local v3    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_1

    .line 78
    .end local v3    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .end local v9    # "id":Ljava/lang/String;
    :cond_6
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "%c%c%c%c"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 79
    .restart local v9    # "id":Ljava/lang/String;
    invoke-static {v10, v8, v9}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeBinaryFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_1

    .line 83
    .end local v3    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .end local v9    # "id":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v13, Lcom/google/android/exoplayer2/metadata/MetadataDecoderException;

    const-string v14, "Unsupported encoding"

    invoke-direct {v13, v14, v2}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
.end method
