.class Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "MraidNativeCommandHandler.java"


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidNativeCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadImageAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 445
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 446
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->mContext:Landroid/content/Context;

    .line 447
    iput-object p2, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->mListener:Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;

    .line 448
    return-void
.end method

.method private getFileNameForUriAndHeaders(Ljava/net/URI;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Ljava/net/URI;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v7, 0x0

    .line 506
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 507
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_0

    if-nez p2, :cond_2

    .line 510
    :cond_0
    const/4 v3, 0x0

    .line 536
    :cond_1
    :goto_0
    return-object v3

    .line 512
    :cond_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, "filename":Ljava/lang/String;
    const-string v6, "Content-Type"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 515
    .local v4, "mimeTypeHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 516
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 525
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "fields":[Ljava/lang/String;
    array-length v8, v2

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_1

    aget-object v1, v2, v6

    .line 527
    .local v1, "field":Ljava/lang/String;
    const-string v7, "image/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 528
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 526
    .end local v0    # "extension":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private getPictureStoragePath()Ljava/io/File;
    .locals 3

    .prologue
    .line 540
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Pictures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private loadPictureIntoGalleryApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 544
    new-instance v1, Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;

    invoke-direct {v1, p1, v2, v2}, Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$1;)V

    .line 546
    .local v1, "mediaScannerConnectionClient":Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 548
    .local v0, "mediaScannerConnection":Landroid/media/MediaScannerConnection;
    invoke-static {v1, v0}, Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;->access$100(Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;Landroid/media/MediaScannerConnection;)V

    .line 549
    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 550
    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 14
    .param p1, "params"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 452
    if-eqz p1, :cond_0

    array-length v13, p1

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    aget-object v13, p1, v13

    if-nez v13, :cond_1

    .line 453
    :cond_0
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 487
    :goto_0
    return-object v13

    .line 456
    :cond_1
    invoke-direct {p0}, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->getPictureStoragePath()Ljava/io/File;

    move-result-object v8

    .line 459
    .local v8, "pictureStoragePath":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 461
    const/4 v13, 0x0

    aget-object v11, p1, v13

    .line 462
    .local v11, "uriString":Ljava/lang/String;
    invoke-static {v11}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v10

    .line 464
    .local v10, "uri":Ljava/net/URI;
    const/4 v4, 0x0

    .line 465
    .local v4, "pictureInputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 468
    .local v6, "pictureOutputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {v11}, Lcom/mopub/common/MoPubHttpUrlConnection;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v12

    .line 469
    .local v12, "urlConnection":Ljava/net/HttpURLConnection;
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    .end local v4    # "pictureInputStream":Ljava/io/InputStream;
    .local v5, "pictureInputStream":Ljava/io/InputStream;
    :try_start_1
    sget-object v13, Lcom/mopub/common/util/ResponseHeader;->LOCATION:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v13}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 472
    .local v9, "redirectLocation":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 473
    invoke-static {v9}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v10

    .line 477
    :cond_2
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    invoke-direct {p0, v10, v13}, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->getFileNameForUriAndHeaders(Ljava/net/URI;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "pictureFileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 479
    .local v1, "pictureFile":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 480
    .end local v6    # "pictureOutputStream":Ljava/io/OutputStream;
    .local v7, "pictureOutputStream":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v5, v7}, Lcom/mopub/common/util/Streams;->copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 482
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, "pictureFileFullPath":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->loadPictureIntoGalleryApp(Ljava/lang/String;)V

    .line 485
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v13

    .line 489
    invoke-static {v5}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 490
    invoke-static {v7}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 486
    .end local v1    # "pictureFile":Ljava/io/File;
    .end local v2    # "pictureFileFullPath":Ljava/lang/String;
    .end local v3    # "pictureFileName":Ljava/lang/String;
    .end local v5    # "pictureInputStream":Ljava/io/InputStream;
    .end local v7    # "pictureOutputStream":Ljava/io/OutputStream;
    .end local v9    # "redirectLocation":Ljava/lang/String;
    .end local v12    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v4    # "pictureInputStream":Ljava/io/InputStream;
    .restart local v6    # "pictureOutputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v13, 0x0

    :try_start_3
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v13

    .line 489
    invoke-static {v4}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 490
    invoke-static {v6}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 489
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    :goto_2
    invoke-static {v4}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 490
    invoke-static {v6}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    throw v13

    .line 489
    .end local v4    # "pictureInputStream":Ljava/io/InputStream;
    .restart local v5    # "pictureInputStream":Ljava/io/InputStream;
    .restart local v12    # "urlConnection":Ljava/net/HttpURLConnection;
    :catchall_1
    move-exception v13

    move-object v4, v5

    .end local v5    # "pictureInputStream":Ljava/io/InputStream;
    .restart local v4    # "pictureInputStream":Ljava/io/InputStream;
    goto :goto_2

    .end local v4    # "pictureInputStream":Ljava/io/InputStream;
    .end local v6    # "pictureOutputStream":Ljava/io/OutputStream;
    .restart local v1    # "pictureFile":Ljava/io/File;
    .restart local v3    # "pictureFileName":Ljava/lang/String;
    .restart local v5    # "pictureInputStream":Ljava/io/InputStream;
    .restart local v7    # "pictureOutputStream":Ljava/io/OutputStream;
    .restart local v9    # "redirectLocation":Ljava/lang/String;
    :catchall_2
    move-exception v13

    move-object v6, v7

    .end local v7    # "pictureOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "pictureOutputStream":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "pictureInputStream":Ljava/io/InputStream;
    .restart local v4    # "pictureInputStream":Ljava/io/InputStream;
    goto :goto_2

    .line 486
    .end local v1    # "pictureFile":Ljava/io/File;
    .end local v3    # "pictureFileName":Ljava/lang/String;
    .end local v4    # "pictureInputStream":Ljava/io/InputStream;
    .end local v9    # "redirectLocation":Ljava/lang/String;
    .restart local v5    # "pictureInputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "pictureInputStream":Ljava/io/InputStream;
    .restart local v4    # "pictureInputStream":Ljava/io/InputStream;
    goto :goto_1

    .end local v4    # "pictureInputStream":Ljava/io/InputStream;
    .end local v6    # "pictureOutputStream":Ljava/io/OutputStream;
    .restart local v1    # "pictureFile":Ljava/io/File;
    .restart local v3    # "pictureFileName":Ljava/lang/String;
    .restart local v5    # "pictureInputStream":Ljava/io/InputStream;
    .restart local v7    # "pictureOutputStream":Ljava/io/OutputStream;
    .restart local v9    # "redirectLocation":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v6, v7

    .end local v7    # "pictureOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "pictureOutputStream":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "pictureInputStream":Ljava/io/InputStream;
    .restart local v4    # "pictureInputStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 433
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method getListener()Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->mListener:Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 496
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->mListener:Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;

    invoke-interface {v0}, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;->onSuccess()V

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->mListener:Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;

    invoke-interface {v0}, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;->onFailure()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 433
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
