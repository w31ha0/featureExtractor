.class Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;
.super Ljava/lang/Object;
.source "MslUrlHttpURLConnectionImpl.java"

# interfaces
.implements Lcom/netflix/msl/io/Url$Connection;


# instance fields
.field private mURLConnection:Ljava/net/HttpURLConnection;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 130
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;->this$0:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-static {p1}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->access$100(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 132
    invoke-static {p1}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->access$100(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->shouldUseAndroidHttpStack()Z

    move-result v1

    invoke-static {p1}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->access$200(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)Ljava/net/URL;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/net/HttpURLConnectionUtils;->createHttpURLConnection(Landroid/content/Context;ZLjava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 134
    invoke-static {p1}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->access$300(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->access$300(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    invoke-static {p1}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->access$300(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->access$300(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->access$400(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->access$400(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->access$400(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;->mURLConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 153
    const-string/jumbo v0, "https"

    invoke-static {p1}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->access$200(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->access$500(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;->mURLConnection:Ljava/net/HttpURLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->access$500(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 157
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;->mURLConnection:Ljava/net/HttpURLConnection;

    return-object v0
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
