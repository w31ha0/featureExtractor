.class abstract Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;
.super Ljava/lang/Object;
.source "BasicBifManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/bif/IBifManager;


# static fields
.field private static final CHUNK_SIZE:I = 0x400

.field private static final HEADER_SIZE:I = 0x40

.field private static final INDEX_ENTRY_SIZE:I = 0x8

.field private static final MAX_INDEX_SIZE:I = 0x7080

.field private static final TAG:Ljava/lang/String; = "BasicBifManager"


# instance fields
.field private final mBifMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInterval:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mBifMap:Ljava/util/SortedMap;

    .line 36
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mInterval:I

    return-void
.end method


# virtual methods
.method public getIndexFrame(I)Ljava/nio/ByteBuffer;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->isBifLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 73
    :goto_0
    return-object v0

    .line 48
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mInterval:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mInterval:I

    div-int/2addr v0, v2

    .line 49
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mBifMap:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mBifMap:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    .line 52
    invoke-interface {v2}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v3}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 54
    invoke-interface {v3}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v0, v2

    .line 55
    new-array v0, v3, [B

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->getRandomAccessFile()Ljava/io/RandomAccessFile;

    move-result-object v4

    .line 58
    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 59
    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 65
    const/4 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string/jumbo v2, "BasicBifManager"

    const-string/jumbo v3, "Failed reading bif "

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    move-object v0, v1

    .line 73
    goto :goto_0
.end method

.method protected abstract getRandomAccessFile()Ljava/io/RandomAccessFile;
.end method

.method protected abstract isBifLoaded()Z
.end method

.method protected parseIndexFromInputStream(Ljava/io/InputStream;)Z
    .locals 13

    .prologue
    const/16 v3, 0x400

    const/16 v11, 0x40

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 77
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    const/16 v2, 0x40

    new-array v2, v2, [B

    .line 80
    const/4 v4, 0x0

    const/16 v6, 0x40

    invoke-virtual {v5, v2, v4, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    .line 81
    const-string/jumbo v6, "BasicBifManager"

    const-string/jumbo v7, "read %d bytes"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 82
    if-ge v4, v11, :cond_0

    .line 83
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 136
    :goto_0
    return v0

    .line 87
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 88
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 89
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 90
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    .line 91
    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    .line 92
    const/16 v7, 0x10

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mInterval:I

    .line 94
    const-string/jumbo v2, "BasicBifManager"

    const-string/jumbo v7, "version= %d, bifCount= %d, mInterval= %d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v9

    const/4 v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v4, 0x2

    iget v9, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mInterval:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v2, v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 96
    if-lez v6, :cond_5

    const/16 v2, 0x7080

    if-gt v6, v2, :cond_5

    .line 97
    add-int/lit8 v2, v6, 0x1

    mul-int/lit8 v6, v2, 0x8

    .line 98
    new-array v7, v6, [B

    .line 100
    const-string/jumbo v2, "BasicBifManager"

    const-string/jumbo v4, "try to read index %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v4, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v4, v0

    .line 101
    :goto_1
    if-ge v4, v6, :cond_3

    .line 103
    sub-int v2, v6, v4

    if-ge v2, v3, :cond_7

    .line 104
    sub-int v2, v6, v4

    .line 106
    :goto_2
    invoke-virtual {v5, v7, v4, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    .line 107
    if-eq v8, v2, :cond_1

    .line 108
    const-string/jumbo v9, "BasicBifManager"

    const-string/jumbo v10, "attempt to read %d, actual %d bytes"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v12

    const/4 v2, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-static {v9, v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 111
    :cond_1
    if-gtz v8, :cond_2

    .line 112
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    goto/16 :goto_0

    .line 133
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 115
    :cond_2
    add-int v2, v4, v8

    move v4, v2

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 118
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move v3, v0

    .line 119
    :goto_3
    if-ge v3, v4, :cond_6

    .line 120
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 121
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 122
    const/4 v8, -0x1

    if-ne v2, v8, :cond_4

    .line 123
    const v2, 0x7fffffff

    .line 125
    :cond_4
    iget-object v8, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mBifMap:Ljava/util/SortedMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v2, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    add-int/lit8 v2, v3, 0x8

    move v3, v2

    goto :goto_3

    .line 128
    :cond_5
    const-string/jumbo v1, "BasicBifManager"

    const-string/jumbo v2, "bif count may not be correct %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 129
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    goto/16 :goto_0

    .line 132
    :cond_6
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 136
    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto :goto_2
.end method
