.class public Lcom/a/a/a/c;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"

# interfaces
.implements Lcom/a/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/c$a;,
        Lcom/a/a/a/c$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;

.field private b:J

.field private final c:Ljava/io/File;

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 84
    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcom/a/a/a/c;-><init>(Ljava/io/File;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/a/a/a/c;->a:Ljava/util/Map;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/a/a/a/c;->b:J

    .line 74
    iput-object p1, p0, Lcom/a/a/a/c;->c:Ljava/io/File;

    .line 75
    iput p2, p0, Lcom/a/a/a/c;->d:I

    .line 76
    return-void
.end method

.method static a(Ljava/io/InputStream;)I
    .locals 2

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 502
    invoke-static {p0}, Lcom/a/a/a/c;->e(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    .line 503
    invoke-static {p0}, Lcom/a/a/a/c;->e(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 504
    invoke-static {p0}, Lcom/a/a/a/c;->e(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 505
    invoke-static {p0}, Lcom/a/a/a/c;->e(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 506
    return v0
.end method

.method private a(I)V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 257
    iget-wide v0, p0, Lcom/a/a/a/c;->b:J

    int-to-long v4, p1

    add-long/2addr v0, v4

    iget v3, p0, Lcom/a/a/a/c;->d:I

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    sget-boolean v0, Lcom/a/a/t;->b:Z

    if-eqz v0, :cond_2

    .line 261
    const-string v0, "Pruning old cache entries."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/a/a/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :cond_2
    iget-wide v4, p0, Lcom/a/a/a/c;->b:J

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 268
    iget-object v0, p0, Lcom/a/a/a/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    .line 269
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 287
    :cond_3
    sget-boolean v1, Lcom/a/a/t;->b:Z

    if-eqz v1, :cond_0

    .line 288
    const-string v1, "pruned %d files, %d bytes, %d ms"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    iget-wide v8, p0, Lcom/a/a/a/c;->b:J

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v13

    .line 288
    invoke-static {v1, v3}, Lcom/a/a/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 270
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c$a;

    .line 272
    iget-object v8, v0, Lcom/a/a/a/c$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/a/a/a/c;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    .line 273
    if-eqz v8, :cond_5

    .line 274
    iget-wide v8, p0, Lcom/a/a/a/c;->b:J

    iget-wide v10, v0, Lcom/a/a/a/c$a;->a:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/a/a/a/c;->b:J

    .line 279
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 280
    add-int/lit8 v0, v1, 0x1

    .line 282
    iget-wide v8, p0, Lcom/a/a/a/c;->b:J

    int-to-long v10, p1

    add-long/2addr v8, v10

    long-to-float v1, v8

    iget v8, p0, Lcom/a/a/a/c;->d:I

    int-to-float v8, v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    cmpg-float v1, v1, v8

    if-ltz v1, :cond_3

    move v1, v0

    goto :goto_1

    .line 276
    :cond_5
    const-string v8, "Could not delete cache entry for key=%s, filename=%s"

    new-array v9, v13, [Ljava/lang/Object;

    .line 277
    iget-object v10, v0, Lcom/a/a/a/c$a;->b:Ljava/lang/String;

    aput-object v10, v9, v2

    iget-object v0, v0, Lcom/a/a/a/c$a;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/a/a/a/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v12

    .line 276
    invoke-static {v8, v9}, Lcom/a/a/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method static a(Ljava/io/OutputStream;I)V
    .locals 1

    .prologue
    .line 494
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 495
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 496
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 497
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 498
    return-void
.end method

.method static a(Ljava/io/OutputStream;J)V
    .locals 3

    .prologue
    .line 510
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 511
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 512
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 513
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 514
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 515
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 516
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 517
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 518
    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 534
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 535
    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/a/a/a/c;->a(Ljava/io/OutputStream;J)V

    .line 536
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 537
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/a/a/a/c$a;)V
    .locals 6

    .prologue
    .line 299
    iget-object v0, p0, Lcom/a/a/a/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-wide v0, p0, Lcom/a/a/a/c;->b:J

    iget-wide v2, p2, Lcom/a/a/a/c$a;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/a/a/a/c;->b:J

    .line 305
    :goto_0
    iget-object v0, p0, Lcom/a/a/a/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c$a;

    .line 303
    iget-wide v2, p0, Lcom/a/a/a/c;->b:J

    iget-wide v4, p2, Lcom/a/a/a/c$a;->a:J

    iget-wide v0, v0, Lcom/a/a/a/c$a;->a:J

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/a/a/a/c;->b:J

    goto :goto_0
.end method

.method static a(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 546
    if-eqz p0, :cond_1

    .line 547
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/a/a/a/c;->a(Ljava/io/OutputStream;I)V

    .line 548
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    :goto_1
    return-void

    .line 548
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 549
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/a/a/a/c;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 550
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/a/a/a/c;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/a/a/a/c;->a(Ljava/io/OutputStream;I)V

    goto :goto_1
.end method

.method private static a(Ljava/io/InputStream;I)[B
    .locals 4

    .prologue
    .line 323
    new-array v1, p1, [B

    .line 325
    const/4 v0, 0x0

    .line 326
    :goto_0
    if-ge v0, p1, :cond_0

    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 329
    :cond_0
    if-eq v0, p1, :cond_2

    .line 330
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_1
    add-int/2addr v0, v2

    goto :goto_0

    .line 332
    :cond_2
    return-object v1
.end method

.method static b(Ljava/io/InputStream;)J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 521
    const-wide/16 v0, 0x0

    .line 522
    invoke-static {p0}, Lcom/a/a/a/c;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 523
    invoke-static {p0}, Lcom/a/a/a/c;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 524
    invoke-static {p0}, Lcom/a/a/a/c;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 525
    invoke-static {p0}, Lcom/a/a/a/c;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 526
    invoke-static {p0}, Lcom/a/a/a/c;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 527
    invoke-static {p0}, Lcom/a/a/a/c;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 528
    invoke-static {p0}, Lcom/a/a/a/c;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 529
    invoke-static {p0}, Lcom/a/a/a/c;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 530
    return-wide v0
.end method

.method static c(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 540
    invoke-static {p0}, Lcom/a/a/a/c;->b(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 541
    invoke-static {p0, v0}, Lcom/a/a/a/c;->a(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 542
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 240
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    return-object v0
.end method

.method static d(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 5

    .prologue
    .line 558
    invoke-static {p0}, Lcom/a/a/a/c;->a(Ljava/io/InputStream;)I

    move-result v2

    .line 559
    if-nez v2, :cond_0

    .line 560
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 562
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_1

    .line 567
    return-object v0

    .line 561
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0

    .line 563
    :cond_1
    invoke-static {p0}, Lcom/a/a/a/c;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 564
    invoke-static {p0}, Lcom/a/a/a/c;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 565
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static e(Ljava/io/InputStream;)I
    .locals 2

    .prologue
    .line 486
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 487
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 488
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 490
    :cond_0
    return v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/a/a/a/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c$a;

    .line 313
    if-eqz v0, :cond_0

    .line 314
    iget-wide v2, p0, Lcom/a/a/a/c;->b:J

    iget-wide v0, v0, Lcom/a/a/a/c$a;->a:J

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/a/a/a/c;->b:J

    .line 315
    iget-object v0, p0, Lcom/a/a/a/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/a/a/b$a;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    if-nez v0, :cond_1

    move-object v0, v1

    .line 130
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 114
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/a/a/a/c;->c(Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 117
    :try_start_2
    new-instance v2, Lcom/a/a/a/c$b;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/a/a/a/c$b;-><init>(Ljava/io/InputStream;Lcom/a/a/a/c$b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :try_start_3
    invoke-static {v2}, Lcom/a/a/a/c$a;->a(Ljava/io/InputStream;)Lcom/a/a/a/c$a;

    .line 119
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v2}, Lcom/a/a/a/c$b;->a(Lcom/a/a/a/c$b;)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v2, v4}, Lcom/a/a/a/c;->a(Ljava/io/InputStream;I)[B

    move-result-object v4

    .line 120
    invoke-virtual {v0, v4}, Lcom/a/a/a/c$a;->a([B)Lcom/a/a/b$a;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    .line 126
    if-eqz v2, :cond_0

    .line 128
    :try_start_4
    invoke-virtual {v2}, Lcom/a/a/a/c$b;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 130
    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 122
    :goto_1
    :try_start_5
    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/a/a/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/a/a/a/c;->b(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 126
    if-eqz v2, :cond_2

    .line 128
    :try_start_6
    invoke-virtual {v2}, Lcom/a/a/a/c$b;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    move-object v0, v1

    .line 124
    goto :goto_0

    .line 129
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 130
    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 126
    :goto_2
    if-eqz v2, :cond_3

    .line 128
    :try_start_7
    invoke-virtual {v2}, Lcom/a/a/a/c$b;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 133
    :cond_3
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 108
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 129
    :catch_3
    move-exception v0

    move-object v0, v1

    .line 130
    goto :goto_0

    .line 125
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 121
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized a()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/a/a/a/c;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/a/a/a/c;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string v0, "Unable to create cache dir %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/a/a/a/c;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/a/a/t;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 172
    :cond_0
    monitor-exit p0

    return-void

    .line 149
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/a/a/a/c;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 150
    if-eqz v3, :cond_0

    .line 153
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    const/4 v1, 0x0

    .line 156
    :try_start_2
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    :try_start_3
    invoke-static {v0}, Lcom/a/a/a/c$a;->a(Ljava/io/InputStream;)Lcom/a/a/a/c$a;

    move-result-object v1

    .line 158
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/a/a/a/c$a;->a:J

    .line 159
    iget-object v6, v1, Lcom/a/a/a/c$a;->b:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Lcom/a/a/a/c$a;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 166
    if-eqz v0, :cond_2

    .line 167
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    :cond_2
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 161
    :goto_2
    if-eqz v5, :cond_3

    .line 162
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 166
    :cond_3
    if-eqz v0, :cond_2

    .line 167
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 169
    :catch_1
    move-exception v0

    goto :goto_1

    .line 164
    :catchall_0
    move-exception v0

    .line 166
    :goto_3
    if-eqz v1, :cond_4

    .line 167
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 170
    :cond_4
    :goto_4
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 142
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 169
    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_1

    .line 164
    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    .line 160
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/a/a/b$a;)V
    .locals 5

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v0, p2, Lcom/a/a/b$a;->a:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/a/a/a/c;->a(I)V

    .line 198
    invoke-virtual {p0, p1}, Lcom/a/a/a/c;->c(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 200
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 201
    new-instance v2, Lcom/a/a/a/c$a;

    invoke-direct {v2, p1, p2}, Lcom/a/a/a/c$a;-><init>(Ljava/lang/String;Lcom/a/a/b$a;)V

    .line 202
    invoke-virtual {v2, v1}, Lcom/a/a/a/c$a;->a(Ljava/io/OutputStream;)Z

    move-result v3

    .line 203
    if-nez v3, :cond_1

    .line 204
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 205
    const-string v1, "Failed to write header for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/a/a/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :catch_0
    move-exception v1

    .line 214
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 215
    if-nez v1, :cond_0

    .line 216
    const-string v1, "Could not clean up file %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/a/a/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 208
    :cond_1
    :try_start_3
    iget-object v3, p2, Lcom/a/a/b$a;->a:[B

    invoke-virtual {v1, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 209
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 210
    invoke-direct {p0, p1, v2}, Lcom/a/a/a/c;->a(Ljava/lang/String;Lcom/a/a/a/c$a;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/a/a/a/c;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 226
    invoke-direct {p0, p1}, Lcom/a/a/a/c;->e(Ljava/lang/String;)V

    .line 227
    if-nez v0, :cond_0

    .line 228
    const-string v0, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 229
    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/a/a/a/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 228
    invoke-static {v0, v1}, Lcom/a/a/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_0
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 249
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/a/c;->c:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/a/a/a/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
