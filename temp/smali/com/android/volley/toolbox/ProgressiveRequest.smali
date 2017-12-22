.class public abstract Lcom/android/volley/toolbox/ProgressiveRequest;
.super Lcom/android/volley/Request;
.source "ProgressiveRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG_CONTROL_NETWORK_SPEED:Z = false

.field private static final IO_SIZE:I = 0x2000

.field private static final SOCKET_READ_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "nf_download_prog_req"


# instance fields
.field private final mByteArray:[B

.field private mListener:Lcom/android/volley/toolbox/ProgressiveRequestListener;

.field private final mPriority:Lcom/android/volley/Request$Priority;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Request$Priority;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v3, p1, v0}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 49
    iput-object p2, p0, Lcom/android/volley/toolbox/ProgressiveRequest;->mPriority:Lcom/android/volley/Request$Priority;

    .line 50
    invoke-virtual {p0, v3}, Lcom/android/volley/toolbox/ProgressiveRequest;->setShouldCache(Z)V

    .line 51
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x2710

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/ProgressiveRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 52
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/volley/toolbox/ProgressiveRequest;->mByteArray:[B

    .line 53
    return-void
.end method

.method private closeResponse(Lcom/android/volley/NetworkResponse;)V
    .locals 2

    .prologue
    .line 117
    :try_start_0
    check-cast p1, Lcom/android/volley/toolbox/ProgressiveNetworkResponse;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ProgressiveNetworkResponse;->getHttpEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 122
    invoke-virtual {p0}, Lcom/android/volley/toolbox/ProgressiveRequest;->releaseResources()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 126
    const-string/jumbo v0, "Error occurred when calling consumingContent"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/volley/toolbox/ProgressiveRequest;->mListener:Lcom/android/volley/toolbox/ProgressiveRequestListener;

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p1}, Lcom/android/volley/toolbox/ProgressiveRequestListener;->onError(Lcom/android/volley/VolleyError;)V

    .line 149
    :cond_0
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/ProgressiveRequest;->deliverResponse(Ljava/lang/Void;)V

    return-void
.end method

.method protected deliverResponse(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/volley/toolbox/ProgressiveRequest;->mPriority:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected abstract onResponseStart(J)V
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/android/volley/toolbox/ProgressiveRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/ProgressiveRequest;->closeResponse(Lcom/android/volley/NetworkResponse;)V

    move-object v0, v1

    .line 71
    check-cast v0, Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 75
    :cond_0
    if-nez p1, :cond_2

    .line 76
    new-instance v0, Lcom/android/volley/VolleyError;

    const-string/jumbo v1, "Network response is null"

    invoke-direct {v0, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    .line 103
    :goto_1
    invoke-virtual {p0}, Lcom/android/volley/toolbox/ProgressiveRequest;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/volley/toolbox/ProgressiveRequest;->mListener:Lcom/android/volley/toolbox/ProgressiveRequestListener;

    .line 105
    if-eqz v1, :cond_1

    .line 106
    invoke-interface {v1}, Lcom/android/volley/toolbox/ProgressiveRequestListener;->onCancelled()V

    .line 109
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/ProgressiveRequest;->closeResponse(Lcom/android/volley/NetworkResponse;)V

    goto :goto_0

    .line 77
    :cond_2
    instance-of v0, p1, Lcom/android/volley/toolbox/ProgressiveNetworkResponse;

    if-nez v0, :cond_3

    .line 78
    new-instance v0, Lcom/android/volley/VolleyError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expecting ProgressiveNetworkResponse but got="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, p1

    .line 80
    check-cast v0, Lcom/android/volley/toolbox/ProgressiveNetworkResponse;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ProgressiveNetworkResponse;->getHttpEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/volley/toolbox/ProgressiveRequest;->onResponseStart(J)V

    .line 84
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 86
    :cond_4
    invoke-virtual {p0}, Lcom/android/volley/toolbox/ProgressiveRequest;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 87
    iget-object v1, p0, Lcom/android/volley/toolbox/ProgressiveRequest;->mByteArray:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 88
    iget-object v2, p0, Lcom/android/volley/toolbox/ProgressiveRequest;->mListener:Lcom/android/volley/toolbox/ProgressiveRequestListener;

    .line 89
    if-eqz v2, :cond_5

    .line 90
    iget-object v3, p0, Lcom/android/volley/toolbox/ProgressiveRequest;->mByteArray:[B

    invoke-interface {v2, v3, v1}, Lcom/android/volley/toolbox/ProgressiveRequestListener;->onNext([BI)V

    .line 92
    :cond_5
    if-gez v1, :cond_4

    .line 94
    :cond_6
    if-eqz v0, :cond_7

    .line 95
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 97
    :cond_7
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string/jumbo v1, "nf_download_prog_req"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseNetworkResponse I/O error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    new-instance v1, Lcom/android/volley/VolleyError;

    new-instance v2, Lcom/android/volley/NetworkError;

    invoke-direct {v2, v0}, Lcom/android/volley/NetworkError;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto/16 :goto_1
.end method

.method protected setProgressiveRequestListener(Lcom/android/volley/toolbox/ProgressiveRequestListener;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/volley/toolbox/ProgressiveRequest;->mListener:Lcom/android/volley/toolbox/ProgressiveRequestListener;

    .line 58
    return-void
.end method
