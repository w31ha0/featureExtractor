.class public Lcom/netflix/mediaclient/util/StorageStateUtils;
.super Ljava/lang/Object;
.source "StorageStateUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageStateUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDeviceExternalStorageLogblobInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StorageStateUtils;->getDeviceExternalStorageInfo(Landroid/content/Context;)Lcom/netflix/mediaclient/util/StorageStateUtils$DeviceExternalStorageInfo;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getDeviceExternalStorageInfo(Landroid/content/Context;)Lcom/netflix/mediaclient/util/StorageStateUtils$DeviceExternalStorageInfo;
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 33
    const/4 v0, 0x0

    .line 34
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v10

    .line 35
    if-eqz v10, :cond_5

    .line 36
    new-instance v9, Lcom/netflix/mediaclient/util/StorageStateUtils$DeviceExternalStorageInfo;

    array-length v0, v10

    invoke-direct {v9, v0}, Lcom/netflix/mediaclient/util/StorageStateUtils$DeviceExternalStorageInfo;-><init>(I)V

    move v6, v7

    .line 37
    :goto_0
    array-length v0, v10

    if-ge v6, v0, :cond_4

    .line 38
    aget-object v4, v10, v6

    .line 39
    if-nez v4, :cond_0

    .line 40
    const-string/jumbo v0, "StorageStateUtils"

    const-string/jumbo v1, "externalFilesDirs null, ignore"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 45
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 46
    const-string/jumbo v1, "StorageStateUtils"

    const-string/jumbo v2, "mkdirsResult=%b"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 47
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    move v3, v7

    .line 52
    :goto_2
    const-string/jumbo v2, ""

    .line 53
    if-eqz v6, :cond_1

    move v0, v8

    .line 56
    :goto_3
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v1, v5, :cond_6

    .line 57
    invoke-static {v4}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 58
    :try_start_1
    invoke-static {v4}, Landroid/os/Environment;->isExternalStorageEmulated(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 59
    if-eqz v3, :cond_2

    :goto_4
    move v4, v0

    move-object v5, v2

    .line 71
    :goto_5
    new-instance v0, Lcom/netflix/mediaclient/util/StorageStateUtils$ExternalStorageInfo;

    if-nez v6, :cond_3

    move v2, v8

    :goto_6
    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/util/StorageStateUtils$ExternalStorageInfo;-><init>(ZZZZLjava/lang/String;)V

    .line 72
    iget-object v1, v9, Lcom/netflix/mediaclient/util/StorageStateUtils$DeviceExternalStorageInfo;->mExternalStorageInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v0, v7

    .line 53
    goto :goto_3

    .line 60
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 61
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v4

    .line 62
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "appUid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v11, " dirUid="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v11, v4, Landroid/system/StructStat;->st_uid:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v11, " dirGid="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, v4, Landroid/system/StructStat;->st_gid:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    const-string/jumbo v4, "StorageStateUtils"

    const-string/jumbo v5, "dbgInfo=%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-static {v4, v5, v11}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 67
    :catch_0
    move-exception v4

    move v4, v0

    move-object v5, v2

    goto :goto_5

    :cond_3
    move v2, v7

    .line 71
    goto :goto_6

    :cond_4
    move-object v0, v9

    .line 75
    :cond_5
    return-object v0

    .line 67
    :catch_1
    move-exception v1

    move v4, v7

    move v1, v0

    move-object v5, v2

    goto :goto_5

    :catch_2
    move-exception v0

    move v4, v7

    move-object v5, v2

    goto :goto_5

    :cond_6
    move v1, v0

    move v0, v7

    goto :goto_4

    :cond_7
    move v3, v8

    goto/16 :goto_2
.end method
