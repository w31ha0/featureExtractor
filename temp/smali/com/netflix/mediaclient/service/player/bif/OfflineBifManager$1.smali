.class Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager$1;
.super Ljava/lang/Object;
.source "OfflineBifManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

.field final synthetic val$fileUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager$1;->val$fileUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 25
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager$1;->val$fileUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->parseIndexFromInputStream(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager$1;->val$fileUrl:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->access$002(Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->access$100(Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0
.end method
