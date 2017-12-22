.class public abstract Lcom/ibm/icu/impl/Trie2;
.super Ljava/lang/Object;
.source "Trie2.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/ibm/icu/impl/Trie2$Range;",
        ">;"
    }
.end annotation


# static fields
.field private static defaultValueMapper:Lcom/ibm/icu/impl/Trie2$ValueMapper;


# instance fields
.field data16:I

.field data32:[I

.field dataLength:I

.field dataNullOffset:I

.field errorValue:I

.field fHash:I

.field header:Lcom/ibm/icu/impl/Trie2$UTrie2Header;

.field highStart:I

.field highValueIndex:I

.field index:[C

.field index2NullOffset:I

.field indexLength:I

.field initialValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 383
    new-instance v0, Lcom/ibm/icu/impl/Trie2$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/Trie2$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/Trie2;->defaultValueMapper:Lcom/ibm/icu/impl/Trie2$ValueMapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/ibm/icu/impl/Trie2;->initHash()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(II)I
    .locals 1

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Trie2;->hashUChar32(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(II)I
    .locals 1

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Trie2;->hashInt(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(II)I
    .locals 1

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Trie2;->hashByte(II)I

    move-result v0

    return v0
.end method

.method public static createFromSerialized(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Trie2;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    .line 97
    :try_start_0
    new-instance v4, Lcom/ibm/icu/impl/Trie2$UTrie2Header;

    invoke-direct {v4}, Lcom/ibm/icu/impl/Trie2$UTrie2Header;-><init>()V

    .line 100
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v4, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->signature:I

    .line 101
    iget v2, v4, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->signature:I

    sparse-switch v2, :sswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer does not contain a serialized UTrie2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v0

    .line 107
    :sswitch_0
    :try_start_1
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v2, :cond_0

    move v0, v1

    .line 108
    :cond_0
    if-eqz v0, :cond_1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 109
    const v0, 0x54726932

    iput v0, v4, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->signature:I

    .line 115
    :sswitch_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    iput v0, v4, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->options:I

    .line 116
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    iput v0, v4, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->indexLength:I

    .line 117
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    iput v0, v4, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    .line 118
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    iput v0, v4, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    .line 119
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    iput v0, v4, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    .line 120
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    iput v0, v4, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    .line 124
    iget v0, v4, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->options:I

    and-int/lit8 v0, v0, 0xf

    if-le v0, v1, :cond_2

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "UTrie2 serialized format error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    .line 129
    :cond_2
    iget v0, v4, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->options:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_5

    .line 130
    sget-object v1, Lcom/ibm/icu/impl/Trie2$ValueWidth;->BITS_16:Lcom/ibm/icu/impl/Trie2$ValueWidth;

    .line 131
    new-instance v0, Lcom/ibm/icu/impl/Trie2_16;

    invoke-direct {v0}, Lcom/ibm/icu/impl/Trie2_16;-><init>()V

    move-object v2, v1

    move-object v1, v0

    .line 136
    :goto_1
    iput-object v4, v1, Lcom/ibm/icu/impl/Trie2;->header:Lcom/ibm/icu/impl/Trie2$UTrie2Header;

    .line 139
    iget v0, v4, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->indexLength:I

    iput v0, v1, Lcom/ibm/icu/impl/Trie2;->indexLength:I

    .line 140
    iget v0, v4, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    shl-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/ibm/icu/impl/Trie2;->dataLength:I

    .line 141
    iget v0, v4, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    iput v0, v1, Lcom/ibm/icu/impl/Trie2;->index2NullOffset:I

    .line 142
    iget v0, v4, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    iput v0, v1, Lcom/ibm/icu/impl/Trie2;->dataNullOffset:I

    .line 143
    iget v0, v4, Lcom/ibm/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    shl-int/lit8 v0, v0, 0xb

    iput v0, v1, Lcom/ibm/icu/impl/Trie2;->highStart:I

    .line 144
    iget v0, v1, Lcom/ibm/icu/impl/Trie2;->dataLength:I

    add-int/lit8 v0, v0, -0x4

    iput v0, v1, Lcom/ibm/icu/impl/Trie2;->highValueIndex:I

    .line 145
    sget-object v0, Lcom/ibm/icu/impl/Trie2$ValueWidth;->BITS_16:Lcom/ibm/icu/impl/Trie2$ValueWidth;

    if-ne v2, v0, :cond_3

    .line 146
    iget v0, v1, Lcom/ibm/icu/impl/Trie2;->highValueIndex:I

    iget v4, v1, Lcom/ibm/icu/impl/Trie2;->indexLength:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/ibm/icu/impl/Trie2;->highValueIndex:I

    .line 152
    :cond_3
    iget v0, v1, Lcom/ibm/icu/impl/Trie2;->indexLength:I

    .line 153
    sget-object v4, Lcom/ibm/icu/impl/Trie2$ValueWidth;->BITS_16:Lcom/ibm/icu/impl/Trie2$ValueWidth;

    if-ne v2, v4, :cond_4

    .line 154
    iget v4, v1, Lcom/ibm/icu/impl/Trie2;->dataLength:I

    add-int/2addr v0, v4

    .line 158
    :cond_4
    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v0

    iput-object v0, v1, Lcom/ibm/icu/impl/Trie2;->index:[C

    .line 163
    sget-object v0, Lcom/ibm/icu/impl/Trie2$ValueWidth;->BITS_16:Lcom/ibm/icu/impl/Trie2$ValueWidth;

    if-ne v2, v0, :cond_6

    .line 164
    iget v0, v1, Lcom/ibm/icu/impl/Trie2;->indexLength:I

    iput v0, v1, Lcom/ibm/icu/impl/Trie2;->data16:I

    .line 169
    :goto_2
    sget-object v0, Lcom/ibm/icu/impl/Trie2$2;->$SwitchMap$com$ibm$icu$impl$Trie2$ValueWidth:[I

    invoke-virtual {v2}, Lcom/ibm/icu/impl/Trie2$ValueWidth;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "UTrie2 serialized format error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_5
    sget-object v1, Lcom/ibm/icu/impl/Trie2$ValueWidth;->BITS_32:Lcom/ibm/icu/impl/Trie2$ValueWidth;

    .line 134
    new-instance v0, Lcom/ibm/icu/impl/Trie2_32;

    invoke-direct {v0}, Lcom/ibm/icu/impl/Trie2_32;-><init>()V

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    .line 166
    :cond_6
    iget v0, v1, Lcom/ibm/icu/impl/Trie2;->dataLength:I

    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Lcom/ibm/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v0

    iput-object v0, v1, Lcom/ibm/icu/impl/Trie2;->data32:[I

    goto :goto_2

    .line 171
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/ibm/icu/impl/Trie2;->data32:[I

    .line 172
    iget-object v0, v1, Lcom/ibm/icu/impl/Trie2;->index:[C

    iget v2, v1, Lcom/ibm/icu/impl/Trie2;->dataNullOffset:I

    aget-char v0, v0, v2

    iput v0, v1, Lcom/ibm/icu/impl/Trie2;->initialValue:I

    .line 173
    iget-object v0, v1, Lcom/ibm/icu/impl/Trie2;->index:[C

    iget v2, v1, Lcom/ibm/icu/impl/Trie2;->data16:I

    add-int/lit16 v2, v2, 0x80

    aget-char v0, v0, v2

    iput v0, v1, Lcom/ibm/icu/impl/Trie2;->errorValue:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :goto_3
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 184
    return-object v1

    .line 176
    :pswitch_1
    const/4 v0, 0x0

    :try_start_2
    iput v0, v1, Lcom/ibm/icu/impl/Trie2;->data16:I

    .line 177
    iget-object v0, v1, Lcom/ibm/icu/impl/Trie2;->data32:[I

    iget v2, v1, Lcom/ibm/icu/impl/Trie2;->dataNullOffset:I

    aget v0, v0, v2

    iput v0, v1, Lcom/ibm/icu/impl/Trie2;->initialValue:I

    .line 178
    iget-object v0, v1, Lcom/ibm/icu/impl/Trie2;->data32:[I

    const/16 v2, 0x80

    aget v0, v0, v2

    iput v0, v1, Lcom/ibm/icu/impl/Trie2;->errorValue:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x32697254 -> :sswitch_0
        0x54726932 -> :sswitch_1
    .end sparse-switch

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static hashByte(II)I
    .locals 1

    .prologue
    .line 1033
    const v0, 0x1000193

    mul-int/2addr v0, p0

    .line 1034
    xor-int/2addr v0, p1

    .line 1035
    return v0
.end method

.method private static hashInt(II)I
    .locals 2

    .prologue
    .line 1046
    and-int/lit16 v0, p1, 0xff

    invoke-static {p0, v0}, Lcom/ibm/icu/impl/Trie2;->hashByte(II)I

    move-result v0

    .line 1047
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Trie2;->hashByte(II)I

    move-result v0

    .line 1048
    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Trie2;->hashByte(II)I

    move-result v0

    .line 1049
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Trie2;->hashByte(II)I

    move-result v0

    .line 1050
    return v0
.end method

.method private static hashUChar32(II)I
    .locals 2

    .prologue
    .line 1039
    and-int/lit16 v0, p1, 0xff

    invoke-static {p0, v0}, Lcom/ibm/icu/impl/Trie2;->hashByte(II)I

    move-result v0

    .line 1040
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Trie2;->hashByte(II)I

    move-result v0

    .line 1041
    shr-int/lit8 v1, p1, 0x10

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Trie2;->hashByte(II)I

    move-result v0

    .line 1042
    return v0
.end method

.method private static initHash()I
    .locals 1

    .prologue
    .line 1029
    const v0, -0x7ee3623b

    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 288
    instance-of v0, p1, Lcom/ibm/icu/impl/Trie2;

    if-nez v0, :cond_0

    move v0, v2

    .line 313
    :goto_0
    return v0

    .line 291
    :cond_0
    check-cast p1, Lcom/ibm/icu/impl/Trie2;

    .line 294
    invoke-virtual {p1}, Lcom/ibm/icu/impl/Trie2;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 295
    invoke-virtual {p0}, Lcom/ibm/icu/impl/Trie2;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/Trie2$Range;

    .line 296
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 297
    goto :goto_0

    .line 299
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/Trie2$Range;

    .line 300
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/Trie2$Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 301
    goto :goto_0

    .line 304
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 305
    goto :goto_0

    .line 308
    :cond_4
    iget v0, p0, Lcom/ibm/icu/impl/Trie2;->errorValue:I

    iget v1, p1, Lcom/ibm/icu/impl/Trie2;->errorValue:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/ibm/icu/impl/Trie2;->initialValue:I

    iget v1, p1, Lcom/ibm/icu/impl/Trie2;->initialValue:I

    if-eq v0, v1, :cond_6

    :cond_5
    move v0, v2

    .line 310
    goto :goto_0

    .line 313
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract get(I)I
.end method

.method public abstract getFromU16SingleLead(C)I
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 319
    iget v0, p0, Lcom/ibm/icu/impl/Trie2;->fHash:I

    if-nez v0, :cond_2

    .line 320
    invoke-static {}, Lcom/ibm/icu/impl/Trie2;->initHash()I

    move-result v0

    .line 321
    invoke-virtual {p0}, Lcom/ibm/icu/impl/Trie2;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/Trie2$Range;

    .line 322
    invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie2$Range;->hashCode()I

    move-result v0

    invoke-static {v1, v0}, Lcom/ibm/icu/impl/Trie2;->hashInt(II)I

    move-result v0

    move v1, v0

    .line 323
    goto :goto_0

    .line 324
    :cond_0
    if-nez v1, :cond_1

    .line 325
    const/4 v1, 0x1

    .line 327
    :cond_1
    iput v1, p0, Lcom/ibm/icu/impl/Trie2;->fHash:I

    .line 329
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/Trie2;->fHash:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/ibm/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    sget-object v0, Lcom/ibm/icu/impl/Trie2;->defaultValueMapper:Lcom/ibm/icu/impl/Trie2$ValueMapper;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Trie2;->iterator(Lcom/ibm/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Lcom/ibm/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/Trie2$ValueMapper;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/ibm/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;-><init>(Lcom/ibm/icu/impl/Trie2;Lcom/ibm/icu/impl/Trie2$ValueMapper;)V

    return-object v0
.end method

.method rangeEnd(III)I
    .locals 3

    .prologue
    .line 1011
    iget v0, p0, Lcom/ibm/icu/impl/Trie2;->highStart:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1013
    add-int/lit8 v0, p1, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1014
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Trie2;->get(I)I

    move-result v2

    if-eq v2, p3, :cond_1

    .line 1018
    :cond_0
    iget v1, p0, Lcom/ibm/icu/impl/Trie2;->highStart:I

    if-lt v0, v1, :cond_2

    .line 1021
    :goto_1
    add-int/lit8 v0, p2, -0x1

    return v0

    .line 1013
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move p2, v0

    goto :goto_1
.end method
