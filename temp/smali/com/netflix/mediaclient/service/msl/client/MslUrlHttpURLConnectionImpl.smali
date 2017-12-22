.class public Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;
.super Ljava/lang/Object;
.source "MslUrlHttpURLConnectionImpl.java"

# interfaces
.implements Lcom/netflix/msl/io/Url;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_msl_net"


# instance fields
.field private mConfiguration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private mConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mTimeout:I

.field private mUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/net/URL;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/net/URL;Ljava/util/Map;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/net/URL;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mTimeout:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mConnections:Ljava/util/List;

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ConfigurationAgent is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    if-nez p2, :cond_1

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "URL is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    iput-object p2, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mUrl:Ljava/net/URL;

    .line 76
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mConfiguration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 77
    iput-object p3, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mHeaders:Ljava/util/Map;

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mConfiguration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mTimeout:I

    return v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method


# virtual methods
.method public openConnection()Lcom/netflix/msl/io/Url$Connection;
    .locals 7

    .prologue
    .line 93
    .line 95
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mConnections:Ljava/util/List;

    monitor-enter v1

    .line 96
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;-><init>(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;)V

    .line 97
    const-string/jumbo v2, "nf_msl_net"

    const-string/jumbo v3, "MSL opened connection, total count on MSL connections on this URL %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 98
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mConnections:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    monitor-exit v1

    .line 101
    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 6

    .prologue
    .line 109
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mConnections:Ljava/util/List;

    monitor-enter v1

    .line 111
    :try_start_0
    const-string/jumbo v0, "nf_msl_net"

    const-string/jumbo v2, "Releasing %d MSL opened connection(s)..."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mConnections:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;

    .line 114
    invoke-static {v0}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;->access$000(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;)Ljava/net/HttpURLConnection;

    move-result-object v3

    if-nez v3, :cond_0

    .line 115
    const-string/jumbo v0, "nf_msl_net"

    const-string/jumbo v3, "Missing HTTP connection! Unable to disconnect!"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 118
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;->access$000(Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl$HttpConnection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    const-string/jumbo v0, "nf_msl_net"

    const-string/jumbo v2, "Releasing MSL opened connection(s) done."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    return-void
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 88
    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->mTimeout:I

    .line 84
    return-void
.end method
