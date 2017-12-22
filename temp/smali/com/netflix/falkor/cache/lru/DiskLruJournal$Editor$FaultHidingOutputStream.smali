.class Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruJournal.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;


# direct methods
.method private constructor <init>(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor$FaultHidingOutputStream;->this$1:Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    .line 661
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 662
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :goto_0
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor$FaultHidingOutputStream;->this$1:Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->access$1502(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :goto_0
    return-void

    .line 691
    :catch_0
    move-exception v0

    .line 692
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor$FaultHidingOutputStream;->this$1:Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->access$1502(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_0
    return-void

    .line 667
    :catch_0
    move-exception v0

    .line 668
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor$FaultHidingOutputStream;->this$1:Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->access$1502(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2

    .prologue
    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :goto_0
    return-void

    .line 675
    :catch_0
    move-exception v0

    .line 676
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor$FaultHidingOutputStream;->this$1:Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->access$1502(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;Z)Z

    goto :goto_0
.end method
