.class Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;
.super Landroid/os/Handler;
.source "NativeTransport.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;->this$0:Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;

    .line 222
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 223
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 232
    if-nez p1, :cond_0

    .line 233
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "Received null message!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 236
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "Received obj is NOT string in message!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;->this$0:Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;

    invoke-static {v1}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->access$000(Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;)Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;->this$0:Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;

    invoke-static {v1}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->access$000(Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;)Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->processUpdate(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_2
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "Unable to publish event, na not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
