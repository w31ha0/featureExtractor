.class public final Lorg/apache/http/conn/MultihomePlainSocketFactory;
.super Ljava/lang/Object;
.source "MultihomePlainSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lorg/apache/http/conn/MultihomePlainSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lorg/apache/http/conn/MultihomePlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/MultihomePlainSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/http/conn/MultihomePlainSocketFactory;->DEFAULT_FACTORY:Lorg/apache/http/conn/MultihomePlainSocketFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static getSocketFactory()Lorg/apache/http/conn/MultihomePlainSocketFactory;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lorg/apache/http/conn/MultihomePlainSocketFactory;->DEFAULT_FACTORY:Lorg/apache/http/conn/MultihomePlainSocketFactory;

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 13
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .param p6, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    if-nez p2, :cond_0

    .line 111
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Target host may not be null."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 113
    :cond_0
    if-nez p6, :cond_1

    .line 114
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Parameters may not be null."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 117
    :cond_1
    if-nez p1, :cond_2

    .line 118
    invoke-virtual {p0}, Lorg/apache/http/conn/MultihomePlainSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    .line 120
    :cond_2
    if-nez p4, :cond_3

    if-lez p5, :cond_5

    .line 123
    :cond_3
    if-gez p5, :cond_4

    .line 124
    const/16 p5, 0x0

    .line 126
    :cond_4
    new-instance v6, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v6, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 128
    .local v6, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {p1, v6}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 131
    .end local v6    # "isa":Ljava/net/InetSocketAddress;
    :cond_5
    invoke-static/range {p6 .. p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v9

    .line 133
    .local v9, "timeout":I
    invoke-static {p2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v5

    .line 134
    .local v5, "inetadrs":[Ljava/net/InetAddress;
    new-instance v2, Ljava/util/ArrayList;

    array-length v10, v5

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 138
    const/4 v7, 0x0

    .line 139
    .local v7, "lastEx":Ljava/io/IOException;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    .line 141
    .local v8, "remoteAddress":Ljava/net/InetAddress;
    :try_start_0
    new-instance v10, Ljava/net/InetSocketAddress;

    move/from16 v0, p3

    invoke-direct {v10, v8, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v10, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    .end local v8    # "remoteAddress":Ljava/net/InetAddress;
    :cond_6
    if-eqz v7, :cond_7

    .line 153
    throw v7

    .line 143
    .restart local v8    # "remoteAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v3

    .line 144
    .local v3, "ex":Ljava/net/SocketTimeoutException;
    new-instance v10, Lorg/apache/http/conn/ConnectTimeoutException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connect to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " timed out"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 145
    .end local v3    # "ex":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v3

    .line 147
    .local v3, "ex":Ljava/io/IOException;
    new-instance p1, Ljava/net/Socket;

    .end local p1    # "sock":Ljava/net/Socket;
    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    .line 149
    .restart local p1    # "sock":Ljava/net/Socket;
    move-object v7, v3

    .line 150
    goto :goto_0

    .line 155
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v8    # "remoteAddress":Ljava/net/InetAddress;
    :cond_7
    return-object p1
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/net/Socket;

    if-eq v0, v1, :cond_1

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
