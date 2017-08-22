.class public Lvpadn/am;
.super Landroid/os/AsyncTask;
.source "VponImpressionAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Lvpadn/aj;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lvpadn/ar;

.field private c:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object v0, p0, Lvpadn/am;->a:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lvpadn/am;->c:Ljava/lang/String;

    .line 38
    const-class v1, Lvpadn/am;

    monitor-enter v1

    .line 39
    :try_start_0
    iput-object p1, p0, Lvpadn/am;->a:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Lvpadn/ar;

    iput-object v0, p0, Lvpadn/am;->b:Lvpadn/ar;

    .line 41
    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lvpadn/am;->c:Ljava/lang/String;

    .line 42
    monitor-exit v1

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a()Lvpadn/aj;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 90
    :try_start_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 92
    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 93
    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 94
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 96
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 97
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 98
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 100
    new-instance v2, Ljava/net/URI;

    iget-object v3, p0, Lvpadn/am;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 102
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 104
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 105
    invoke-static {v1}, Lvpadn/bh;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 107
    iget-object v0, p0, Lvpadn/am;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lvpadn/bf;->a(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 109
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v4, "http.useragent"

    iget-object v5, p0, Lvpadn/am;->c:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 110
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 111
    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 113
    iget-object v2, p0, Lvpadn/am;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lvpadn/bf;->b(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 115
    invoke-virtual {v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->closeExpiredConnections()V

    .line 116
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 117
    const-string v1, "VponImpressionAsyncTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send impression but status code of HttpResponse is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, -0x1

    invoke-static {v0}, Lvpadn/aj;->a(I)Lvpadn/aj;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lvpadn/aj;->a(I)Lvpadn/aj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const-string v1, "VponImpressionAsyncTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send Impression return Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {v6}, Lvpadn/aj;->a(I)Lvpadn/aj;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Lvpadn/aj;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lvpadn/am;->a()Lvpadn/aj;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lvpadn/aj;)V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lvpadn/am$1;->a:[I

    invoke-virtual {p1}, Lvpadn/aj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 61
    iget-object v0, p0, Lvpadn/am;->b:Lvpadn/ar;

    invoke-interface {v0, p1}, Lvpadn/ar;->onVponBannerImpressionFailed(Lvpadn/aj;)V

    .line 65
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lvpadn/am;->b:Lvpadn/ar;

    invoke-interface {v0, p1}, Lvpadn/ar;->onVponBannerImpression(Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lvpadn/am;->a([Ljava/lang/Object;)Lvpadn/aj;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lvpadn/am;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    .line 71
    sget-object v1, Lvpadn/am$1;->b:[I

    invoke-virtual {v0}, Landroid/os/AsyncTask$Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 74
    :pswitch_0
    const-string v0, "VponImpressionAsyncTask"

    const-string v1, "onCancelled() PENDING"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :pswitch_1
    const-string v0, "VponImpressionAsyncTask"

    const-string v1, "onCancelled() FINISHED"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :pswitch_2
    const-string v0, "VponImpressionAsyncTask"

    const-string v1, "onCancelled() RUNNING"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lvpadn/aj;

    invoke-virtual {p0, p1}, Lvpadn/am;->a(Lvpadn/aj;)V

    return-void
.end method
