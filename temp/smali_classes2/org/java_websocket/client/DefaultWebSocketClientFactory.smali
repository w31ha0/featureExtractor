.class public Lorg/java_websocket/client/DefaultWebSocketClientFactory;
.super Ljava/lang/Object;
.source "DefaultWebSocketClientFactory.java"

# interfaces
.implements Lorg/java_websocket/client/WebSocketClient$WebSocketClientFactory;


# instance fields
.field private final webSocketClient:Lorg/java_websocket/client/WebSocketClient;


# direct methods
.method public constructor <init>(Lorg/java_websocket/client/WebSocketClient;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/java_websocket/client/DefaultWebSocketClientFactory;->webSocketClient:Lorg/java_websocket/client/WebSocketClient;

    .line 24
    return-void
.end method


# virtual methods
.method public createWebSocket(Lorg/java_websocket/WebSocketAdapter;Lorg/java_websocket/drafts/Draft;Ljava/net/Socket;)Lorg/java_websocket/WebSocket;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lorg/java_websocket/WebSocketImpl;

    iget-object v1, p0, Lorg/java_websocket/client/DefaultWebSocketClientFactory;->webSocketClient:Lorg/java_websocket/client/WebSocketClient;

    invoke-direct {v0, v1, p2}, Lorg/java_websocket/WebSocketImpl;-><init>(Lorg/java_websocket/WebSocketListener;Lorg/java_websocket/drafts/Draft;)V

    return-object v0
.end method

.method public wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;Ljava/lang/String;I)Ljava/nio/channels/ByteChannel;
    .locals 0

    .prologue
    .line 35
    if-nez p2, :cond_0

    .line 37
    :cond_0
    return-object p1
.end method
