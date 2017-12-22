.class Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$1;
.super Ljava/lang/Object;
.source "DiagnosisAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

.field final synthetic val$urlNetworkState:Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$1;->this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$1;->val$urlNetworkState:Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 97
    const/4 v4, 0x0

    .line 98
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    .line 101
    const/4 v1, 0x1

    .line 103
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$1;->val$urlNetworkState:Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 106
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 108
    :cond_0
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 109
    if-gez v6, :cond_0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    move v1, v3

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$1;->val$urlNetworkState:Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->setErrorGroup(I)V

    .line 132
    iget-object v2, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$1;->val$urlNetworkState:Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->setErrorCode(I)V

    .line 133
    iget-object v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$1;->val$urlNetworkState:Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->setSuccess(Z)V

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$1;->val$urlNetworkState:Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    sget-object v1, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->COMPLETED:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->setStatus(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;)V

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$1;->this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->access$000(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)V

    .line 136
    return-void

    .line 114
    :catch_0
    move-exception v0

    move-object v1, v4

    .line 115
    :goto_1
    :try_start_2
    const-string/jumbo v3, "nf_service_diagnosisagent"

    const-string/jumbo v4, "invalid URL:"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_MALFORMED_URL_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    .line 127
    if-eqz v1, :cond_2

    .line 128
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move v1, v0

    move v3, v0

    move v0, v2

    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    .line 121
    :goto_2
    :try_start_3
    const-string/jumbo v1, "nf_service_diagnosisagent"

    const-string/jumbo v3, "IOError:"

    invoke-static {v1, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NET_NETWORK_IO_EXCEPTION:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 127
    if-eqz v4, :cond_2

    .line 128
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move v1, v0

    move v3, v0

    move v0, v2

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v4, :cond_1

    .line 128
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0

    .line 127
    :catchall_1
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v1

    goto :goto_3

    .line 120
    :catch_2
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_2

    .line 114
    :catch_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1

    :cond_2
    move v1, v0

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    move v1, v3

    goto :goto_0
.end method
