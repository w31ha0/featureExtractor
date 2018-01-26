.class public final Lcom/google/zxing/oned/EAN13Reader;
.super Lcom/google/zxing/oned/UPCEANReader;


# static fields
.field static final FIRST_DIGIT_ENCODINGS:[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    return-void
.end method

.method private static determineFirstDigit(Ljava/lang/StringBuffer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuffer;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    aput v1, v5, v1

    aput v1, v5, v9

    const/4 v0, 0x2

    aput v1, v5, v0

    const/4 v0, 0x3

    aput v1, v5, v0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    aget v0, p2, v9

    move v4, v1

    move v3, v1

    :goto_0
    if-ge v4, v10, :cond_1

    if-ge v0, v6, :cond_1

    sget-object v2, Lcom/google/zxing/oned/EAN13Reader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v5, v0, v2}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v7

    rem-int/lit8 v2, v7, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v0

    move v0, v1

    :goto_1
    array-length v8, v5

    if-ge v0, v8, :cond_0

    aget v8, v5, v0

    add-int/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/16 v0, 0xa

    if-lt v7, v0, :cond_4

    rsub-int/lit8 v0, v4, 0x5

    shl-int v0, v9, v0

    or-int/2addr v0, v3

    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {p3, v3}, Lcom/google/zxing/oned/EAN13Reader;->determineFirstDigit(Ljava/lang/StringBuffer;I)V

    sget-object v2, Lcom/google/zxing/oned/EAN13Reader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v0, v9, v2}, Lcom/google/zxing/oned/EAN13Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    aget v0, v0, v9

    move v3, v1

    :goto_3
    if-ge v3, v10, :cond_3

    if-ge v0, v6, :cond_3

    sget-object v2, Lcom/google/zxing/oned/EAN13Reader;->L_PATTERNS:[[I

    invoke-static {p1, v5, v0, v2}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v0

    move v0, v1

    :goto_4
    array-length v4, v5

    if-ge v0, v4, :cond_2

    aget v4, v5, v0

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_3

    :cond_3
    return v0

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
