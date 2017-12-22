.class public final Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;
.super Ljava/lang/Object;
.source "DiskLruJournal.java"


# instance fields
.field private committed:Z

.field private final entry:Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;


# direct methods
.method private constructor <init>(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    iput-object p2, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->entry:Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;

    .line 626
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;)V
    .locals 0

    .prologue
    .line 619
    invoke-direct {p0, p1, p2}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;-><init>(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->entry:Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;Z)Z
    .locals 0

    .prologue
    .line 619
    iput-boolean p1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->access$1400(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;Z)V

    .line 648
    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 1

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->committed:Z

    if-nez v0, :cond_0

    .line 653
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 654
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public commit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 633
    iget-boolean v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->access$1400(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;Z)V

    .line 635
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->entry:Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;

    invoke-static {v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$900(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->remove(Ljava/lang/String;)Z

    .line 639
    :goto_0
    iput-boolean v2, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->committed:Z

    .line 640
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    invoke-static {v0, p0, v2}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->access$1400(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;Z)V

    goto :goto_0
.end method
