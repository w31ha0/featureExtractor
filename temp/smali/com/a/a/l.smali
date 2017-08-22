.class public abstract Lcom/a/a/l;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/l$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/t$a;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private e:Lcom/a/a/n$a;

.field private f:Ljava/lang/Integer;

.field private g:Lcom/a/a/m;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J

.field private l:Lcom/a/a/p;

.field private m:Lcom/a/a/b$a;

.field private n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/a/a/n$a;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-boolean v0, Lcom/a/a/t$a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/a/a/t$a;

    invoke-direct {v0}, Lcom/a/a/t$a;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/a/a/l;->a:Lcom/a/a/t$a;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/l;->h:Z

    .line 88
    iput-boolean v2, p0, Lcom/a/a/l;->i:Z

    .line 91
    iput-boolean v2, p0, Lcom/a/a/l;->j:Z

    .line 94
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/a/a/l;->k:J

    .line 107
    iput-object v1, p0, Lcom/a/a/l;->m:Lcom/a/a/b$a;

    .line 132
    iput p1, p0, Lcom/a/a/l;->b:I

    .line 133
    iput-object p2, p0, Lcom/a/a/l;->c:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/a/a/l;->e:Lcom/a/a/n$a;

    .line 135
    new-instance v0, Lcom/a/a/d;

    invoke-direct {v0}, Lcom/a/a/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/a/a/l;->setRetryPolicy(Lcom/a/a/p;)Lcom/a/a/l;

    .line 137
    invoke-static {p2}, Lcom/a/a/l;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/a/a/l;->d:I

    .line 138
    return-void

    :cond_0
    move-object v0, v1

    .line 61
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/a/a/n$a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/l;-><init>(ILjava/lang/String;Lcom/a/a/n$a;)V

    .line 123
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 184
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/l;)Lcom/a/a/t$a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/a/a/l;->a:Lcom/a/a/t$a;

    return-object v0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 461
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 462
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const/16 v0, 0x26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encoding not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 210
    sget-boolean v0, Lcom/a/a/t$a;->a:Z

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/a/a/l;->a:Lcom/a/a/t$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/a/a/t$a;->a(Ljava/lang/String;J)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-wide v0, p0, Lcom/a/a/l;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/l;->k:J

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/l;->i:Z

    .line 321
    return-void
.end method

.method public compareTo(Lcom/a/a/l;)I
    .locals 2

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/a/a/l;->getPriority()Lcom/a/a/l$a;

    move-result-object v0

    .line 589
    invoke-virtual {p1}, Lcom/a/a/l;->getPriority()Lcom/a/a/l$a;

    move-result-object v1

    .line 593
    if-ne v0, v1, :cond_0

    .line 594
    iget-object v0, p0, Lcom/a/a/l;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/a/a/l;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    .line 593
    :goto_0
    return v0

    .line 595
    :cond_0
    invoke-virtual {v1}, Lcom/a/a/l$a;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/a/a/l$a;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/a/a/l;

    invoke-virtual {p0, p1}, Lcom/a/a/l;->compareTo(Lcom/a/a/l;)I

    move-result v0

    return v0
.end method

.method public deliverError(Lcom/a/a/s;)V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/a/a/l;->e:Lcom/a/a/n$a;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/a/a/l;->e:Lcom/a/a/n$a;

    invoke-interface {v0, p1}, Lcom/a/a/n$a;->onErrorResponse(Lcom/a/a/s;)V

    .line 580
    :cond_0
    return-void
.end method

.method protected abstract deliverResponse(Ljava/lang/Object;)V
.end method

.method public finish(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 223
    iget-object v0, p0, Lcom/a/a/l;->g:Lcom/a/a/m;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/a/a/l;->g:Lcom/a/a/m;

    invoke-virtual {v0, p0}, Lcom/a/a/m;->b(Lcom/a/a/l;)V

    .line 226
    :cond_0
    sget-boolean v0, Lcom/a/a/t$a;->a:Z

    if-eqz v0, :cond_3

    .line 227
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 228
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 231
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 232
    new-instance v3, Lcom/a/a/l$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/a/a/l$1;-><init>(Lcom/a/a/l;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v2, p0, Lcom/a/a/l;->a:Lcom/a/a/t$a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/a/a/t$a;->a(Ljava/lang/String;J)V

    .line 243
    iget-object v0, p0, Lcom/a/a/l;->a:Lcom/a/a/t$a;

    invoke-virtual {p0}, Lcom/a/a/l;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/t$a;->a(Ljava/lang/String;)V

    .line 250
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/l;->e:Lcom/a/a/n$a;

    goto :goto_0

    .line 245
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/a/a/l;->k:J

    sub-long/2addr v0, v2

    .line 246
    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 247
    const-string v2, "%d ms: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/a/a/l;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/a/a/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getBody()[B
    .locals 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/a/a/l;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/a/a/l;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/a/a/l;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 452
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/l;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheEntry()Lcom/a/a/b$a;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/a/a/l;->m:Lcom/a/a/b$a;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/a/a/l;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorListener()Lcom/a/a/n$a;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/a/a/l;->e:Lcom/a/a/n$a;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1

    .prologue
    .line 337
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/a/a/l;->b:I

    return v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParamsEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getPostBody()[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/a/a/l;->getPostParams()Ljava/util/Map;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/a/a/l;->getPostParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/a/a/l;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 400
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/a/a/l;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParams()Ljava/util/Map;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/a/a/l;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParamsEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/a/a/l;->getParamsEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/a/a/l$a;
    .locals 1

    .prologue
    .line 505
    sget-object v0, Lcom/a/a/l$a;->b:Lcom/a/a/l$a;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/a/a/p;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/a/a/l;->l:Lcom/a/a/p;

    return-object v0
.end method

.method public final getSequence()I
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/a/a/l;->f:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/a/a/l;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/a/a/l;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/a/a/l;->l:Lcom/a/a/p;

    invoke-interface {v0}, Lcom/a/a/p;->a()I

    move-result v0

    return v0
.end method

.method public getTrafficStatsTag()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/a/a/l;->d:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/a/a/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hasHadResponseDelivered()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/a/a/l;->j:Z

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/a/a/l;->i:Z

    return v0
.end method

.method public markDelivered()V
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/l;->j:Z

    .line 530
    return-void
.end method

.method protected parseNetworkError(Lcom/a/a/s;)Lcom/a/a/s;
    .locals 0

    .prologue
    .line 558
    return-object p1
.end method

.method protected abstract parseNetworkResponse(Lcom/a/a/i;)Lcom/a/a/n;
.end method

.method public setCacheEntry(Lcom/a/a/b$a;)Lcom/a/a/l;
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/a/a/l;->m:Lcom/a/a/b$a;

    .line 306
    return-object p0
.end method

.method public setRequestQueue(Lcom/a/a/m;)Lcom/a/a/l;
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/a/a/l;->g:Lcom/a/a/m;

    .line 261
    return-object p0
.end method

.method public setRetryPolicy(Lcom/a/a/p;)Lcom/a/a/l;
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/a/a/l;->l:Lcom/a/a/p;

    .line 203
    return-object p0
.end method

.method public final setSequence(I)Lcom/a/a/l;
    .locals 1

    .prologue
    .line 270
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/l;->f:Ljava/lang/Integer;

    .line 271
    return-object p0
.end method

.method public final setShouldCache(Z)Lcom/a/a/l;
    .locals 0

    .prologue
    .line 479
    iput-boolean p1, p0, Lcom/a/a/l;->h:Z

    .line 480
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/a/a/l;
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/a/a/l;->n:Ljava/lang/Object;

    .line 155
    return-object p0
.end method

.method public final shouldCache()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/a/a/l;->h:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/l;->getTrafficStatsTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/a/a/l;->i:Z

    if-eqz v0, :cond_0

    const-string v0, "[X] "

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/l;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 602
    invoke-virtual {p0}, Lcom/a/a/l;->getPriority()Lcom/a/a/l$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/l;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 601
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "[ ] "

    goto :goto_0
.end method
