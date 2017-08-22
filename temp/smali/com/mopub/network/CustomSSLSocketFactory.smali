.class public Lcom/mopub/network/CustomSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "CustomSSLSocketFactory.java"


# instance fields
.field private mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    return-void
.end method

.method private doManualServerNameIdentification(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "host"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 156
    iget-object v1, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_0

    .line 157
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_0
    instance-of v1, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 161
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 162
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    check-cast v1, Landroid/net/SSLCertificateSocketFactory;

    invoke-static {v1, v0, p2}, Lcom/mopub/network/CustomSSLSocketFactory;->setHostnameOnSocket(Landroid/net/SSLCertificateSocketFactory;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 164
    invoke-static {v0, p2}, Lcom/mopub/network/CustomSSLSocketFactory;->verifyServerName(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 166
    .end local v0    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_1
    return-void
.end method

.method private enableTlsIfAvailable(Ljava/net/Socket;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 207
    instance-of v2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 208
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 209
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "supportedProtocols":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 214
    .end local v0    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v1    # "supportedProtocols":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getDefault(I)Lcom/mopub/network/CustomSSLSocketFactory;
    .locals 2
    .param p0, "handshakeTimeoutMillis"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/mopub/network/CustomSSLSocketFactory;

    invoke-direct {v0}, Lcom/mopub/network/CustomSSLSocketFactory;-><init>()V

    .line 37
    .local v0, "factory":Lcom/mopub/network/CustomSSLSocketFactory;
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 39
    return-object v0
.end method

.method static setHostnameOnSocket(Landroid/net/SSLCertificateSocketFactory;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 3
    .param p0, "certificateSocketFactory"    # Landroid/net/SSLCertificateSocketFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "host"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 175
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 176
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 178
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 179
    invoke-virtual {p0, p1, p2}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 189
    :goto_0
    return-void

    .line 182
    :cond_0
    :try_start_0
    new-instance v1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v2, "setHostname"

    invoke-direct {v1, p1, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Ljava/lang/String;

    .line 183
    invoke-virtual {v1, v2, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unable to call setHostname() on the socket"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static verifyServerName(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 3
    .param p0, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "host"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 200
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    .line 201
    .local v0, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "Server Name Identification failed."

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v1, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 51
    .local v0, "socket":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    .line 52
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v1, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    .line 61
    .local v0, "socket":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    .line 62
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localhost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v1, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 71
    .local v0, "socket":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    .line 72
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v1, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 81
    .local v0, "socket":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    .line 82
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localhost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v1, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 91
    .local v0, "socket":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    .line 92
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 4
    .param p1, "socketParam"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v2, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_0

    .line 116
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_2

    .line 124
    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 129
    invoke-static {p2}, Lcom/mopub/network/InetAddressUtils;->getInetAddressByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 128
    invoke-virtual {v2, v3, p3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 130
    .local v0, "socket":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    .line 131
    invoke-direct {p0, v0, p2}, Lcom/mopub/network/CustomSSLSocketFactory;->doManualServerNameIdentification(Ljava/net/Socket;Ljava/lang/String;)V

    move-object v1, v0

    .line 138
    .end local v0    # "socket":Ljava/net/Socket;
    .local v1, "socket":Ljava/net/Socket;
    :goto_0
    return-object v1

    .line 135
    .end local v1    # "socket":Ljava/net/Socket;
    :cond_2
    iget-object v2, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .line 137
    .restart local v0    # "socket":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    move-object v1, v0

    .line 138
    .end local v0    # "socket":Ljava/net/Socket;
    .restart local v1    # "socket":Ljava/net/Socket;
    goto :goto_0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 110
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method setCertificateSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    iput-object p1, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 220
    return-void
.end method
