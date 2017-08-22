.class public Lcom/a/a/a/a;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/a/a/f;


# static fields
.field protected static final a:Z

.field private static d:I

.field private static e:I


# instance fields
.field protected final b:Lcom/a/a/a/f;

.field protected final c:Lcom/a/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/a/a/t;->b:Z

    sput-boolean v0, Lcom/a/a/a/a;->a:Z

    .line 59
    const/16 v0, 0xbb8

    sput v0, Lcom/a/a/a/a;->d:I

    .line 61
    const/16 v0, 0x1000

    sput v0, Lcom/a/a/a/a;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/a/a/a/f;)V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/a/a/a/b;

    sget v1, Lcom/a/a/a/a;->e:I

    invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/a/a/a/a;-><init>(Lcom/a/a/a/f;Lcom/a/a/a/b;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/a/a/a/f;Lcom/a/a/a/b;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/a/a/a/a;->b:Lcom/a/a/a/f;

    .line 82
    iput-object p2, p0, Lcom/a/a/a/a;->c:Lcom/a/a/a/b;

    .line 83
    return-void
.end method

.method protected static a([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4

    .prologue
    .line 260
    new-instance v1, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 261
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 264
    return-object v1

    .line 262
    :cond_0
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(JLcom/a/a/l;[BLorg/apache/http/StatusLine;)V
    .locals 5

    .prologue
    .line 177
    sget-boolean v0, Lcom/a/a/a/a;->a:Z

    if-nez v0, :cond_0

    sget v0, Lcom/a/a/a/a;->d:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 178
    :cond_0
    const-string v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 179
    aput-object p3, v2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    .line 180
    if-eqz p4, :cond_2

    array-length v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x3

    .line 181
    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Lcom/a/a/l;->getRetryPolicy()Lcom/a/a/p;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/a/p;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 178
    invoke-static {v1, v2}, Lcom/a/a/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_1
    return-void

    .line 180
    :cond_2
    const-string v0, "null"

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/a/a/l;Lcom/a/a/s;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    invoke-virtual {p1}, Lcom/a/a/l;->getRetryPolicy()Lcom/a/a/p;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lcom/a/a/l;->getTimeoutMs()I

    move-result v1

    .line 196
    :try_start_0
    invoke-interface {v0, p2}, Lcom/a/a/p;->a(Lcom/a/a/s;)V
    :try_end_0
    .catch Lcom/a/a/s; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    const-string v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/l;->addMarker(Ljava/lang/String;)V

    .line 203
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 199
    const-string v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {p1, v1}, Lcom/a/a/l;->addMarker(Ljava/lang/String;)V

    .line 200
    throw v0
.end method

.method private a(Ljava/util/Map;Lcom/a/a/b$a;)V
    .locals 4

    .prologue
    .line 207
    if-nez p2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p2, Lcom/a/a/b$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 212
    const-string v0, "If-None-Match"

    iget-object v1, p2, Lcom/a/a/b$a;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_2
    iget-wide v0, p2, Lcom/a/a/b$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p2, Lcom/a/a/b$a;->d:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 217
    const-string v1, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lorg/apache/http/HttpEntity;)[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 229
    new-instance v2, Lcom/a/a/a/j;

    iget-object v0, p0, Lcom/a/a/a/a;->c:Lcom/a/a/a/b;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-direct {v2, v0, v1}, Lcom/a/a/a/j;-><init>(Lcom/a/a/a/b;I)V

    .line 230
    const/4 v1, 0x0

    .line 232
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 233
    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/a/a/q;

    invoke-direct {v0}, Lcom/a/a/q;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :catchall_0
    move-exception v0

    .line 245
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    :goto_0
    iget-object v3, p0, Lcom/a/a/a/a;->c:Lcom/a/a/a/b;

    invoke-virtual {v3, v1}, Lcom/a/a/a/b;->a([B)V

    .line 252
    invoke-virtual {v2}, Lcom/a/a/a/j;->close()V

    .line 253
    throw v0

    .line 236
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/a/a/a/a;->c:Lcom/a/a/a/b;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/a/a/a/b;->a(I)[B

    move-result-object v1

    .line 238
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 241
    invoke-virtual {v2}, Lcom/a/a/a/j;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 245
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 251
    :goto_2
    iget-object v3, p0, Lcom/a/a/a/a;->c:Lcom/a/a/a/b;

    invoke-virtual {v3, v1}, Lcom/a/a/a/b;->a([B)V

    .line 252
    invoke-virtual {v2}, Lcom/a/a/a/j;->close()V

    .line 241
    return-object v0

    .line 239
    :cond_1
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v2, v1, v4, v3}, Lcom/a/a/a/j;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 246
    :catch_0
    move-exception v3

    .line 249
    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/a/a/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 246
    :catch_1
    move-exception v3

    .line 249
    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/a/a/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/a/a/l;)Lcom/a/a/i;
    .locals 18

    .prologue
    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 89
    :goto_0
    const/4 v3, 0x0

    .line 90
    const/4 v14, 0x0

    .line 91
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 94
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/a/a/l;->getCacheEntry()Lcom/a/a/b$a;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/a/a/a/a;->a(Ljava/util/Map;Lcom/a/a/b$a;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/a/a;->b:Lcom/a/a/a/f;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v2}, Lcom/a/a/a/f;->a(Lcom/a/a/l;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v15

    .line 97
    :try_start_1
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 98
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 100
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/a/a;->a([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v6

    .line 102
    const/16 v2, 0x130

    if-ne v4, v2, :cond_1

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/a/a/l;->getCacheEntry()Lcom/a/a/b$a;

    move-result-object v2

    .line 105
    if-nez v2, :cond_0

    .line 106
    new-instance v3, Lcom/a/a/i;

    const/16 v4, 0x130

    const/4 v5, 0x0

    .line 107
    const/4 v7, 0x1

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    .line 106
    invoke-direct/range {v3 .. v9}, Lcom/a/a/i;-><init>(I[BLjava/util/Map;ZJ)V

    .line 137
    :goto_1
    return-object v3

    .line 115
    :cond_0
    iget-object v3, v2, Lcom/a/a/b$a;->g:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 116
    new-instance v7, Lcom/a/a/i;

    const/16 v8, 0x130

    iget-object v9, v2, Lcom/a/a/b$a;->a:[B

    .line 117
    iget-object v10, v2, Lcom/a/a/b$a;->g:Ljava/util/Map;

    const/4 v11, 0x1

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v12, v2, v16

    .line 116
    invoke-direct/range {v7 .. v13}, Lcom/a/a/i;-><init>(I[BLjava/util/Map;ZJ)V

    move-object v3, v7

    goto :goto_1

    .line 122
    :cond_1
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 123
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/a/a/a/a;->a(Lorg/apache/http/HttpEntity;)[B
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v11

    .line 131
    :goto_2
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v8, v2, v16

    move-object/from16 v7, p0

    move-object/from16 v10, p1

    .line 132
    invoke-direct/range {v7 .. v12}, Lcom/a/a/a/a;->a(JLcom/a/a/l;[BLorg/apache/http/StatusLine;)V

    .line 134
    const/16 v2, 0xc8

    if-lt v4, v2, :cond_2

    const/16 v2, 0x12b

    if-le v4, v2, :cond_4

    .line 135
    :cond_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 139
    :catch_0
    move-exception v2

    .line 140
    const-string v2, "socket"

    new-instance v3, Lcom/a/a/r;

    invoke-direct {v3}, Lcom/a/a/r;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/a/a/a/a;->a(Ljava/lang/String;Lcom/a/a/l;Lcom/a/a/s;)V

    goto/16 :goto_0

    .line 127
    :cond_3
    const/4 v2, 0x0

    :try_start_3
    new-array v11, v2, [B
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    .line 137
    :cond_4
    :try_start_4
    new-instance v3, Lcom/a/a/i;

    const/4 v7, 0x0

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    move-object v5, v11

    .line 137
    invoke-direct/range {v3 .. v9}, Lcom/a/a/i;-><init>(I[BLjava/util/Map;ZJ)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_1

    .line 141
    :catch_1
    move-exception v2

    .line 142
    const-string v2, "connection"

    new-instance v3, Lcom/a/a/r;

    invoke-direct {v3}, Lcom/a/a/r;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/a/a/a/a;->a(Ljava/lang/String;Lcom/a/a/l;Lcom/a/a/s;)V

    goto/16 :goto_0

    .line 143
    :catch_2
    move-exception v2

    .line 144
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad URL "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/l;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 145
    :catch_3
    move-exception v2

    move-object v5, v14

    .line 147
    :goto_3
    const/4 v7, 0x0

    .line 148
    if-eqz v3, :cond_6

    .line 149
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 153
    const-string v2, "Unexpected response code %d for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/a/a/l;->getUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    invoke-static {v2, v3}, Lcom/a/a/t;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    if-eqz v5, :cond_8

    .line 155
    new-instance v3, Lcom/a/a/i;

    .line 156
    const/4 v7, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    .line 155
    invoke-direct/range {v3 .. v9}, Lcom/a/a/i;-><init>(I[BLjava/util/Map;ZJ)V

    .line 157
    const/16 v2, 0x191

    if-eq v4, v2, :cond_5

    .line 158
    const/16 v2, 0x193

    if-ne v4, v2, :cond_7

    .line 159
    :cond_5
    const-string v2, "auth"

    .line 160
    new-instance v4, Lcom/a/a/a;

    invoke-direct {v4, v3}, Lcom/a/a/a;-><init>(Lcom/a/a/i;)V

    .line 159
    move-object/from16 v0, p1

    invoke-static {v2, v0, v4}, Lcom/a/a/a/a;->a(Ljava/lang/String;Lcom/a/a/l;Lcom/a/a/s;)V

    goto/16 :goto_0

    .line 151
    :cond_6
    new-instance v3, Lcom/a/a/j;

    invoke-direct {v3, v2}, Lcom/a/a/j;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 163
    :cond_7
    new-instance v2, Lcom/a/a/q;

    invoke-direct {v2, v3}, Lcom/a/a/q;-><init>(Lcom/a/a/i;)V

    throw v2

    .line 166
    :cond_8
    new-instance v2, Lcom/a/a/h;

    invoke-direct {v2, v7}, Lcom/a/a/h;-><init>(Lcom/a/a/i;)V

    throw v2

    .line 145
    :catch_4
    move-exception v2

    move-object v5, v14

    move-object v3, v15

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v5, v11

    move-object v3, v15

    goto :goto_3
.end method
