.class Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;
.super Ljava/lang/Thread;
.source "FalkorCache.java"


# static fields
.field private static final EVICT_LIST:I = 0x1


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 271
    const-string/jumbo v0, "FalkorCache.LruBackup"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/falkor/cache/FalkorCache$1;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 276
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 277
    new-instance v0, Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruHandler;-><init>(Lcom/netflix/falkor/cache/FalkorCache$1;)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;->handler:Landroid/os/Handler;

    .line 278
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 279
    return-void
.end method
