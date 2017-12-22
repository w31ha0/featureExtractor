.class final Lcom/ibm/icu/impl/UCharacterNameReader;
.super Ljava/lang/Object;
.source "UCharacterNameReader.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUBinary$Authenticate;


# instance fields
.field private m_algnamesindex_:I

.field private m_byteBuffer_:Ljava/nio/ByteBuffer;

.field private m_groupindex_:I

.field private m_groupstringindex_:I

.field private m_tokenstringindex_:I


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const v0, 0x756e616d

    invoke-static {p1, v0, p0}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    .line 49
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    .line 50
    return-void
.end method

.method private readAlg()Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
    .locals 5

    .prologue
    .line 161
    new-instance v1, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    invoke-direct {v1}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;-><init>()V

    .line 163
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 164
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 165
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 166
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 167
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->setInfo(IIBB)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    .line 172
    const/4 v2, 0x1

    if-ne v3, v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v2

    .line 176
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->setFactor([C)Z

    .line 177
    shl-int/lit8 v2, v4, 0x1

    sub-int/2addr v0, v2

    .line 180
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    .line 182
    :goto_1
    if-eqz v2, :cond_2

    .line 184
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    goto :goto_1

    .line 188
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->setPrefix(Ljava/lang/String;)Z

    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v0, v2

    .line 192
    if-lez v0, :cond_3

    .line 194
    new-array v0, v0, [B

    .line 195
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->setFactorString([B)Z

    :cond_3
    move-object v0, v1

    .line 198
    goto :goto_0
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    aget-byte v2, p1, v1

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected read(Lcom/ibm/icu/impl/UCharacterName;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 64
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_tokenstringindex_:I

    .line 65
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_groupindex_:I

    .line 66
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_groupstringindex_:I

    .line 67
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_algnamesindex_:I

    .line 70
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v1

    .line 71
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v0}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v1

    .line 72
    iget v2, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_groupindex_:I

    iget v3, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_tokenstringindex_:I

    sub-int/2addr v2, v3

    .line 73
    new-array v2, v2, [B

    .line 74
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {p1, v1, v2}, Lcom/ibm/icu/impl/UCharacterName;->setToken([C[B)Z

    .line 78
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v1

    .line 79
    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Lcom/ibm/icu/impl/UCharacterName;->setGroupCountSize(II)Z

    .line 80
    mul-int/lit8 v1, v1, 0x3

    .line 81
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v0}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v1

    .line 83
    iget v2, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_algnamesindex_:I

    iget v3, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_groupstringindex_:I

    sub-int/2addr v2, v3

    .line 84
    new-array v2, v2, [B

    .line 85
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {p1, v1, v2}, Lcom/ibm/icu/impl/UCharacterName;->setGroup([C[B)Z

    .line 89
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_byteBuffer_:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 90
    new-array v2, v1, [Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    .line 93
    :goto_0
    if-ge v0, v1, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/ibm/icu/impl/UCharacterNameReader;->readAlg()Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    move-result-object v3

    .line 96
    if-nez v3, :cond_0

    .line 97
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unames.icu read error: Algorithmic names creation error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    aput-object v3, v2, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/UCharacterName;->setAlgorithm([Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;)Z

    .line 102
    return-void
.end method
