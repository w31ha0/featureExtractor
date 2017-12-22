.class final Lorg/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;
.super Ljava/lang/Object;
.source "CronetBidirectionalStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mEndOfStream:Z

.field final synthetic this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetBidirectionalStream;Ljava/nio/ByteBuffer;Z)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 196
    iput-boolean p3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->mEndOfStream:Z

    .line 197
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 203
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 204
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 206
    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$000(Lorg/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :try_start_1
    iget-object v3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v3}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$100(Lorg/chromium/net/impl/CronetBidirectionalStream;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    monitor-exit v2

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-boolean v3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->mEndOfStream:Z

    if-eqz v3, :cond_2

    .line 211
    iget-object v3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    sget-object v4, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->WRITING_DONE:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    invoke-static {v3, v4}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$302(Lorg/chromium/net/impl/CronetBidirectionalStream;Lorg/chromium/net/impl/CronetBidirectionalStream$State;)Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    .line 212
    iget-object v3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v3}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$200(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    move-result-object v3

    sget-object v4, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->READING_DONE:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 214
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :try_start_2
    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$500(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    iget-object v4, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v4}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$400(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v4

    iget-boolean v5, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->mEndOfStream:Z

    invoke-virtual {v2, v3, v4, v1, v5}, Lorg/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->onWriteCompleted(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V

    .line 217
    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$600(Lorg/chromium/net/impl/CronetBidirectionalStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$OnWriteCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1, v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->access$700(Lorg/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/Exception;)V

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method
