.class Lorg/linphone/tools/OpenH264DownloadHelper$1;
.super Ljava/lang/Object;
.source "OpenH264DownloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/linphone/tools/OpenH264DownloadHelper;


# direct methods
.method constructor <init>(Lorg/linphone/tools/OpenH264DownloadHelper;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 188
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v2}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$000(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v2}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$100(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v3}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$200(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 191
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 192
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "OpenH264Downloader"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, " "

    aput-object v5, v3, v4

    invoke-static {v3}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 193
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 194
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v6}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$000(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v6}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$300(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    .line 196
    iget-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v0}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$400(Lorg/linphone/tools/OpenH264DownloadHelper;)Lorg/linphone/core/OpenH264DownloadHelperListener;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {v0, v6, v5}, Lorg/linphone/core/OpenH264DownloadHelperListener;->OnProgress(II)V

    .line 198
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "OpenH264Downloader"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Download file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v8}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$300(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 200
    const/16 v0, 0x1000

    new-array v6, v0, [B

    move v0, v1

    .line 203
    :goto_0
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 204
    add-int/2addr v0, v1

    .line 205
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 206
    iget-object v1, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v1}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$400(Lorg/linphone/tools/OpenH264DownloadHelper;)Lorg/linphone/core/OpenH264DownloadHelperListener;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Lorg/linphone/core/OpenH264DownloadHelperListener;->OnProgress(II)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    iget-object v1, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v1}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$400(Lorg/linphone/tools/OpenH264DownloadHelper;)Lorg/linphone/core/OpenH264DownloadHelperListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/linphone/core/OpenH264DownloadHelperListener;->OnError(Ljava/lang/String;)V

    .line 236
    :goto_1
    return-void

    .line 209
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 210
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 212
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v3, "OpenH264Downloader"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Uncompress file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v4}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$300(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 214
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v3}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$000(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v3}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$300(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 215
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 216
    new-instance v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    invoke-direct {v3, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    .line 218
    :goto_2
    invoke-virtual {v3, v6}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 219
    const/4 v5, 0x0

    invoke-virtual {v1, v6, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 233
    :catch_1
    move-exception v0

    .line 234
    iget-object v1, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v1}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$400(Lorg/linphone/tools/OpenH264DownloadHelper;)Lorg/linphone/core/OpenH264DownloadHelperListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/linphone/core/OpenH264DownloadHelperListener;->OnError(Ljava/lang/String;)V

    goto :goto_1

    .line 221
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 222
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 223
    invoke-virtual {v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->close()V

    .line 225
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v3, "OpenH264Downloader"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Remove file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v4}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$300(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 226
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v3}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$000(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v3}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$300(Lorg/linphone/tools/OpenH264DownloadHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 228
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v3, "OpenH264Downloader"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Loading plugin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 229
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lorg/linphone/tools/OpenH264DownloadHelper$1;->this$0:Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-static {v0}, Lorg/linphone/tools/OpenH264DownloadHelper;->access$400(Lorg/linphone/tools/OpenH264DownloadHelper;)Lorg/linphone/core/OpenH264DownloadHelperListener;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/linphone/core/OpenH264DownloadHelperListener;->OnProgress(II)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method
