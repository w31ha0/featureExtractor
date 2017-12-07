.class public final Lcom/a/a/a/g;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)I
    .locals 8

    const/16 v6, 0x10

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-byte v0, p0, v2

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_7

    add-int/lit8 v0, v2, 0x1

    move v1, v5

    :goto_0
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    int-to-char v0, v0

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/a/a/a/g;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    neg-int v0, v0

    move v7, v2

    move v2, v0

    move v0, v7

    :goto_1
    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    if-eqz v1, :cond_6

    move v0, v2

    :goto_2
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    aget-byte v3, p0, v5

    int-to-char v3, v3

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-gez v3, :cond_3

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "illegal number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const v4, -0x7ffffff

    if-ge v2, v4, :cond_4

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "illegal number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    mul-int/lit8 v2, v2, 0x10

    const v4, -0x7fffffff

    add-int/2addr v4, v3

    if-ge v2, v4, :cond_5

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "illegal number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sub-int/2addr v2, v3

    goto :goto_1

    :cond_6
    neg-int v0, v2

    goto :goto_2

    :cond_7
    move v0, v2

    move v1, v2

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 6

    const/16 v5, 0x400

    const/4 v4, 0x0

    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v1, v5, [B

    :goto_1
    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v4, v3, 0x1

    aget-char v5, v0, v3

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    move v3, v4

    goto :goto_0
.end method

.method private static b([B)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x0

    new-array v0, v5, [C

    move v2, v1

    :goto_0
    if-lt v1, v5, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_0
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    move v1, v3

    move v2, v4

    goto :goto_0
.end method
