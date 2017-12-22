.class Lorg/chromium/net/impl/CronetBidirectionalStream$1;
.super Ljava/lang/Object;
.source "CronetBidirectionalStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

.field final synthetic val$requestHeadersSent:Z


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetBidirectionalStream;Z)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    iput-boolean p2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$1;->val$requestHeadersSent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 465
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$000(Lorg/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 466
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$100(Lorg/chromium/net/impl/CronetBidirectionalStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    monitor-exit v1

    .line 483
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    iget-boolean v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$1;->val$requestHeadersSent:Z

    invoke-static {v0, v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$902(Lorg/chromium/net/impl/CronetBidirectionalStream;Z)Z

    .line 470
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    sget-object v2, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->WAITING_FOR_READ:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    invoke-static {v0, v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$202(Lorg/chromium/net/impl/CronetBidirectionalStream;Lorg/chromium/net/impl/CronetBidirectionalStream$State;)Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    .line 471
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$1000(Lorg/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$1100(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$900(Lorg/chromium/net/impl/CronetBidirectionalStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    sget-object v2, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->WRITING_DONE:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    invoke-static {v0, v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$302(Lorg/chromium/net/impl/CronetBidirectionalStream;Lorg/chromium/net/impl/CronetBidirectionalStream$State;)Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    .line 476
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$500(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-virtual {v0, v1}, Lorg/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->onStreamReady(Lorg/chromium/net/BidirectionalStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1, v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$700(Lorg/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/Exception;)V

    goto :goto_0

    .line 474
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$1;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    sget-object v2, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->WAITING_FOR_FLUSH:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    invoke-static {v0, v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$302(Lorg/chromium/net/impl/CronetBidirectionalStream;Lorg/chromium/net/impl/CronetBidirectionalStream$State;)Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    goto :goto_1

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
