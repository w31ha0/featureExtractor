.class final Lorg/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;
.super Ljava/lang/Object;
.source "CronetUrlRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mByteBuffer:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lorg/chromium/net/impl/CronetUrlRequest;


# direct methods
.method private constructor <init>(Lorg/chromium/net/impl/CronetUrlRequest;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/impl/CronetUrlRequest$1;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetUrlRequest;->checkCallingThread()V

    .line 112
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 116
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetUrlRequest;->access$100(Lorg/chromium/net/impl/CronetUrlRequest;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :try_start_1
    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v2}, Lorg/chromium/net/impl/CronetUrlRequest;->access$200(Lorg/chromium/net/impl/CronetUrlRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    monitor-exit v1

    .line 126
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/chromium/net/impl/CronetUrlRequest;->access$302(Lorg/chromium/net/impl/CronetUrlRequest;Z)Z

    .line 121
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :try_start_2
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetUrlRequest;->access$500(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    iget-object v3, p0, Lorg/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v3}, Lorg/chromium/net/impl/CronetUrlRequest;->access$400(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/impl/UrlResponseInfoImpl;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest$OnReadCompletedRunnable;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v1, v0}, Lorg/chromium/net/impl/CronetUrlRequest;->access$600(Lorg/chromium/net/impl/CronetUrlRequest;Ljava/lang/Exception;)V

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method
