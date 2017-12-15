.class final Lcom/flurry/android/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;

.field private c:J

.field private d:Z

.field private e:J

.field private f:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;JZ)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/flurry/android/i;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/flurry/android/i;->b:Ljava/util/Map;

    .line 24
    iput-wide p3, p0, Lcom/flurry/android/i;->c:J

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/i;->d:Z

    .line 26
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 7

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flurry/android/i;->f:[B

    if-nez v0, :cond_1

    .line 52
    const/4 v0, 0x0

    .line 55
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/i;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/flurry/android/i;->b:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 61
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 72
    :cond_0
    iget-wide v0, p0, Lcom/flurry/android/i;->c:J

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 73
    iget-wide v0, p0, Lcom/flurry/android/i;->e:J

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 75
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 77
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/i;->f:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    invoke-static {v3}, Lcom/flurry/android/d;->a(Ljava/io/Closeable;)V

    .line 90
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/flurry/android/i;->f:[B

    return-object v0

    .line 65
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/i;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 66
    iget-object v0, p0, Lcom/flurry/android/i;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v5, 0x80

    invoke-static {v1, v5}, Lcom/flurry/android/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/flurry/android/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_2
    const/4 v1, 0x0

    :try_start_3
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/flurry/android/i;->f:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 86
    invoke-static {v0}, Lcom/flurry/android/d;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    invoke-static {v1}, Lcom/flurry/android/d;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    .line 82
    :catch_1
    move-exception v1

    goto :goto_2
.end method
