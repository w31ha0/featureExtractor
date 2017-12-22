.class public final Lcom/ibm/icu/impl/PatternProps;
.super Ljava/lang/Object;
.source "PatternProps.java"


# static fields
.field private static final index2000:[B

.field private static final latin1:[B

.field private static final syntax2000:[I

.field private static final syntaxOrWhiteSpace2000:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 178
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/PatternProps;->latin1:[B

    .line 213
    const/16 v0, 0x82

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ibm/icu/impl/PatternProps;->index2000:[B

    .line 237
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/ibm/icu/impl/PatternProps;->syntax2000:[I

    .line 254
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/ibm/icu/impl/PatternProps;->syntaxOrWhiteSpace2000:[I

    return-void

    .line 178
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x0t
        0x3t
        0x3t
        0x0t
        0x3t
        0x0t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 213
    :array_1
    .array-data 1
        0x2t
        0x3t
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x6t
        0x7t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x9t
    .end array-data

    .line 237
    nop

    :array_2
    .array-data 4
        0x0
        -0x1
        -0x10000
        0x7fff00ff
        0x7feffffe
        -0x10000
        0x3fffff
        -0x100000
        -0xf2
        0x10001
    .end array-data

    .line 254
    :array_3
    .array-data 4
        0x0
        -0x1
        -0x4000
        0x7fff03ff
        0x7feffffe
        -0x10000
        0x3fffff
        -0x100000
        -0xf2
        0x10001
    .end array-data
.end method

.method public static isIdentifier(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 129
    if-nez v3, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 134
    :goto_1
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/PatternProps;->isSyntaxOrWhiteSpace(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    if-lt v2, v3, :cond_2

    .line 138
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public static isSyntaxOrWhiteSpace(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    if-gez p0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 60
    :cond_1
    const/16 v2, 0xff

    if-gt p0, v2, :cond_3

    .line 61
    sget-object v2, Lcom/ibm/icu/impl/PatternProps;->latin1:[B

    aget-byte v2, v2, p0

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 62
    :cond_3
    const/16 v2, 0x200e

    if-lt p0, v2, :cond_0

    .line 64
    const/16 v2, 0x3030

    if-gt p0, v2, :cond_5

    .line 65
    sget-object v2, Lcom/ibm/icu/impl/PatternProps;->syntaxOrWhiteSpace2000:[I

    sget-object v3, Lcom/ibm/icu/impl/PatternProps;->index2000:[B

    add-int/lit16 v4, p0, -0x2000

    shr-int/lit8 v4, v4, 0x5

    aget-byte v3, v3, v4

    aget v2, v2, v3

    .line 66
    and-int/lit8 v3, p0, 0x1f

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 67
    :cond_5
    const v2, 0xfd3e

    if-gt v2, p0, :cond_0

    const v2, 0xfe46

    if-gt p0, v2, :cond_0

    .line 68
    const v2, 0xfd3f

    if-le p0, v2, :cond_6

    const v2, 0xfe45

    if-gt v2, p0, :cond_0

    :cond_6
    move v1, v0

    goto :goto_0
.end method

.method public static isWhiteSpace(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    if-gez p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    const/16 v2, 0xff

    if-gt p0, v2, :cond_3

    .line 81
    sget-object v2, Lcom/ibm/icu/impl/PatternProps;->latin1:[B

    aget-byte v2, v2, p0

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 82
    :cond_3
    const/16 v2, 0x200e

    if-gt v2, p0, :cond_0

    const/16 v2, 0x2029

    if-gt p0, v2, :cond_0

    .line 83
    const/16 v2, 0x200f

    if-le p0, v2, :cond_4

    const/16 v2, 0x2028

    if-gt v2, p0, :cond_0

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method public static skipIdentifier(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 165
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/PatternProps;->isSyntaxOrWhiteSpace(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return p1
.end method

.method public static skipWhiteSpace(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 94
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return p1
.end method

.method public static trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object p0

    .line 108
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 109
    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    :cond_2
    if-ge v1, v0, :cond_3

    .line 115
    :goto_2
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 119
    :cond_3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
