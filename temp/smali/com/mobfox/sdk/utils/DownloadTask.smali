.class public Lcom/mobfox/sdk/utils/DownloadTask;
.super Landroid/os/AsyncTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/utils/DownloadTask$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field filepath:Ljava/lang/String;

.field listener:Lcom/mobfox/sdk/utils/DownloadTask$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mobfox/sdk/utils/DownloadTask$Listener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mobfox/sdk/utils/DownloadTask$Listener;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/utils/DownloadTask;->filepath:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/mobfox/sdk/utils/DownloadTask;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/mobfox/sdk/utils/DownloadTask;->listener:Lcom/mobfox/sdk/utils/DownloadTask$Listener;

    .line 32
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/utils/DownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 36
    const/4 v5, 0x0

    .line 37
    .local v5, "input":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 38
    .local v6, "output":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 40
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 41
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 42
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 43
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-eq v9, v10, :cond_3

    .line 44
    const-string v9, "MobFoxNetwork"

    const-string v10, "bad connection"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-eqz v6, :cond_0

    :try_start_1
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 62
    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 65
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 66
    :cond_2
    iget-object v9, p0, Lcom/mobfox/sdk/utils/DownloadTask;->listener:Lcom/mobfox/sdk/utils/DownloadTask$Listener;

    iget-object v10, p0, Lcom/mobfox/sdk/utils/DownloadTask;->filepath:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/mobfox/sdk/utils/DownloadTask$Listener;->onDownloaded(Ljava/lang/String;)V

    .line 67
    const-string v9, "MobFoxBanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/mobfox/sdk/utils/DownloadTask;->filepath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cached"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v9, p0, Lcom/mobfox/sdk/utils/DownloadTask;->filepath:Ljava/lang/String;

    .end local v8    # "url":Ljava/net/URL;
    :goto_1
    return-object v9

    .line 47
    .restart local v8    # "url":Ljava/net/URL;
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 49
    const/4 v9, 0x1

    aget-object v9, p1, v9

    iput-object v9, p0, Lcom/mobfox/sdk/utils/DownloadTask;->filepath:Ljava/lang/String;

    .line 50
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/mobfox/sdk/utils/DownloadTask;->filepath:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .end local v6    # "output":Ljava/io/OutputStream;
    .local v7, "output":Ljava/io/OutputStream;
    const/16 v9, 0x1000

    :try_start_3
    new-array v3, v9, [B

    .line 54
    .local v3, "data":[B
    :goto_2
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_7

    .line 55
    const/4 v9, 0x0

    invoke-virtual {v7, v3, v9, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 57
    .end local v2    # "count":I
    .end local v3    # "data":[B
    :catch_0
    move-exception v4

    move-object v6, v7

    .line 58
    .end local v7    # "output":Ljava/io/OutputStream;
    .end local v8    # "url":Ljava/net/URL;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v6    # "output":Ljava/io/OutputStream;
    :goto_3
    :try_start_4
    const-string v9, "MobFoxNetwork"

    const-string v10, "download task"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 62
    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 65
    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 66
    :cond_6
    iget-object v9, p0, Lcom/mobfox/sdk/utils/DownloadTask;->listener:Lcom/mobfox/sdk/utils/DownloadTask$Listener;

    iget-object v10, p0, Lcom/mobfox/sdk/utils/DownloadTask;->filepath:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/mobfox/sdk/utils/DownloadTask$Listener;->onDownloaded(Ljava/lang/String;)V

    .line 67
    const-string v9, "MobFoxBanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/mobfox/sdk/utils/DownloadTask;->filepath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cached"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v9, p0, Lcom/mobfox/sdk/utils/DownloadTask;->filepath:Ljava/lang/String;

    goto :goto_1

    .line 61
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v2    # "count":I
    .restart local v3    # "data":[B
    .restart local v7    # "output":Ljava/io/OutputStream;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_7
    if-eqz v7, :cond_8

    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 62
    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 65
    :cond_9
    :goto_5
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 66
    :cond_a
    iget-object v9, p0, Lcom/mobfox/sdk/utils/DownloadTask;->listener:Lcom/mobfox/sdk/utils/DownloadTask$Listener;

    iget-object v10, p0, Lcom/mobfox/sdk/utils/DownloadTask;->filepath:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/mobfox/sdk/utils/DownloadTask$Listener;->onDownloaded(Ljava/lang/String;)V

    .line 67
    const-string v9, "MobFoxBanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/mobfox/sdk/utils/DownloadTask;->filepath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cached"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v9, p0, Lcom/mobfox/sdk/utils/DownloadTask;->filepath:Ljava/lang/String;

    move-object v6, v7

    .end local v7    # "output":Ljava/io/OutputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 60
    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v8    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v9

    .line 61
    :goto_6
    if-eqz v6, :cond_b

    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 62
    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 65
    :cond_c
    :goto_7
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 66
    :cond_d
    iget-object v9, p0, Lcom/mobfox/sdk/utils/DownloadTask;->listener:Lcom/mobfox/sdk/utils/DownloadTask$Listener;

    iget-object v10, p0, Lcom/mobfox/sdk/utils/DownloadTask;->filepath:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/mobfox/sdk/utils/DownloadTask$Listener;->onDownloaded(Ljava/lang/String;)V

    .line 67
    const-string v9, "MobFoxBanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/mobfox/sdk/utils/DownloadTask;->filepath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cached"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v9, p0, Lcom/mobfox/sdk/utils/DownloadTask;->filepath:Ljava/lang/String;

    goto/16 :goto_1

    .line 63
    :catch_1
    move-exception v9

    goto :goto_7

    .line 60
    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v7    # "output":Ljava/io/OutputStream;
    .restart local v8    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "output":Ljava/io/OutputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    goto :goto_6

    .line 63
    .end local v8    # "url":Ljava/net/URL;
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    goto/16 :goto_4

    .line 57
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    goto/16 :goto_3

    .line 63
    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v2    # "count":I
    .restart local v3    # "data":[B
    .restart local v7    # "output":Ljava/io/OutputStream;
    .restart local v8    # "url":Ljava/net/URL;
    :catch_4
    move-exception v9

    goto :goto_5

    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v7    # "output":Ljava/io/OutputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    :catch_5
    move-exception v9

    goto/16 :goto_0
.end method
