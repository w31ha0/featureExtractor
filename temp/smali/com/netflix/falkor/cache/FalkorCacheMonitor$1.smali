.class Lcom/netflix/falkor/cache/FalkorCacheMonitor$1;
.super Ljava/lang/Object;
.source "FalkorCacheMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/cache/FalkorCacheMonitor;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/cache/FalkorCacheMonitor;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$1;->this$0:Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$1;->this$0:Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    iget-object v1, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$1;->this$0:Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    invoke-static {v1}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->access$000(Lcom/netflix/falkor/cache/FalkorCacheMonitor;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->access$100(Lcom/netflix/falkor/cache/FalkorCacheMonitor;Ljava/util/List;)V

    .line 69
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$1;->this$0:Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    invoke-static {v0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->access$000(Lcom/netflix/falkor/cache/FalkorCacheMonitor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    return-void
.end method
