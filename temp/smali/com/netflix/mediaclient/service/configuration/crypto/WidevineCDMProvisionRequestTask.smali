.class public final Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;
.super Landroid/os/AsyncTask;
.source "WidevineCDMProvisionRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CONNECTION_TIMEOUT:I = 0x1388

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0xbb8


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callback:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$WidewineProvisionCallback;

.field private connectionTimeout:I

.field private drmRequest:[B

.field private socketTimeout:I


# direct methods
.method public constructor <init>([BLcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$WidewineProvisionCallback;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    const-string/jumbo v0, "nf_net"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;->TAG:Ljava/lang/String;

    .line 48
    const/16 v0, 0x1388

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;->connectionTimeout:I

    .line 49
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;->socketTimeout:I

    .line 59
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;->drmRequest:[B

    .line 60
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;->callback:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$WidewineProvisionCallback;

    .line 61
    return-void
.end method

.method public constructor <init>([BLcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$WidewineProvisionCallback;II)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;-><init>([BLcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$WidewineProvisionCallback;)V

    .line 73
    iput p3, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;->connectionTimeout:I

    .line 74
    iput p4, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;->socketTimeout:I

    .line 75
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;->doInBackground([Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 80
    const/4 v0, 0x0

    .line 81
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 82
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&signedRequest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;->drmRequest:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    .line 84
    iget v5, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;->connectionTimeout:I

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 85
    iget v5, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;->socketTimeout:I

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 94
    :try_start_0
    const-string/jumbo v4, "Accept"

    const-string/jumbo v5, "*/*"

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v4, "User-Agent"

    const-string/jumbo v5, "Widevine CDM v1.0"

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v4, "Content-Type"

    const-string/jumbo v5, "application/json"

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 100
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 101
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_2

    .line 102
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 134
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 135
    const-string/jumbo v1, "nf_net"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "response length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;->callback:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$WidewineProvisionCallback;

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;->callback:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$WidewineProvisionCallback;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$WidewineProvisionCallback;->done([B)V

    .line 145
    :cond_1
    :goto_2
    return-object v0

    .line 103
    :cond_2
    const/16 v1, 0x190

    if-ne v2, v1, :cond_0

    .line 109
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "15002. Provisiong failed with status code 400 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;->callback:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$WidewineProvisionCallback;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineCDMProvisionRequestTask;->callback:Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$WidewineProvisionCallback;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/crypto/MSLWidevineCryptoManager$WidewineProvisionCallback;->abort()V
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    .line 124
    :catch_0
    move-exception v1

    .line 125
    :goto_3
    const-string/jumbo v4, "nf_net"

    const-string/jumbo v5, "Connection timeout"

    invoke-static {v4, v5, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    :catch_1
    move-exception v1

    move v2, v3

    .line 127
    :goto_4
    const-string/jumbo v4, "nf_net"

    const-string/jumbo v5, "Socket timeout"

    invoke-static {v4, v5, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 128
    :catch_2
    move-exception v1

    move v2, v3

    .line 129
    :goto_5
    const-string/jumbo v4, "nf_net"

    const-string/jumbo v5, "Request protocol failed"

    invoke-static {v4, v5, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 130
    :catch_3
    move-exception v1

    move v2, v3

    .line 131
    :goto_6
    const-string/jumbo v4, "nf_net"

    const-string/jumbo v5, "Request IO failed "

    invoke-static {v4, v5, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 137
    :cond_3
    const-string/jumbo v1, "nf_net"

    const-string/jumbo v4, "Response is null!"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to get provisiong certificate. Response is null from URL "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ". HTTP status code: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 130
    :catch_4
    move-exception v1

    goto :goto_6

    .line 128
    :catch_5
    move-exception v1

    goto :goto_5

    .line 126
    :catch_6
    move-exception v1

    goto :goto_4

    .line 124
    :catch_7
    move-exception v1

    move v2, v3

    goto :goto_3
.end method
