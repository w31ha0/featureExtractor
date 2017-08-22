.class Lcom/a/a/a/c$a;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/a/a/b$a;)V
    .locals 2

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lcom/a/a/a/c$a;->b:Ljava/lang/String;

    .line 374
    iget-object v0, p2, Lcom/a/a/b$a;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/a/a/a/c$a;->a:J

    .line 375
    iget-object v0, p2, Lcom/a/a/b$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/a/c$a;->c:Ljava/lang/String;

    .line 376
    iget-wide v0, p2, Lcom/a/a/b$a;->c:J

    iput-wide v0, p0, Lcom/a/a/a/c$a;->d:J

    .line 377
    iget-wide v0, p2, Lcom/a/a/b$a;->d:J

    iput-wide v0, p0, Lcom/a/a/a/c$a;->e:J

    .line 378
    iget-wide v0, p2, Lcom/a/a/b$a;->e:J

    iput-wide v0, p0, Lcom/a/a/a/c$a;->f:J

    .line 379
    iget-wide v0, p2, Lcom/a/a/b$a;->f:J

    iput-wide v0, p0, Lcom/a/a/a/c$a;->g:J

    .line 380
    iget-object v0, p2, Lcom/a/a/b$a;->g:Ljava/util/Map;

    iput-object v0, p0, Lcom/a/a/a/c$a;->h:Ljava/util/Map;

    .line 381
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/a/a/a/c$a;
    .locals 4

    .prologue
    .line 389
    new-instance v0, Lcom/a/a/a/c$a;

    invoke-direct {v0}, Lcom/a/a/a/c$a;-><init>()V

    .line 390
    invoke-static {p0}, Lcom/a/a/a/c;->a(Ljava/io/InputStream;)I

    move-result v1

    .line 391
    const v2, 0x20150306

    if-eq v1, v2, :cond_0

    .line 393
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 395
    :cond_0
    invoke-static {p0}, Lcom/a/a/a/c;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/a/c$a;->b:Ljava/lang/String;

    .line 396
    invoke-static {p0}, Lcom/a/a/a/c;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/a/c$a;->c:Ljava/lang/String;

    .line 397
    iget-object v1, v0, Lcom/a/a/a/c$a;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/a/a/a/c$a;->c:Ljava/lang/String;

    .line 400
    :cond_1
    invoke-static {p0}, Lcom/a/a/a/c;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/a/a/a/c$a;->d:J

    .line 401
    invoke-static {p0}, Lcom/a/a/a/c;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/a/a/a/c$a;->e:J

    .line 402
    invoke-static {p0}, Lcom/a/a/a/c;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/a/a/a/c$a;->f:J

    .line 403
    invoke-static {p0}, Lcom/a/a/a/c;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/a/a/a/c$a;->g:J

    .line 404
    invoke-static {p0}, Lcom/a/a/a/c;->d(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/a/c$a;->h:Ljava/util/Map;

    .line 406
    return-object v0
.end method


# virtual methods
.method public a([B)Lcom/a/a/b$a;
    .locals 4

    .prologue
    .line 413
    new-instance v0, Lcom/a/a/b$a;

    invoke-direct {v0}, Lcom/a/a/b$a;-><init>()V

    .line 414
    iput-object p1, v0, Lcom/a/a/b$a;->a:[B

    .line 415
    iget-object v1, p0, Lcom/a/a/a/c$a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/a/a/b$a;->b:Ljava/lang/String;

    .line 416
    iget-wide v2, p0, Lcom/a/a/a/c$a;->d:J

    iput-wide v2, v0, Lcom/a/a/b$a;->c:J

    .line 417
    iget-wide v2, p0, Lcom/a/a/a/c$a;->e:J

    iput-wide v2, v0, Lcom/a/a/b$a;->d:J

    .line 418
    iget-wide v2, p0, Lcom/a/a/a/c$a;->f:J

    iput-wide v2, v0, Lcom/a/a/b$a;->e:J

    .line 419
    iget-wide v2, p0, Lcom/a/a/a/c$a;->g:J

    iput-wide v2, v0, Lcom/a/a/b$a;->f:J

    .line 420
    iget-object v1, p0, Lcom/a/a/a/c$a;->h:Ljava/util/Map;

    iput-object v1, v0, Lcom/a/a/b$a;->g:Ljava/util/Map;

    .line 421
    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 430
    const v2, 0x20150306

    :try_start_0
    invoke-static {p1, v2}, Lcom/a/a/a/c;->a(Ljava/io/OutputStream;I)V

    .line 431
    iget-object v2, p0, Lcom/a/a/a/c$a;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/a/a/a/c;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/a/a/a/c$a;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-static {p1, v2}, Lcom/a/a/a/c;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 433
    iget-wide v2, p0, Lcom/a/a/a/c$a;->d:J

    invoke-static {p1, v2, v3}, Lcom/a/a/a/c;->a(Ljava/io/OutputStream;J)V

    .line 434
    iget-wide v2, p0, Lcom/a/a/a/c$a;->e:J

    invoke-static {p1, v2, v3}, Lcom/a/a/a/c;->a(Ljava/io/OutputStream;J)V

    .line 435
    iget-wide v2, p0, Lcom/a/a/a/c$a;->f:J

    invoke-static {p1, v2, v3}, Lcom/a/a/a/c;->a(Ljava/io/OutputStream;J)V

    .line 436
    iget-wide v2, p0, Lcom/a/a/a/c$a;->g:J

    invoke-static {p1, v2, v3}, Lcom/a/a/a/c;->a(Ljava/io/OutputStream;J)V

    .line 437
    iget-object v2, p0, Lcom/a/a/a/c$a;->h:Ljava/util/Map;

    invoke-static {v2, p1}, Lcom/a/a/a/c;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 438
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 442
    :goto_1
    return v0

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/a/a/a/c$a;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v2

    .line 441
    const-string v3, "%s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/a/a/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 442
    goto :goto_1
.end method
