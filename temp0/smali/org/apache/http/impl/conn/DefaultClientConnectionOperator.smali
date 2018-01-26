.class public Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;
.super Ljava/lang/Object;
.source "DefaultClientConnectionOperator.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionOperator;


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field protected final schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 2
    .param p1, "schemes"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->log:Lorg/apache/commons/logging/Log;

    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme registry amy not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 102
    return-void
.end method


# virtual methods
.method public createConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnection;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/DefaultClientConnection;-><init>()V

    return-object v0
.end method

.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 18
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "local"    # Ljava/net/InetAddress;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p5, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 115
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Connection may not be null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 117
    :cond_0
    if-nez p2, :cond_1

    .line 118
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Target host may not be null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 120
    :cond_1
    if-nez p5, :cond_2

    .line 121
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Parameters may not be null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 123
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 124
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Connection must not be open"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 127
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v12

    .line 128
    .local v12, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v12}, Lorg/apache/http/conn/scheme/Scheme;->getSchemeSocketFactory()Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    move-result-object v13

    .line 130
    .local v13, "sf":Lorg/apache/http/conn/scheme/SchemeSocketFactory;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->resolveHostname(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    .line 131
    .local v4, "addresses":[Ljava/net/InetAddress;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v15

    invoke-virtual {v12, v15}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v10

    .line 132
    .local v10, "port":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v15, v4

    if-ge v7, v15, :cond_7

    .line 133
    aget-object v3, v4, v7

    .line 134
    .local v3, "address":Ljava/net/InetAddress;
    array-length v15, v4

    add-int/lit8 v15, v15, -0x1

    if-ne v7, v15, :cond_8

    const/4 v8, 0x1

    .line 136
    .local v8, "last":Z
    :goto_1
    move-object/from16 v0, p5

    invoke-interface {v13, v0}, Lorg/apache/http/conn/scheme/SchemeSocketFactory;->createSocket(Lorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v14

    .line 137
    .local v14, "sock":Ljava/net/Socket;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v14, v1}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 139
    new-instance v11, Lorg/apache/http/impl/conn/HttpInetSocketAddress;

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v3, v10}, Lorg/apache/http/impl/conn/HttpInetSocketAddress;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;I)V

    .line 140
    .local v11, "remoteAddress":Ljava/net/InetSocketAddress;
    const/4 v9, 0x0

    .line 141
    .local v9, "localAddress":Ljava/net/InetSocketAddress;
    if-eqz p3, :cond_4

    .line 142
    new-instance v9, Ljava/net/InetSocketAddress;

    .end local v9    # "localAddress":Ljava/net/InetSocketAddress;
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-direct {v9, v0, v15}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 144
    .restart local v9    # "localAddress":Ljava/net/InetSocketAddress;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v15}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 145
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->log:Lorg/apache/commons/logging/Log;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Connecting to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 148
    :cond_5
    :try_start_0
    move-object/from16 v0, p5

    invoke-interface {v13, v14, v11, v9, v0}, Lorg/apache/http/conn/scheme/SchemeSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v5

    .line 149
    .local v5, "connsock":Ljava/net/Socket;
    if-eq v14, v5, :cond_6

    .line 150
    move-object v14, v5

    .line 151
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v14, v1}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 153
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v14, v1, v2}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 154
    invoke-interface {v13, v14}, Lorg/apache/http/conn/scheme/SchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v15

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-interface {v0, v15, v1}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v5    # "connsock":Ljava/net/Socket;
    .end local v8    # "last":Z
    .end local v9    # "localAddress":Ljava/net/InetSocketAddress;
    .end local v11    # "remoteAddress":Ljava/net/InetSocketAddress;
    .end local v14    # "sock":Ljava/net/Socket;
    :cond_7
    return-void

    .line 134
    .restart local v3    # "address":Ljava/net/InetAddress;
    :cond_8
    const/4 v8, 0x0

    goto :goto_1

    .line 156
    .restart local v8    # "last":Z
    .restart local v9    # "localAddress":Ljava/net/InetSocketAddress;
    .restart local v11    # "remoteAddress":Ljava/net/InetSocketAddress;
    .restart local v14    # "sock":Ljava/net/Socket;
    :catch_0
    move-exception v6

    .line 157
    .local v6, "ex":Ljava/net/ConnectException;
    if-eqz v8, :cond_9

    .line 158
    new-instance v15, Lorg/apache/http/conn/HttpHostConnectException;

    move-object/from16 v0, p2

    invoke-direct {v15, v0, v6}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v15

    .line 160
    .end local v6    # "ex":Ljava/net/ConnectException;
    :catch_1
    move-exception v6

    .line 161
    .local v6, "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    if-eqz v8, :cond_9

    .line 162
    throw v6

    .line 165
    .end local v6    # "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v15}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 166
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->log:Lorg/apache/commons/logging/Log;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Connect to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " timed out. "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "Connection will be retried using another IP address"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 132
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method protected prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getTcpNoDelay(Lorg/apache/http/params/HttpParams;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 223
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 225
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getLinger(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 226
    .local v0, "linger":I
    if-ltz v0, :cond_0

    .line 227
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 229
    :cond_0
    return-void

    .line 227
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected resolveHostname(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 8
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p4, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connection may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 180
    :cond_0
    if-nez p2, :cond_1

    .line 181
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Target host may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 183
    :cond_1
    if-nez p4, :cond_2

    .line 184
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Parameters may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_3

    .line 187
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Connection must be open"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 190
    :cond_3
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    .line 191
    .local v2, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSchemeSocketFactory()Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;

    if-nez v4, :cond_4

    .line 192
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target scheme ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") must have layered socket factory."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 197
    :cond_4
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSchemeSocketFactory()Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;

    .line 200
    .local v1, "lsf":Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    const/4 v7, 0x1

    invoke-interface {v1, v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 205
    .local v3, "sock":Ljava/net/Socket;
    invoke-virtual {p0, v3, p3, p4}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 206
    invoke-interface {v1, v3}, Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v4

    invoke-interface {p1, v3, p2, v4, p4}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 207
    return-void

    .line 202
    .end local v3    # "sock":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "ex":Ljava/net/ConnectException;
    new-instance v4, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v4, p2, v0}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v4
.end method
