.class public Lcom/netflix/android/org/json/zip/BitOutputStream;
.super Ljava/lang/Object;
.source "BitOutputStream.java"

# interfaces
.implements Lcom/netflix/android/org/json/zip/BitWriter;


# instance fields
.field private nrBits:J

.field private out:Ljava/io/OutputStream;

.field private unwritten:I

.field private vacant:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->nrBits:J

    .line 56
    const/16 v0, 0x8

    iput v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->vacant:I

    .line 66
    iput-object p1, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->out:Ljava/io/OutputStream;

    .line 67
    return-void
.end method


# virtual methods
.method public nrBits()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->nrBits:J

    return-wide v0
.end method

.method public one()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0, v0}, Lcom/netflix/android/org/json/zip/BitOutputStream;->write(II)V

    .line 85
    return-void
.end method

.method public pad(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-wide v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->nrBits:J

    int-to-long v2, p1

    rem-long/2addr v0, v2

    long-to-int v0, v0

    sub-int v0, p1, v0

    .line 99
    and-int/lit8 v1, v0, 0x7

    .line 100
    if-lez v1, :cond_0

    .line 101
    invoke-virtual {p0, v4, v1}, Lcom/netflix/android/org/json/zip/BitOutputStream;->write(II)V

    .line 102
    sub-int/2addr v0, v1

    .line 104
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 105
    const/16 v1, 0x8

    invoke-virtual {p0, v4, v1}, Lcom/netflix/android/org/json/zip/BitOutputStream;->write(II)V

    .line 106
    add-int/lit8 v0, v0, -0x8

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 109
    return-void
.end method

.method public write(II)V
    .locals 6

    .prologue
    .line 121
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 143
    :cond_0
    return-void

    .line 124
    :cond_1
    if-lez p2, :cond_2

    const/16 v0, 0x20

    if-le p2, v0, :cond_5

    .line 125
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Bad write width."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_3
    :goto_0
    if-lez v1, :cond_0

    .line 129
    iget v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->vacant:I

    if-le v1, v0, :cond_4

    .line 130
    iget v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->vacant:I

    .line 132
    :goto_1
    iget v2, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->unwritten:I

    sub-int v3, v1, v0

    ushr-int v3, p1, v3

    sget-object v4, Lcom/netflix/android/org/json/zip/BitInputStream;->mask:[I

    aget v4, v4, v0

    and-int/2addr v3, v4

    iget v4, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->vacant:I

    sub-int/2addr v4, v0

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->unwritten:I

    .line 134
    sub-int/2addr v1, v0

    .line 135
    iget-wide v2, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->nrBits:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->nrBits:J

    .line 136
    iget v2, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->vacant:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->vacant:I

    .line 137
    iget v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->vacant:I

    if-nez v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->out:Ljava/io/OutputStream;

    iget v2, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->unwritten:I

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->unwritten:I

    .line 140
    const/16 v0, 0x8

    iput v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->vacant:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v1, p2

    goto :goto_0
.end method

.method public zero()V
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/android/org/json/zip/BitOutputStream;->write(II)V

    .line 153
    return-void
.end method
