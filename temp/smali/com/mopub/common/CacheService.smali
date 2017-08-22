.class public Lcom/mopub/common/CacheService;
.super Ljava/lang/Object;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/CacheService$DiskLruCachePutTask;,
        Lcom/mopub/common/CacheService$DiskLruCacheGetTask;,
        Lcom/mopub/common/CacheService$DiskLruCacheGetListener;
    }
.end annotation


# static fields
.field private static final APP_VERSION:I = 0x1

.field private static final DISK_CACHE_INDEX:I = 0x0

.field static final UNIQUE_CACHE_NAME:Ljava/lang/String; = "mopub-cache"

.field private static final VALUE_COUNT:I = 0x1

.field private static sDiskLruCache:Lcom/mopub/common/DiskLruCache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAndNullCaches()V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 246
    sget-object v1, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    if-eqz v1, :cond_0

    .line 248
    :try_start_0
    sget-object v1, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    invoke-virtual {v1}, Lcom/mopub/common/DiskLruCache;->delete()V

    .line 249
    const/4 v1, 0x0

    sput-object v1, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .local v0, "ignore":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void

    .line 250
    .end local v0    # "ignore":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 251
    .restart local v0    # "ignore":Ljava/io/IOException;
    sput-object v2, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    goto :goto_0
.end method

.method public static containsKeyDiskCache(Ljava/lang/String;)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 83
    sget-object v3, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    if-nez v3, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v2

    .line 88
    :cond_1
    :try_start_0
    sget-object v3, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    invoke-static {p0}, Lcom/mopub/common/CacheService;->createValidDiskCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mopub/common/DiskLruCache;->get(Ljava/lang/String;)Lcom/mopub/common/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 89
    .local v1, "snapshot":Lcom/mopub/common/DiskLruCache$Snapshot;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "snapshot":Lcom/mopub/common/DiskLruCache$Snapshot;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static createValidDiskCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/mopub/common/util/Utils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDiskCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 74
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 75
    const/4 v2, 0x0

    .line 79
    :goto_0
    return-object v2

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "cachePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mopub-cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDiskLruCache()Lcom/mopub/common/DiskLruCache;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 260
    sget-object v0, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    return-object v0
.end method

.method public static getFilePathDiskCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v0, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    invoke-virtual {v1}, Lcom/mopub/common/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    invoke-static {p0}, Lcom/mopub/common/CacheService;->createValidDiskCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFromDiskCache(Ljava/lang/String;)[B
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 111
    sget-object v6, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    if-nez v6, :cond_1

    move-object v1, v5

    .line 141
    :cond_0
    :goto_0
    return-object v1

    .line 115
    :cond_1
    const/4 v1, 0x0

    .line 116
    .local v1, "bytes":[B
    const/4 v4, 0x0

    .line 118
    .local v4, "snapshot":Lcom/mopub/common/DiskLruCache$Snapshot;
    :try_start_0
    sget-object v6, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    invoke-static {p0}, Lcom/mopub/common/CacheService;->createValidDiskCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mopub/common/DiskLruCache;->get(Ljava/lang/String;)Lcom/mopub/common/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 119
    if-nez v4, :cond_3

    .line 136
    if-eqz v4, :cond_2

    .line 137
    invoke-virtual {v4}, Lcom/mopub/common/DiskLruCache$Snapshot;->close()V

    :cond_2
    move-object v1, v5

    .line 120
    goto :goto_0

    .line 123
    :cond_3
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v5}, Lcom/mopub/common/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v3

    .line 124
    .local v3, "in":Ljava/io/InputStream;
    if-eqz v3, :cond_4

    .line 125
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/mopub/common/DiskLruCache$Snapshot;->getLength(I)J

    move-result-wide v6

    long-to-int v5, v6

    new-array v1, v5, [B

    .line 126
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    .local v0, "buffIn":Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-static {v0, v1}, Lcom/mopub/common/util/Streams;->readStream(Ljava/io/InputStream;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :try_start_3
    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    .end local v0    # "buffIn":Ljava/io/BufferedInputStream;
    :cond_4
    if-eqz v4, :cond_0

    .line 137
    invoke-virtual {v4}, Lcom/mopub/common/DiskLruCache$Snapshot;->close()V

    goto :goto_0

    .line 130
    .restart local v0    # "buffIn":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    .end local v0    # "buffIn":Ljava/io/BufferedInputStream;
    .end local v3    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v5, "Unable to get from DiskLruCache"

    invoke-static {v5, v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 136
    if-eqz v4, :cond_0

    .line 137
    invoke-virtual {v4}, Lcom/mopub/common/DiskLruCache$Snapshot;->close()V

    goto :goto_0

    .line 136
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    if-eqz v4, :cond_5

    .line 137
    invoke-virtual {v4}, Lcom/mopub/common/DiskLruCache$Snapshot;->close()V

    :cond_5
    throw v5
.end method

.method public static getFromDiskCacheAsync(Ljava/lang/String;Lcom/mopub/common/CacheService$DiskLruCacheGetListener;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "diskLruCacheGetListener"    # Lcom/mopub/common/CacheService$DiskLruCacheGetListener;

    .prologue
    .line 145
    new-instance v0, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;

    invoke-direct {v0, p0, p1}, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;-><init>(Ljava/lang/String;Lcom/mopub/common/CacheService$DiskLruCacheGetListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 146
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/mopub/common/CacheService;->initializeDiskCache(Landroid/content/Context;)Z

    .line 65
    return-void
.end method

.method public static initializeDiskCache(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    if-nez p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v4

    .line 41
    :cond_1
    sget-object v6, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    if-nez v6, :cond_2

    .line 42
    invoke-static {p0}, Lcom/mopub/common/CacheService;->getDiskCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 43
    .local v0, "cacheDirectory":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 47
    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->diskCacheSizeBytes(Ljava/io/File;)J

    move-result-wide v2

    .line 49
    .local v2, "diskCacheSizeBytes":J
    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_0
    invoke-static {v0, v6, v7, v2, v3}, Lcom/mopub/common/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/mopub/common/DiskLruCache;

    move-result-object v6

    sput-object v6, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cacheDirectory":Ljava/io/File;
    .end local v2    # "diskCacheSizeBytes":J
    :cond_2
    move v4, v5

    .line 60
    goto :goto_0

    .line 55
    .restart local v0    # "cacheDirectory":Ljava/io/File;
    .restart local v2    # "diskCacheSizeBytes":J
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "Unable to create DiskLruCache"

    invoke-static {v5, v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static putToDiskCache(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .line 153
    sget-object v4, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    if-nez v4, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v3

    .line 157
    :cond_1
    const/4 v1, 0x0

    .line 159
    .local v1, "editor":Lcom/mopub/common/DiskLruCache$Editor;
    :try_start_0
    sget-object v4, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    invoke-static {p0}, Lcom/mopub/common/CacheService;->createValidDiskCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mopub/common/DiskLruCache;->edit(Ljava/lang/String;)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_0

    .line 166
    new-instance v2, Ljava/io/BufferedOutputStream;

    const/4 v4, 0x0

    .line 167
    invoke-virtual {v1, v4}, Lcom/mopub/common/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 168
    .local v2, "outputStream":Ljava/io/OutputStream;
    invoke-static {p1, v2}, Lcom/mopub/common/util/Streams;->copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 169
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 170
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 172
    sget-object v4, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    invoke-virtual {v4}, Lcom/mopub/common/DiskLruCache;->flush()V

    .line 173
    invoke-virtual {v1}, Lcom/mopub/common/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const/4 v3, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Unable to put to DiskLruCache"

    invoke-static {v4, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    if-eqz v1, :cond_0

    .line 178
    :try_start_1
    invoke-virtual {v1}, Lcom/mopub/common/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 180
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static putToDiskCache(Ljava/lang/String;[B)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "content"    # [B

    .prologue
    .line 149
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, v0}, Lcom/mopub/common/CacheService;->putToDiskCache(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public static putToDiskCacheAsync(Ljava/lang/String;[B)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "content"    # [B

    .prologue
    .line 189
    new-instance v0, Lcom/mopub/common/CacheService$DiskLruCachePutTask;

    invoke-direct {v0, p0, p1}, Lcom/mopub/common/CacheService$DiskLruCachePutTask;-><init>(Ljava/lang/String;[B)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CacheService$DiskLruCachePutTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 190
    return-void
.end method
