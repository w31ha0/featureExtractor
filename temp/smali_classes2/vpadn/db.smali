.class public Lvpadn/db;
.super Landroid/os/AsyncTask;
.source "VideoDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvpadn/db$a;
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
.field private final a:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final b:Lvpadn/dd;

.field private final c:Lvpadn/db$a;


# direct methods
.method public constructor <init>(Lvpadn/db$a;Lvpadn/dd;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object p1, p0, Lvpadn/db;->c:Lvpadn/db$a;

    .line 39
    iput-object p2, p0, Lvpadn/db;->b:Lvpadn/dd;

    .line 40
    const/16 v0, 0x4e20

    invoke-static {v0}, Lvpadn/cx;->a(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lvpadn/db;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 41
    return-void
.end method


# virtual methods
.method a(Ljava/io/InputStream;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const-string v0, "vpadn-video-tmp"

    const/4 v1, 0x0

    iget-object v2, p0, Lvpadn/db;->b:Lvpadn/dd;

    invoke-virtual {v2}, Lvpadn/dd;->a()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 115
    const-wide/32 v2, 0x42c1d80

    :try_start_0
    invoke-static {p1, v1, v2, v3}, Lvpadn/cz;->a(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-static {p1}, Lvpadn/cz;->a(Ljava/io/Closeable;)V

    .line 122
    invoke-static {v1}, Lvpadn/cz;->a(Ljava/io/Closeable;)V

    .line 125
    return-object v0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 118
    const-string v0, "VideoDownloadTask"

    const-string v3, "(for video cache) copyInputStreamToTempFile throw IOException:"

    invoke-static {v0, v3, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lvpadn/cz;->a(Ljava/io/Closeable;)V

    .line 122
    invoke-static {v1}, Lvpadn/cz;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 66
    const-string v0, "VideoDownloadTask"

    const-string v1, "call downloadToCache for cache video"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v1, 0x0

    .line 71
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lvpadn/db;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lvpadn/db;->a(Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v2

    .line 75
    invoke-virtual {p0, p1, v2}, Lvpadn/db;->a(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 76
    :try_start_1
    const-string v1, "VideoDownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result of cache video -> savedSuccessfully:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    iget-object v1, p0, Lvpadn/db;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v1}, Lvpadn/cy;->a(Lorg/apache/http/client/HttpClient;)V

    .line 84
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 79
    :goto_1
    :try_start_2
    const-string v2, "VideoDownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to downloadToCache. Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    iget-object v1, p0, Lvpadn/db;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v1}, Lvpadn/cy;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lvpadn/db;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v1}, Lvpadn/cy;->a(Lorg/apache/http/client/HttpClient;)V

    throw v0

    .line 78
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    if-eqz p1, :cond_0

    aget-object v0, p1, v1

    if-nez v0, :cond_1

    .line 46
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, p1, v1

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lvpadn/db;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lvpadn/db;->c:Lvpadn/db$a;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lvpadn/db;->c:Lvpadn/db$a;

    invoke-interface {v0}, Lvpadn/db$a;->l()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lvpadn/db;->c:Lvpadn/db$a;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lvpadn/db;->c:Lvpadn/db$a;

    invoke-interface {v0}, Lvpadn/db$a;->m()V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 130
    iget-object v1, p0, Lvpadn/db;->b:Lvpadn/dd;

    invoke-virtual {v1, p1, v0}, Lvpadn/dd;->a(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v1

    .line 131
    invoke-static {v0}, Lvpadn/cz;->a(Ljava/io/Closeable;)V

    .line 132
    return v1
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to connect to null url."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lvpadn/db;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 96
    if-nez p2, :cond_2

    .line 97
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-nez v1, :cond_4

    .line 98
    :cond_1
    const-string v0, "VideoDownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Obtained null response from video url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Obtained null response from video url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 103
    :cond_3
    const-string v0, "VideoDownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Obtained null response or Lost some package of videoSize from video url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Obtained null response or Lost some package of videoSize from video url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_4
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lvpadn/db;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lvpadn/db;->a(Ljava/lang/Boolean;)V

    return-void
.end method
