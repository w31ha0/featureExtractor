.class Lorg/chromium/net/impl/CronetUrlRequest$4;
.super Ljava/lang/Object;
.source "CronetUrlRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/net/impl/CronetUrlRequest;

.field final synthetic val$newLocation:Ljava/lang/String;

.field final synthetic val$responseInfo:Lorg/chromium/net/impl/UrlResponseInfoImpl;


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/impl/UrlResponseInfoImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequest$4;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    iput-object p2, p0, Lorg/chromium/net/impl/CronetUrlRequest$4;->val$responseInfo:Lorg/chromium/net/impl/UrlResponseInfoImpl;

    iput-object p3, p0, Lorg/chromium/net/impl/CronetUrlRequest$4;->val$newLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 509
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$4;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetUrlRequest;->checkCallingThread()V

    .line 510
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$4;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetUrlRequest;->access$100(Lorg/chromium/net/impl/CronetUrlRequest;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 511
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$4;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetUrlRequest;->access$200(Lorg/chromium/net/impl/CronetUrlRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    monitor-exit v1

    .line 522
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$4;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/chromium/net/impl/CronetUrlRequest;->access$1002(Lorg/chromium/net/impl/CronetUrlRequest;Z)Z

    .line 515
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$4;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetUrlRequest;->access$500(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest$4;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequest$4;->val$responseInfo:Lorg/chromium/net/impl/UrlResponseInfoImpl;

    iget-object v3, p0, Lorg/chromium/net/impl/CronetUrlRequest$4;->val$newLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest$4;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v1, v0}, Lorg/chromium/net/impl/CronetUrlRequest;->access$600(Lorg/chromium/net/impl/CronetUrlRequest;Ljava/lang/Exception;)V

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
