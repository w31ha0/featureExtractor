.class public abstract Lorg/apache/http/client/methods/HttpRequestBase;
.super Lorg/apache/http/message/AbstractHttpMessage;
.source "HttpRequestBase.java"

# interfaces
.implements Lorg/apache/http/client/methods/HttpUriRequest;
.implements Lorg/apache/http/client/methods/AbortableHttpRequest;
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private abortLock:Ljava/util/concurrent/locks/Lock;

.field private aborted:Z

.field private connRequest:Lorg/apache/http/conn/ClientConnectionRequest;

.field private releaseTrigger:Lorg/apache/http/conn/ConnectionReleaseTrigger;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/apache/http/message/AbstractHttpMessage;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    .line 69
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 4

    .prologue
    .line 139
    iget-object v2, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 141
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z

    .line 146
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->connRequest:Lorg/apache/http/conn/ClientConnectionRequest;

    .line 147
    .local v0, "localRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->releaseTrigger:Lorg/apache/http/conn/ConnectionReleaseTrigger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .local v1, "localTrigger":Lorg/apache/http/conn/ConnectionReleaseTrigger;
    iget-object v2, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 156
    if-eqz v0, :cond_2

    .line 157
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionRequest;->abortRequest()V

    .line 159
    :cond_2
    if-eqz v1, :cond_0

    .line 161
    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/conn/ConnectionReleaseTrigger;->abortConnection()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v2

    goto :goto_0

    .line 149
    .end local v0    # "localRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .end local v1    # "localTrigger":Lorg/apache/http/conn/ConnectionReleaseTrigger;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    .line 175
    .local v0, "clone":Lorg/apache/http/client/methods/HttpRequestBase;
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, v0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z

    .line 177
    iput-object v2, v0, Lorg/apache/http/client/methods/HttpRequestBase;->releaseTrigger:Lorg/apache/http/conn/ConnectionReleaseTrigger;

    .line 178
    iput-object v2, v0, Lorg/apache/http/client/methods/HttpRequestBase;->connRequest:Lorg/apache/http/conn/ClientConnectionRequest;

    .line 179
    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-static {v1}, Lorg/apache/http/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/HeaderGroup;

    iput-object v1, v0, Lorg/apache/http/client/methods/HttpRequestBase;->headergroup:Lorg/apache/http/message/HeaderGroup;

    .line 180
    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v1}, Lorg/apache/http/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/params/HttpParams;

    iput-object v1, v0, Lorg/apache/http/client/methods/HttpRequestBase;->params:Lorg/apache/http/params/HttpParams;

    .line 181
    return-object v0
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getRequestLine()Lorg/apache/http/RequestLine;
    .locals 5

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "method":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    .line 90
    .local v3, "ver":Lorg/apache/http/ProtocolVersion;
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 91
    .local v1, "uri":Ljava/net/URI;
    const/4 v2, 0x0

    .line 92
    .local v2, "uritext":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v2

    .line 95
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 96
    :cond_1
    const-string v2, "/"

    .line 98
    :cond_2
    new-instance v4, Lorg/apache/http/message/BasicRequestLine;

    invoke-direct {v4, v0, v2, v3}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    return-object v4
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public isAborted()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z

    return v0
.end method

.method public setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V
    .locals 2
    .param p1, "connRequest"    # Lorg/apache/http/conn/ClientConnectionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 109
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Request already aborted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->releaseTrigger:Lorg/apache/http/conn/ConnectionReleaseTrigger;

    .line 114
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->connRequest:Lorg/apache/http/conn/ClientConnectionRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 118
    return-void
.end method

.method public setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V
    .locals 2
    .param p1, "releaseTrigger"    # Lorg/apache/http/conn/ConnectionReleaseTrigger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Request already aborted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->connRequest:Lorg/apache/http/conn/ClientConnectionRequest;

    .line 129
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->releaseTrigger:Lorg/apache/http/conn/ConnectionReleaseTrigger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 133
    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->uri:Ljava/net/URI;

    .line 103
    return-void
.end method
