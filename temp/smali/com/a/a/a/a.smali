.class public final Lcom/a/a/a/a;
.super Ljava/io/FilterInputStream;


# instance fields
.field private a:[C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/a;->a:[C

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 11

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/a/a/a/a;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/a/a/a/a;->a:[C

    if-nez v1, :cond_0

    const/16 v1, 0x80

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/a/a/a/a;->a:[C

    :cond_0
    array-length v2, v1

    move-object v3, v1

    move v1, v6

    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ne v4, v7, :cond_2

    :cond_1
    :goto_1
    if-ne v4, v7, :cond_6

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_2
    if-eq v4, v8, :cond_1

    if-ne v4, v9, :cond_4

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v9, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    :cond_3
    if-eq v2, v8, :cond_1

    instance-of v5, v0, Ljava/io/PushbackInputStream;

    if-nez v5, :cond_7

    new-instance v5, Ljava/io/PushbackInputStream;

    invoke-direct {v5, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lcom/a/a/a/a;->in:Ljava/io/InputStream;

    move-object p0, v5

    :goto_3
    check-cast p0, Ljava/io/PushbackInputStream;

    invoke-virtual {p0, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_5

    add-int/lit16 v2, v1, 0x80

    new-array v2, v2, [C

    array-length v3, v2

    sub-int/2addr v3, v1

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/a/a/a/a;->a:[C

    invoke-static {v5, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/a/a/a/a;->a:[C

    move v10, v3

    move-object v3, v2

    move v2, v10

    :cond_5
    add-int/lit8 v5, v1, 0x1

    int-to-char v4, v4

    aput-char v4, v3, v1

    move v1, v5

    goto :goto_0

    :cond_6
    invoke-static {v3, v6, v1}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object p0, v0

    goto :goto_3
.end method
