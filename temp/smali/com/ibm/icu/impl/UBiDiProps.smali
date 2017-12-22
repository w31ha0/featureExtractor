.class public final Lcom/ibm/icu/impl/UBiDiProps;
.super Ljava/lang/Object;
.source "UBiDiProps.java"


# static fields
.field public static final INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;


# instance fields
.field private indexes:[I

.field private jgArray:[B

.field private jgArray2:[B

.field private mirrors:[I

.field private trie:Lcom/ibm/icu/impl/Trie2_16;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 341
    :try_start_0
    new-instance v0, Lcom/ibm/icu/impl/UBiDiProps;

    invoke-direct {v0}, Lcom/ibm/icu/impl/UBiDiProps;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, "ubidi.icu"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUBinary;->getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 39
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/UBiDiProps;->readData(Ljava/nio/ByteBuffer;)V

    .line 40
    return-void
.end method

.method private static final getClassFromProps(I)I
    .locals 1

    .prologue
    .line 305
    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method private static final getFlagFromProps(II)Z
    .locals 1

    .prologue
    .line 308
    shr-int v0, p0, p1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final getMirrorCodePoint(I)I
    .locals 1

    .prologue
    .line 325
    const v0, 0x1fffff

    and-int/2addr v0, p0

    return v0
.end method

.method private readData(Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 44
    const v0, 0x42694469

    new-instance v1, Lcom/ibm/icu/impl/UBiDiProps$IsAcceptable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/UBiDiProps$IsAcceptable;-><init>(Lcom/ibm/icu/impl/UBiDiProps$1;)V

    invoke-static {p1, v0, v1}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    .line 48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 49
    const/16 v0, 0x10

    if-ge v1, v0, :cond_0

    .line 50
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "indexes[0] too small in ubidi.icu"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    .line 54
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    aput v1, v0, v4

    .line 55
    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 56
    iget-object v2, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v2, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Trie2_16;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    .line 61
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 62
    iget-object v1, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v1

    .line 63
    if-le v1, v0, :cond_2

    .line 64
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ubidi.icu: not enough bytes for the trie"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2
    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 70
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    .line 71
    if-lez v0, :cond_3

    .line 72
    invoke-static {p1, v0, v4}, Lcom/ibm/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->mirrors:[I

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    iget-object v1, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 77
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->jgArray:[B

    .line 78
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->jgArray:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 81
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    iget-object v1, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 82
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->jgArray2:[B

    .line 83
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->jgArray2:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 84
    return-void
.end method


# virtual methods
.method public final addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v4, 0x0

    .line 103
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 105
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v2, v0, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 106
    iget v0, v0, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x3

    aget v1, v0, v1

    move v0, v4

    .line 111
    :goto_1
    if-ge v0, v1, :cond_1

    .line 112
    iget-object v2, p0, Lcom/ibm/icu/impl/UBiDiProps;->mirrors:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/ibm/icu/impl/UBiDiProps;->getMirrorCodePoint(I)I

    move-result v2

    .line 113
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x4

    aget v2, v0, v1

    .line 118
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    aget v1, v0, v8

    .line 119
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->jgArray:[B

    .line 121
    :goto_2
    sub-int v7, v1, v2

    move v3, v4

    move v5, v2

    move v6, v4

    .line 123
    :goto_3
    if-ge v6, v7, :cond_2

    .line 124
    aget-byte v2, v0, v6

    .line 125
    if-eq v2, v3, :cond_5

    .line 126
    invoke-virtual {p1, v5}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 129
    :goto_4
    add-int/lit8 v3, v5, 0x1

    .line 123
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v3

    move v3, v2

    goto :goto_3

    .line 131
    :cond_2
    if-eqz v3, :cond_3

    .line 133
    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    aget v0, v0, v8

    if-ne v1, v0, :cond_4

    .line 137
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x6

    aget v2, v0, v1

    .line 138
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x7

    aget v1, v0, v1

    .line 139
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->jgArray2:[B

    goto :goto_2

    .line 148
    :cond_4
    return-void

    :cond_5
    move v2, v3

    goto :goto_4
.end method

.method public final getClass(I)I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/UBiDiProps;->getClassFromProps(I)I

    move-result v0

    return v0
.end method

.method public final getJoiningGroup(I)I
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    .line 228
    iget-object v1, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    .line 229
    if-gt v0, p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/ibm/icu/impl/UBiDiProps;->jgArray:[B

    sub-int v0, p1, v0

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 237
    :goto_0
    return v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    .line 233
    iget-object v1, p0, Lcom/ibm/icu/impl/UBiDiProps;->indexes:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    .line 234
    if-gt v0, p1, :cond_1

    if-ge p1, v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/ibm/icu/impl/UBiDiProps;->jgArray2:[B

    sub-int v0, p1, v0

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 237
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getJoiningType(I)I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xe0

    shr-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public final getPairedBracketType(I)I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x300

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final isBidiControl(I)Z
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    move-result v0

    return v0
.end method

.method public final isJoinControl(I)Z
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    move-result v0

    return v0
.end method

.method public final isMirrored(I)Z
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ibm/icu/impl/UBiDiProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    move-result v0

    return v0
.end method
