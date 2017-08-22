.class public Lcom/mobfox/sdk/services/MobFoxCacheService;
.super Lcom/mobfox/sdk/services/MobFoxService;
.source "MobFoxCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/services/MobFoxCacheService$Listener;
    }
.end annotation


# static fields
.field public static final EVENT_READY_INTERVAL:J = 0xc8L


# instance fields
.field downloadedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/mobfox/sdk/services/MobFoxService;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobfox/sdk/services/MobFoxCacheService;->downloadedFiles:Ljava/util/List;

    .line 36
    return-void
.end method

.method public static getLocalPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoURL"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-static {p1}, Lcom/mobfox/sdk/services/MobFoxCacheService;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "filename":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 119
    const-string v3, "MobFoxBanner"

    const-string v4, "parse video url"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 126
    :cond_0
    :goto_0
    return-object v1

    .line 122
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "filepath":Ljava/lang/String;
    invoke-static {v1}, Lcom/mobfox/sdk/services/MobFoxCacheService;->videoExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 126
    goto :goto_0
.end method

.method public static handleCacheables(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mobfox/sdk/services/MobFoxCacheService$Listener;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adResp"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/mobfox/sdk/services/MobFoxCacheService$Listener;

    .prologue
    .line 46
    :try_start_0
    const-string v6, "cacheables"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 48
    .local v0, "cacheables":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 49
    const-string v6, "MobFoxBanner"

    const-string v7, "cacheables empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v0    # "cacheables":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local v0    # "cacheables":Lorg/json/JSONArray;
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 54
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mobfox/sdk/services/MobFoxCacheService;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "filename":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "filepath":Ljava/lang/String;
    invoke-static {v4}, Lcom/mobfox/sdk/services/MobFoxCacheService;->videoExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 58
    invoke-interface {p2, v4}, Lcom/mobfox/sdk/services/MobFoxCacheService$Listener;->onDownloaded(Ljava/lang/String;)V

    .line 53
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 62
    :cond_2
    new-instance v1, Lcom/mobfox/sdk/utils/DownloadTask;

    new-instance v6, Lcom/mobfox/sdk/services/MobFoxCacheService$1;

    invoke-direct {v6, p2}, Lcom/mobfox/sdk/services/MobFoxCacheService$1;-><init>(Lcom/mobfox/sdk/services/MobFoxCacheService$Listener;)V

    invoke-direct {v1, p0, v6}, Lcom/mobfox/sdk/utils/DownloadTask;-><init>(Landroid/content/Context;Lcom/mobfox/sdk/utils/DownloadTask$Listener;)V

    .line 69
    .local v1, "download":Lcom/mobfox/sdk/utils/DownloadTask;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {v1, v6}, Lcom/mobfox/sdk/utils/DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 72
    .end local v0    # "cacheables":Lorg/json/JSONArray;
    .end local v1    # "download":Lcom/mobfox/sdk/utils/DownloadTask;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "filepath":Ljava/lang/String;
    .end local v5    # "i":I
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Lorg/json/JSONException;
    const-string v6, "MobFoxBanner"

    const-string v7, "handle cacheables"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v0, "MD5"

    .line 95
    .local v0, "MD5":Ljava/lang/String;
    :try_start_0
    const-string v7, "MD5"

    .line 96
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 97
    .local v2, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 98
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 101
    .local v6, "messageDigest":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v5, "hexString":Ljava/lang/StringBuilder;
    array-length v8, v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_1

    aget-byte v1, v6, v7

    .line 103
    .local v1, "aMessageDigest":B
    and-int/lit16 v9, v1, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "h":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_0

    .line 105
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 106
    :cond_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "aMessageDigest":B
    .end local v4    # "h":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 113
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "hexString":Ljava/lang/StringBuilder;
    .end local v6    # "messageDigest":[B
    :goto_2
    return-object v7

    .line 110
    :catch_0
    move-exception v3

    .line 111
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v7, "MobFoxBanner"

    const-string v8, "md5"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v7, ""

    goto :goto_2
.end method

.method public static videoExists(Ljava/lang/String;)Z
    .locals 6
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 79
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 87
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return v3

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MobFoxBanner"

    const-string v5, "video exists"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 86
    .local v2, "t":Ljava/lang/Throwable;
    const-string v4, "MobFoxBanner"

    const-string v5, "video exists"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method addDownloaded(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mobfox/sdk/services/MobFoxCacheService;->downloadedFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public callback()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
