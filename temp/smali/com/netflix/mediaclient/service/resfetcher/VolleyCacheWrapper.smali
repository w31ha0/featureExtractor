.class public Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;
.super Ljava/lang/Object;
.source "VolleyCacheWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VolleyCacheWrapper"


# instance fields
.field final mCache:Lcom/android/volley/toolbox/DiskBasedCache;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/DiskBasedCache;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;->mCache:Lcom/android/volley/toolbox/DiskBasedCache;

    .line 81
    return-void
.end method

.method private static readHeader(Ljava/io/InputStream;)V
    .locals 6

    .prologue
    .line 148
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 149
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readByte()B

    .line 150
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    .line 151
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    .line 152
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readLong()J

    .line 153
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readLong()J

    .line 154
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readLong()J

    .line 155
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 156
    if-nez v3, :cond_0

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 159
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 160
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0

    .line 164
    :cond_1
    return-void
.end method


# virtual methods
.method public getEntryMetaData(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;
    .locals 12

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;->mCache:Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-virtual {v0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 91
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const/4 v1, 0x0

    .line 94
    :try_start_0
    new-instance v8, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-direct {v8, v0, v2}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;-><init>(Ljava/io/InputStream;Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    invoke-static {v8}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;->readHeader(Ljava/io/InputStream;)V

    .line 96
    new-instance v1, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;->access$100(Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v8}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;->access$100(Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;)I

    move-result v0

    int-to-long v10, v0

    sub-long/2addr v6, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;-><init>(Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;Ljava/lang/String;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    if-eqz v8, :cond_0

    .line 102
    :try_start_2
    invoke-virtual {v8}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string/jumbo v2, "VolleyCacheWrapper"

    const-string/jumbo v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :catch_1
    move-exception v0

    .line 98
    :goto_1
    :try_start_3
    const-string/jumbo v2, "VolleyCacheWrapper"

    const-string/jumbo v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    if-eqz v1, :cond_1

    .line 102
    :try_start_4
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 109
    :cond_1
    :goto_2
    const/4 v1, 0x0

    goto :goto_0

    .line 103
    :catch_2
    move-exception v0

    .line 104
    const-string/jumbo v1, "VolleyCacheWrapper"

    const-string/jumbo v2, "%s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 100
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_2

    .line 102
    :try_start_5
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CountingInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 105
    :cond_2
    :goto_4
    throw v0

    .line 103
    :catch_3
    move-exception v1

    .line 104
    const-string/jumbo v2, "VolleyCacheWrapper"

    const-string/jumbo v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 100
    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_3

    .line 97
    :catch_4
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method
