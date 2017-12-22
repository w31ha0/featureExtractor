.class public final Lcom/ibm/icu/impl/ICUResourceBundleReader;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static CACHE:Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCache;

.field private static final EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

.field private static final EMPTY_ARRAY:Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

.field private static final EMPTY_TABLE:Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

.field private static final IS_ACCEPTABLE:Lcom/ibm/icu/impl/ICUResourceBundleReader$IsAcceptable;

.field private static final NULL_READER:Lcom/ibm/icu/impl/ICUResourceBundleReader;

.field private static PUBLIC_TYPES:[I

.field private static final emptyByteBuffer:Ljava/nio/ByteBuffer;

.field private static final emptyBytes:[B

.field private static final emptyChars:[C

.field private static final emptyInts:[I


# instance fields
.field private b16BitUnits:Ljava/nio/CharBuffer;

.field private bytes:Ljava/nio/ByteBuffer;

.field private dataVersion:I

.field private isPoolBundle:Z

.field private keyBytes:[B

.field private localKeyLimit:I

.field private noFallback:Z

.field private poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

.field private poolCheckSum:I

.field private poolStringIndex16Limit:I

.field private poolStringIndexLimit:I

.field private resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

.field private rootRes:I

.field private usesPoolBundle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    const-class v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->$assertionsDisabled:Z

    .line 44
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$IsAcceptable;

    invoke-direct {v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$IsAcceptable;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleReader$1;)V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/ICUResourceBundleReader$IsAcceptable;

    .line 113
    const-string/jumbo v0, "\u0000"

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    .line 146
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCache;

    invoke-direct {v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCache;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleReader$1;)V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->CACHE:Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCache;

    .line 147
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->NULL_READER:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 373
    new-array v0, v1, [B

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    .line 374
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    .line 375
    new-array v0, v1, [C

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    .line 376
    new-array v0, v1, [I

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    .line 378
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->EMPTY_ARRAY:Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    .line 379
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->EMPTY_TABLE:Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    .line 779
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->PUBLIC_TYPES:[I

    return-void

    :cond_0
    move v0, v1

    .line 30
    goto :goto_0

    .line 779
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x2
        0x2
        0x0
        0x7
        0x8
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0xe
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 2

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->init(Ljava/nio/ByteBuffer;)V

    .line 219
    iget-boolean v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    if-eqz v0, :cond_2

    .line 220
    const-string/jumbo v0, "pool"

    invoke-static {p2, v0, p4}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundleReader;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 221
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget-boolean v0, v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    if-nez v0, :cond_1

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pool.res is not a pool bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v0, v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    if-eq v0, v1, :cond_2

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pool.res has a different checksum than this bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundleReader$1;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/ICUResourceBundleReader;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static RES_GET_INT(I)I
    .locals 1

    .prologue
    .line 361
    shl-int/lit8 v0, p0, 0x4

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private static RES_GET_OFFSET(I)I
    .locals 1

    .prologue
    .line 354
    const v0, 0xfffffff

    and-int/2addr v0, p0

    return v0
.end method

.method static RES_GET_TYPE(I)I
    .locals 1

    .prologue
    .line 351
    ushr-int/lit8 v0, p0, 0x1c

    return v0
.end method

.method static URES_IS_ARRAY(I)Z
    .locals 1

    .prologue
    .line 367
    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static URES_IS_TABLE(I)Z
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getKey16String(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getKey32String(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;C)I
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->compareKeys(Ljava/lang/CharSequence;C)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->compareKeys32(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/ibm/icu/impl/ICUResourceBundleReader;ILcom/ibm/icu/impl/UResource$Key;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->setKeyFromKey16(ILcom/ibm/icu/impl/UResource$Key;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/ibm/icu/impl/ICUResourceBundleReader;ILcom/ibm/icu/impl/UResource$Key;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->setKeyFromKey32(ILcom/ibm/icu/impl/UResource$Key;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)[C
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getTableKeyOffsets(I)[C

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)[C
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getTable16KeyOffsets(I)[C

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)[I
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getTable32KeyOffsets(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lcom/ibm/icu/impl/ICUResourceBundleReader;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->NULL_READER:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    return-object v0
.end method

.method static synthetic access$2200(I)I
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->PUBLIC_TYPES:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)Z
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->isNoInheritanceMarker(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/ibm/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ibm/icu/impl/ICUResourceBundleReader;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndex16Limit:I

    return v0
.end method

.method static synthetic access$800(Lcom/ibm/icu/impl/ICUResourceBundleReader;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    return v0
.end method

.method static synthetic access$900(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    return v0
.end method

.method private compareKeys(Ljava/lang/CharSequence;C)I
    .locals 2

    .prologue
    .line 483
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    if-ge p2, v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {p1, v0, p2}, Lcom/ibm/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result v0

    .line 486
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    sub-int v1, p2, v1

    invoke-static {p1, v0, v1}, Lcom/ibm/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result v0

    goto :goto_0
.end method

.method private compareKeys32(Ljava/lang/CharSequence;I)I
    .locals 2

    .prologue
    .line 490
    if-ltz p2, :cond_0

    .line 491
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {p1, v0, p2}, Lcom/ibm/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result v0

    .line 493
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    const v1, 0x7fffffff

    and-int/2addr v1, p2

    invoke-static {p1, v0, v1}, Lcom/ibm/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result v0

    goto :goto_0
.end method

.method private getChars(II)[C
    .locals 3

    .prologue
    .line 382
    new-array v1, p2, [C

    .line 383
    const/16 v0, 0x10

    if-gt p2, v0, :cond_0

    .line 384
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 385
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    aput-char v2, v1, v0

    .line 384
    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 389
    div-int/lit8 v2, p1, 0x2

    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 390
    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 392
    :cond_1
    return-object v1
.end method

.method public static getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2f

    const/16 v2, 0x2e

    .line 1374
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1375
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1376
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1391
    :goto_0
    return-object v0

    .line 1378
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1380
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 1381
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_3

    .line 1382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1384
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1387
    :cond_4
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1388
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 1389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1391
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getIndexesInt(I)I
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x1

    shl-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private getInt(I)I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private getInts(II)[I
    .locals 3

    .prologue
    .line 398
    new-array v1, p2, [I

    .line 399
    const/16 v0, 0x10

    if-gt p2, v0, :cond_0

    .line 400
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    aput v2, v1, v0

    .line 400
    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 405
    div-int/lit8 v2, p1, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 406
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 408
    :cond_1
    return-object v1
.end method

.method private getKey16String(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 455
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    if-ge p1, v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object v0

    .line 458
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getKey32String(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 462
    if-ltz p1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundleReader;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCacheKey;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->CACHE:Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCache;

    invoke-virtual {v1, v0, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 233
    sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->NULL_READER:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    if-ne v0, v1, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 236
    :cond_0
    return-object v0
.end method

.method private getResourceByteOffset(I)I
    .locals 1

    .prologue
    .line 357
    shl-int/lit8 v0, p1, 0x2

    return v0
.end method

.method private getTable16KeyOffsets(I)[C
    .locals 6

    .prologue
    .line 411
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v4

    .line 412
    if-lez v4, :cond_2

    .line 413
    new-array v0, v4, [C

    .line 414
    const/16 v1, 0x10

    if-gt v4, v1, :cond_0

    .line 415
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 416
    iget-object v5, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 415
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v1

    .line 420
    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 421
    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 425
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    goto :goto_1
.end method

.method private getTable32KeyOffsets(I)[I
    .locals 2

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    .line 438
    if-lez v0, :cond_0

    .line 439
    add-int/lit8 v1, p1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInts(II)[I

    move-result-object v0

    .line 441
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    goto :goto_0
.end method

.method private getTableKeyOffsets(I)[C
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    .line 430
    if-lez v0, :cond_0

    .line 431
    add-int/lit8 v1, p1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getChars(II)[C

    move-result-object v0

    .line 433
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    goto :goto_0
.end method

.method private init(Ljava/nio/ByteBuffer;)V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    const v0, 0x52657342

    sget-object v3, Lcom/ibm/icu/impl/ICUResourceBundleReader;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/ICUResourceBundleReader$IsAcceptable;

    invoke-static {p1, v0, v3}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->dataVersion:I

    .line 242
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 243
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    .line 244
    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 249
    iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->rootRes:I

    .line 255
    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v4

    .line 256
    and-int/lit16 v5, v4, 0xff

    .line 257
    const/4 v6, 0x4

    if-gt v5, v6, :cond_0

    .line 258
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "not enough indexes"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    add-int/lit8 v6, v5, 0x1

    shl-int/lit8 v6, v6, 0x2

    if-lt v3, v6, :cond_1

    .line 262
    invoke-direct {p0, v8}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v6

    shl-int/lit8 v7, v6, 0x2

    if-ge v3, v7, :cond_2

    .line 263
    :cond_1
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "not enough bytes"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_2
    add-int/lit8 v3, v6, -0x1

    .line 267
    if-lt v0, v8, :cond_3

    .line 272
    ushr-int/lit8 v0, v4, 0x8

    iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    .line 274
    :cond_3
    if-le v5, v9, :cond_4

    .line 277
    invoke-direct {p0, v9}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v4

    .line 278
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_9

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->noFallback:Z

    .line 279
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_a

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    .line 280
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_b

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    .line 281
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    const v6, 0xf000

    and-int/2addr v6, v4

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v0, v6

    iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    .line 282
    ushr-int/lit8 v0, v4, 0x10

    iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndex16Limit:I

    .line 285
    :cond_4
    add-int/lit8 v0, v5, 0x1

    .line 286
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v4

    .line 287
    if-le v4, v0, :cond_5

    .line 290
    iget-boolean v6, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    if-eqz v6, :cond_c

    .line 295
    sub-int v6, v4, v0

    shl-int/lit8 v6, v6, 0x2

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    .line 296
    iget-object v6, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    shl-int/lit8 v0, v0, 0x2

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 301
    :goto_3
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 305
    :cond_5
    if-le v5, v10, :cond_e

    .line 306
    invoke-direct {p0, v10}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v0

    .line 307
    if-le v0, v4, :cond_d

    .line 308
    sub-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x2

    .line 309
    iget-object v6, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    shl-int/lit8 v4, v4, 0x2

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 310
    iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    .line 311
    iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 312
    add-int/lit8 v0, v0, -0x1

    or-int/2addr v0, v3

    .line 320
    :goto_4
    const/4 v3, 0x7

    if-le v5, v3, :cond_6

    .line 321
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v3

    iput v3, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    .line 324
    :cond_6
    iget-boolean v3, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->length()I

    move-result v3

    if-le v3, v1, :cond_8

    .line 325
    :cond_7
    new-instance v1, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-direct {v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;-><init>(I)V

    iput-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    .line 329
    :cond_8
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 330
    return-void

    :cond_9
    move v0, v2

    .line 278
    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 279
    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 280
    goto :goto_2

    .line 298
    :cond_c
    shl-int/lit8 v0, v4, 0x2

    iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    .line 299
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    goto :goto_3

    .line 314
    :cond_d
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    :goto_5
    move v0, v3

    goto :goto_4

    .line 317
    :cond_e
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    goto :goto_5
.end method

.method private isNoInheritanceMarker(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x2205

    .line 589
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v1

    .line 590
    if-nez v1, :cond_1

    .line 603
    :cond_0
    :goto_0
    return v0

    .line 592
    :cond_1
    if-ne p1, v1, :cond_2

    .line 593
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v1

    .line 594
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, 0x6

    .line 595
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v1

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 596
    :cond_2
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 597
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    if-ge v1, v0, :cond_3

    .line 598
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->isStringV2NoInheritanceMarker(I)Z

    move-result v0

    goto :goto_0

    .line 600
    :cond_3
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    sub-int v0, v1, v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->isStringV2NoInheritanceMarker(I)Z

    move-result v0

    goto :goto_0
.end method

.method private isStringV2NoInheritanceMarker(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x2205

    .line 607
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v2

    .line 608
    if-ne v2, v4, :cond_2

    .line 609
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v3, p1, 0x2

    .line 610
    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v3, p1, 0x3

    .line 611
    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v2

    if-nez v2, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 611
    goto :goto_0

    .line 612
    :cond_2
    const v3, 0xdc03

    if-ne v2, v3, :cond_4

    .line 613
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v3, p1, 0x2

    .line 614
    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v3, p1, 0x3

    .line 615
    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 618
    goto :goto_0
.end method

.method private static makeKeyStringFromBytes([BI)Ljava/lang/String;
    .locals 2

    .prologue
    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    :goto_0
    aget-byte v1, p0, p1

    if-eqz v1, :cond_0

    .line 449
    add-int/lit8 p1, p1, 0x1

    .line 450
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeStringFromBytes(II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 546
    const/16 v0, 0x10

    if-gt p2, v0, :cond_1

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 548
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 549
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    :goto_1
    return-object v0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 554
    div-int/lit8 v1, p1, 0x2

    .line 555
    add-int v2, v1, p2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setKeyFromKey16(ILcom/ibm/icu/impl/UResource$Key;)V
    .locals 2

    .prologue
    .line 469
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    if-ge p1, v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-virtual {p2, v0, p1}, Lcom/ibm/icu/impl/UResource$Key;->setBytes([BI)Lcom/ibm/icu/impl/UResource$Key;

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    sub-int v1, p1, v1

    invoke-virtual {p2, v0, v1}, Lcom/ibm/icu/impl/UResource$Key;->setBytes([BI)Lcom/ibm/icu/impl/UResource$Key;

    goto :goto_0
.end method

.method private setKeyFromKey32(ILcom/ibm/icu/impl/UResource$Key;)V
    .locals 2

    .prologue
    .line 476
    if-ltz p1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-virtual {p2, v0, p1}, Lcom/ibm/icu/impl/UResource$Key;->setBytes([BI)Lcom/ibm/icu/impl/UResource$Key;

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Lcom/ibm/icu/impl/UResource$Key;->setBytes([BI)Lcom/ibm/icu/impl/UResource$Key;

    goto :goto_0
.end method


# virtual methods
.method getAlias(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 623
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v1

    .line 625
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 626
    if-nez v1, :cond_0

    .line 627
    const-string/jumbo v0, ""

    .line 639
    :goto_0
    return-object v0

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_1

    .line 631
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 633
    :cond_1
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    .line 634
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v1

    .line 635
    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->makeStringFromBytes(II)Ljava/lang/String;

    move-result-object v0

    .line 636
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, p1, v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 639
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getArray(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;
    .locals 3

    .prologue
    .line 729
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    .line 730
    invoke-static {v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    const/4 v0, 0x0

    .line 743
    :goto_0
    return-object v0

    .line 733
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v2

    .line 734
    if-nez v2, :cond_1

    .line 735
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->EMPTY_ARRAY:Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    goto :goto_0

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 738
    if-eqz v0, :cond_2

    .line 739
    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    goto :goto_0

    .line 741
    :cond_2
    const/16 v0, 0x8

    if-ne v1, v0, :cond_3

    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array32;

    invoke-direct {v0, p0, v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array32;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V

    .line 743
    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    goto :goto_0

    .line 741
    :cond_3
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array16;

    invoke-direct {v0, p0, v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array16;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V

    goto :goto_1
.end method

.method getBinary(I[B)[B
    .locals 6

    .prologue
    .line 644
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 646
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 647
    if-nez v0, :cond_1

    .line 648
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    .line 673
    :cond_0
    :goto_0
    return-object v0

    .line 650
    :cond_1
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v1

    .line 651
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v4

    .line 652
    if-nez v4, :cond_2

    .line 653
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    goto :goto_0

    .line 657
    :cond_2
    if-eqz p2, :cond_3

    array-length v0, p2

    if-eq v0, v4, :cond_6

    .line 658
    :cond_3
    new-array v0, v4, [B

    .line 660
    :goto_1
    add-int/lit8 v2, v1, 0x4

    .line 661
    const/16 v1, 0x10

    if-gt v4, v1, :cond_4

    .line 662
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_0

    .line 663
    iget-object v5, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 662
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_2

    .line 666
    :cond_4
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 667
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 668
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 673
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    move-object v0, p2

    goto :goto_1
.end method

.method getIntVector(I)[I
    .locals 3

    .prologue
    .line 711
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 713
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    .line 714
    if-nez v0, :cond_0

    .line 715
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    .line 724
    :goto_0
    return-object v0

    .line 719
    :cond_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    .line 720
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v1

    .line 721
    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInts(II)[I

    move-result-object v0

    goto :goto_0

    .line 724
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNoFallback()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->noFallback:Z

    return v0
.end method

.method getRootResource()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->rootRes:I

    return v0
.end method

.method getString(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 560
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v1

    .line 561
    if-eq p1, v1, :cond_0

    .line 562
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 563
    const/4 v0, 0x0

    .line 582
    :goto_0
    return-object v0

    .line 565
    :cond_0
    if-nez v1, :cond_1

    .line 566
    const-string/jumbo v0, ""

    goto :goto_0

    .line 568
    :cond_1
    if-eq p1, v1, :cond_3

    .line 569
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    if-ge v1, v0, :cond_2

    .line 570
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getStringV2(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 572
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getStringV2(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 575
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 576
    if-eqz v0, :cond_4

    .line 577
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 579
    :cond_4
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    .line 580
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v1

    .line 581
    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->makeStringFromBytes(II)Ljava/lang/String;

    move-result-object v0

    .line 582
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, p1, v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method getStringV2(I)Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0xdfef

    .line 506
    sget-boolean v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 507
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v1

    .line 508
    sget-boolean v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_2

    .line 511
    check-cast v0, Ljava/lang/String;

    .line 542
    :goto_0
    return-object v0

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    .line 515
    and-int/lit16 v2, v0, -0x400

    const v3, 0xdc00

    if-eq v2, v3, :cond_5

    .line 516
    if-nez v0, :cond_3

    .line 517
    const-string/jumbo v0, ""

    goto :goto_0

    .line 519
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 522
    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_4

    .line 523
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 525
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    :goto_2
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, p1, v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 528
    :cond_5
    if-ge v0, v4, :cond_6

    .line 529
    and-int/lit16 v0, v0, 0x3ff

    .line 530
    add-int/lit8 v1, v1, 0x1

    .line 540
    :goto_3
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/2addr v0, v1

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 531
    :cond_6
    const v2, 0xdfff

    if-ge v0, v2, :cond_7

    .line 532
    sub-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x10

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v2

    or-int/2addr v0, v2

    .line 533
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 535
    :cond_7
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v2

    or-int/2addr v0, v2

    .line 536
    add-int/lit8 v1, v1, 0x3

    goto :goto_3
.end method

.method getTable(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;
    .locals 3

    .prologue
    .line 747
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    .line 748
    invoke-static {v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    const/4 v0, 0x0

    .line 771
    :goto_0
    return-object v0

    .line 751
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v2

    .line 752
    if-nez v2, :cond_1

    .line 753
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->EMPTY_TABLE:Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    goto :goto_0

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 756
    if-eqz v0, :cond_2

    .line 757
    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    goto :goto_0

    .line 761
    :cond_2
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 762
    new-instance v1, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table1632;

    invoke-direct {v1, p0, v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table1632;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V

    .line 763
    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 771
    :goto_1
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v2, p1, v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    goto :goto_0

    .line 764
    :cond_3
    const/4 v0, 0x5

    if-ne v1, v0, :cond_4

    .line 765
    new-instance v1, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;

    invoke-direct {v1, p0, v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V

    .line 766
    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 768
    :cond_4
    new-instance v1, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;

    invoke-direct {v1, p0, v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V

    .line 769
    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    goto :goto_1
.end method
