.class Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;
.super Lorg/java_websocket/client/WebSocketClient;
.source "Channel.java"


# instance fields
.field private receiveSignal:Ljava/util/concurrent/CountDownLatch;

.field private response:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URI;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;->receiveSignal:Ljava/util/concurrent/CountDownLatch;

    .line 69
    return-void
.end method

.method private clearWebSocketSingleton()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/google/chromecast/background/Channel;->access$000()Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/google/chromecast/background/Channel;->access$000()Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;->close()V

    .line 75
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/chromecast/background/Channel;->access$002(Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;)Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;

    .line 76
    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Channel closed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/chromecast/background/Channel;->access$100(Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;->clearWebSocketSingleton()V

    .line 93
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Channel error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/chromecast/background/Channel;->access$100(Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;->clearWebSocketSingleton()V

    .line 99
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;->response:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;->receiveSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 87
    return-void
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 1

    .prologue
    .line 80
    const-string/jumbo v0, "Channel opened"

    invoke-static {v0}, Lcom/google/chromecast/background/Channel;->access$100(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public sendAndWaitAck(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 103
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;->receiveSignal:Ljava/util/concurrent/CountDownLatch;

    .line 104
    invoke-virtual {p0, p1}, Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;->send(Ljava/lang/String;)V

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;->receiveSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    const-string/jumbo v1, "ACK"

    iget-object v2, p0, Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;->response:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 120
    :goto_1
    return v0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 113
    :cond_0
    const-string/jumbo v1, "NACK"

    iget-object v2, p0, Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;->response:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    const-string/jumbo v0, "Background"

    const-string/jumbo v1, "Receiver is running in foreground"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x2

    goto :goto_1

    .line 118
    :cond_1
    const-string/jumbo v1, "Background"

    const-string/jumbo v2, "Got no response from receiver for 3 sec"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Lcom/google/chromecast/background/Channel$BlockingWebSocketClient;->clearWebSocketSingleton()V

    goto :goto_1
.end method
