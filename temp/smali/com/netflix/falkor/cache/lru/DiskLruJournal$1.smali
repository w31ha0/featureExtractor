.class Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;
.super Ljava/lang/Object;
.source "DiskLruJournal.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/cache/lru/DiskLruJournal;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;->this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanup()V
    .locals 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;->this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;->this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->access$000(Lcom/netflix/falkor/cache/lru/DiskLruJournal;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    monitor-exit v1

    .line 191
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;->this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->access$100(Lcom/netflix/falkor/cache/lru/DiskLruJournal;)V

    .line 186
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;->this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->access$200(Lcom/netflix/falkor/cache/lru/DiskLruJournal;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;->this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->access$300(Lcom/netflix/falkor/cache/lru/DiskLruJournal;)V

    .line 188
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;->this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->access$402(Lcom/netflix/falkor/cache/lru/DiskLruJournal;I)I

    .line 190
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;->cleanup()V

    .line 176
    const/4 v0, 0x0

    return-object v0
.end method
