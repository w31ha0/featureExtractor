.class Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;
.super Lorg/chromium/net/UrlRequest$Callback;
.source "CronetHttpURLConnection.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;


# direct methods
.method public constructor <init>(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    return-void
.end method

.method private setResponseDataCompleted(Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$1000(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Lorg/chromium/net/urlconnection/CronetInputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$1000(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Lorg/chromium/net/urlconnection/CronetInputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/net/urlconnection/CronetInputStream;->setResponseDataCompleted(Ljava/io/IOException;)V

    .line 510
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$1100(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Lorg/chromium/net/urlconnection/CronetOutputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$1100(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Lorg/chromium/net/urlconnection/CronetOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/net/urlconnection/CronetOutputStream;->setRequestCompleted(Ljava/io/IOException;)V

    .line 513
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$102(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;Z)Z

    .line 514
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$200(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Lorg/chromium/net/urlconnection/MessageLoop;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/urlconnection/MessageLoop;->quit()V

    .line 515
    return-void
.end method


# virtual methods
.method public onCanceled(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0, p2}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$002(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;

    .line 497
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->setResponseDataCompleted(Ljava/io/IOException;)V

    .line 498
    return-void
.end method

.method public onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 2

    .prologue
    .line 485
    if-nez p3, :cond_0

    .line 486
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Exception cannot be null in onFailed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0, p2}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$002(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;

    .line 490
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0, p3}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$902(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;Lorg/chromium/net/CronetException;)Lorg/chromium/net/CronetException;

    .line 491
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$900(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Lorg/chromium/net/CronetException;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->setResponseDataCompleted(Ljava/io/IOException;)V

    .line 492
    return-void
.end method

.method public onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0, p2}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$002(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;

    .line 450
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$200(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Lorg/chromium/net/urlconnection/MessageLoop;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/urlconnection/MessageLoop;->quit()V

    .line 451
    return-void
.end method

.method public onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$302(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;Z)Z

    .line 458
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v2}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$400(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 460
    iget-object v2, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v2}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$500(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    iget-object v2, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v2, v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$602(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;Ljava/net/URL;)Ljava/net/URL;

    .line 465
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$700(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 466
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$800(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Lorg/chromium/net/UrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->followRedirect()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v0

    .line 472
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0, p2}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$002(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;

    .line 473
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$800(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Lorg/chromium/net/UrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->cancel()V

    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->setResponseDataCompleted(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0, p2}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$002(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;

    .line 441
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$102(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;Z)Z

    .line 443
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$200(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Lorg/chromium/net/urlconnection/MessageLoop;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/urlconnection/MessageLoop;->quit()V

    .line 444
    return-void
.end method

.method public onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0, p2}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->access$002(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;

    .line 480
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->setResponseDataCompleted(Ljava/io/IOException;)V

    .line 481
    return-void
.end method
