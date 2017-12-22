.class Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;
.super Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;
.source "StreamingBifManager.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

.field final synthetic val$nextPosition:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;I)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    iput p2, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->val$nextPosition:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$000(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "Resource %s could not be fetched or retrieved from cache, status %d"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 121
    iget v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->val$nextPosition:I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$100(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$100(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->val$nextPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$000(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "Fetch was canceled, stop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_2
    const-string/jumbo v1, "BifManager"

    const-string/jumbo v2, "Try to fetch %d URL %s"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->val$nextPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 128
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    iget v2, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->val$nextPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$200(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;Ljava/lang/String;I)V

    goto :goto_0

    .line 132
    :cond_3
    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "We fail to download bif completely, all URLs failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_4
    const-string/jumbo v1, "BifManager"

    const-string/jumbo v3, "Resource %s fetched, size %d, status %d"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v5

    if-eqz p2, :cond_8

    const/4 v0, -0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v1, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 143
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$300(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$400(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$300(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$400(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 147
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 149
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$300(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$400(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 151
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-virtual {v3, v2}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->parseIndexFromInputStream(Ljava/io/InputStream;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 152
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$502(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$600(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    :cond_5
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    monitor-enter v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 158
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$000(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$700(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)V

    .line 161
    :cond_6
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    if-eqz v1, :cond_7

    .line 168
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 170
    :cond_7
    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 173
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 137
    :cond_8
    array-length v0, p2

    goto/16 :goto_1

    .line 161
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 163
    :catch_1
    move-exception v0

    .line 164
    :goto_2
    :try_start_6
    const-string/jumbo v3, "BifManager"

    const-string/jumbo v4, "loadBifIndexAsync has exception"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 167
    if-eqz v1, :cond_9

    .line 168
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 170
    :cond_9
    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 173
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 166
    :catchall_1
    move-exception v0

    move-object v1, v2

    .line 167
    :goto_3
    if-eqz v1, :cond_a

    .line 168
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 170
    :cond_a
    if-eqz v2, :cond_b

    .line 171
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 173
    :cond_b
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    .line 166
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 163
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
