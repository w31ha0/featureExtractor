.class Lcom/netflix/mediaclient/media/BookmarkStore$1;
.super Ljava/lang/Object;
.source "BookmarkStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/media/BookmarkStore;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/BookmarkStore;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStore$1;->this$0:Lcom/netflix/mediaclient/media/BookmarkStore;

    iput-object p2, p0, Lcom/netflix/mediaclient/media/BookmarkStore$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 63
    const-class v1, Lcom/netflix/mediaclient/media/BookmarkStore;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore$1;->this$0:Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BookmarkStore;->access$100(Lcom/netflix/mediaclient/media/BookmarkStore;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore$1;->this$0:Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BookmarkStore;->access$100(Lcom/netflix/mediaclient/media/BookmarkStore;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v0

    const-string/jumbo v2, "utf-8"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/StringUtils;->byteArrayToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v2, p0, Lcom/netflix/mediaclient/media/BookmarkStore$1;->this$0:Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v4, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/media/BookmarkStore;->access$202(Lcom/netflix/mediaclient/media/BookmarkStore;Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;)Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore$1;->this$0:Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BookmarkStore;->access$200(Lcom/netflix/mediaclient/media/BookmarkStore;)Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore$1;->this$0:Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BookmarkStore;->access$200(Lcom/netflix/mediaclient/media/BookmarkStore;)Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore$1;->this$0:Lcom/netflix/mediaclient/media/BookmarkStore;

    new-instance v2, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    iget-object v3, p0, Lcom/netflix/mediaclient/media/BookmarkStore$1;->this$0:Lcom/netflix/mediaclient/media/BookmarkStore;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;-><init>(Lcom/netflix/mediaclient/media/BookmarkStore;Lcom/netflix/mediaclient/media/BookmarkStore$1;)V

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/media/BookmarkStore;->access$202(Lcom/netflix/mediaclient/media/BookmarkStore;Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;)Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore$1;->this$0:Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BookmarkStore;->access$200(Lcom/netflix/mediaclient/media/BookmarkStore;)Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore$1;->this$0:Lcom/netflix/mediaclient/media/BookmarkStore;

    iget-object v2, p0, Lcom/netflix/mediaclient/media/BookmarkStore$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/media/BookmarkStore;->access$302(Lcom/netflix/mediaclient/media/BookmarkStore;Landroid/content/Context;)Landroid/content/Context;

    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string/jumbo v2, "nf_BookmarkStore"

    const-string/jumbo v3, "init error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
