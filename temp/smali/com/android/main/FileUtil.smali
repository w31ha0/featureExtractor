.class public Lcom/android/main/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DOWNLOADAPK"


# instance fields
.field private currentFilePath:Ljava/lang/String;

.field private currentTempFilePath:Ljava/lang/String;

.field private fileEx:Ljava/lang/String;

.field private fileNa:Ljava/lang/String;

.field private myTempFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v1, p0, Lcom/android/main/FileUtil;->currentFilePath:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v1, p0, Lcom/android/main/FileUtil;->currentTempFilePath:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v1, p0, Lcom/android/main/FileUtil;->fileEx:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v1, p0, Lcom/android/main/FileUtil;->fileNa:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/main/FileUtil;->myTempFile:Ljava/io/File;

    .line 12
    return-void
.end method


# virtual methods
.method public getDataSource(Ljava/lang/String;)V
    .locals 11
    .param p1, "strPath"    # Ljava/lang/String;

    .prologue
    const-string v10, "info"

    .line 48
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 49
    const-string v7, "info"

    const-string v7, "ERROR URL"

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    return-void

    .line 52
    :cond_0
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 53
    .local v5, "myURL":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 54
    .local v1, "conn":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 55
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 56
    .local v4, "is":Ljava/io/InputStream;
    if-nez v4, :cond_1

    .line 57
    const-string v7, "info"

    const-string v8, "stream is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_1
    iget-object v7, p0, Lcom/android/main/FileUtil;->fileNa:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/main/FileUtil;->fileEx:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/android/main/FileUtil;->myTempFile:Ljava/io/File;

    .line 60
    iget-object v7, p0, Lcom/android/main/FileUtil;->myTempFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/main/FileUtil;->currentTempFilePath:Ljava/lang/String;

    .line 61
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/android/main/FileUtil;->myTempFile:Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 62
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/16 v7, 0x80

    new-array v0, v7, [B

    .line 64
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 65
    .local v6, "numread":I
    if-gtz v6, :cond_2

    .line 70
    iget-object v7, p0, Lcom/android/main/FileUtil;->currentTempFilePath:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/main/APKInstaller;->install(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v0    # "buf":[B
    .end local v1    # "conn":Ljava/net/URLConnection;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "myURL":Ljava/net/URL;
    .end local v6    # "numread":I
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 73
    .local v2, "ex":Ljava/lang/Exception;
    const-string v7, "info"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "buf":[B
    .restart local v1    # "conn":Ljava/net/URLConnection;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "myURL":Ljava/net/URL;
    .restart local v6    # "numread":I
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v3, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getFile(Ljava/lang/String;)I
    .locals 5
    .param p1, "strPath"    # Ljava/lang/String;

    .prologue
    const-string v4, "."

    .line 22
    const-string v2, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 22
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 22
    iput-object v2, p0, Lcom/android/main/FileUtil;->fileEx:Ljava/lang/String;

    .line 24
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 25
    const-string v3, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 24
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/main/FileUtil;->fileNa:Ljava/lang/String;

    .line 27
    :try_start_0
    iget-object v2, p0, Lcom/android/main/FileUtil;->currentFilePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/main/FileUtil;->getDataSource(Ljava/lang/String;)V

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/android/main/FileUtil;->currentFilePath:Ljava/lang/String;

    .line 31
    new-instance v1, Lcom/android/main/FileUtil$1;

    invoke-direct {v1, p0, p1}, Lcom/android/main/FileUtil$1;-><init>(Lcom/android/main/FileUtil;Ljava/lang/String;)V

    .line 40
    .local v1, "r":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    const/4 v2, 0x0

    .end local v1    # "r":Ljava/lang/Runnable;
    :goto_0
    return v2

    .line 41
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_0
.end method
