.class final Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;
.super Ljava/lang/Object;
.source "DiskLruJournal.java"


# instance fields
.field private currentEditor:Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

.field private final key:Ljava/lang/String;

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;


# direct methods
.method private constructor <init>(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->this$0:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p2, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->key:Ljava/lang/String;

    .line 712
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Ljava/lang/String;Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;)V
    .locals 0

    .prologue
    .line 698
    invoke-direct {p0, p1, p2}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;-><init>(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)J
    .locals 2

    .prologue
    .line 698
    iget-wide v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;J)J
    .locals 1

    .prologue
    .line 698
    iput-wide p1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$602(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;Z)Z
    .locals 0

    .prologue
    .line 698
    iput-boolean p1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->readable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->currentEditor:Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->currentEditor:Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->key:Ljava/lang/String;

    return-object v0
.end method
