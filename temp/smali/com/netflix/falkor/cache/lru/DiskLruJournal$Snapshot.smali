.class public final Lcom/netflix/falkor/cache/lru/DiskLruJournal$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruJournal.java"


# instance fields
.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;


# direct methods
.method private constructor <init>(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 601
    iput-object p1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Snapshot;->this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p2, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Snapshot;->key:Ljava/lang/String;

    .line 603
    iput-wide p3, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Snapshot;->sequenceNumber:J

    .line 604
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Ljava/lang/String;JLcom/netflix/falkor/cache/lru/DiskLruJournal$1;)V
    .locals 1

    .prologue
    .line 597
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Snapshot;-><init>(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public edit()Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;
    .locals 4

    .prologue
    .line 613
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Snapshot;->this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->access$1300(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Ljava/lang/String;J)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    move-result-object v0

    return-object v0
.end method
