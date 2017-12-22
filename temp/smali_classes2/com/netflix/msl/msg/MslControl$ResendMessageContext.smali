.class Lcom/netflix/msl/msg/MslControl$ResendMessageContext;
.super Lcom/netflix/msl/msg/MslControl$FilterMessageContext;
.source "MslControl.java"


# instance fields
.field private final payloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/msl/msg/PayloadChunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/msl/msg/PayloadChunk;",
            ">;",
            "Lcom/netflix/msl/msg/MessageContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 641
    invoke-direct {p0, p2}, Lcom/netflix/msl/msg/MslControl$FilterMessageContext;-><init>(Lcom/netflix/msl/msg/MessageContext;)V

    .line 642
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;->payloads:Ljava/util/List;

    .line 643
    return-void
.end method


# virtual methods
.method public write(Lcom/netflix/msl/msg/MessageOutputStream;)V
    .locals 3

    .prologue
    .line 652
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;->payloads:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;->payloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;->appCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0, p1}, Lcom/netflix/msl/msg/MessageContext;->write(Lcom/netflix/msl/msg/MessageOutputStream;)V

    .line 666
    :cond_1
    return-void

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;->payloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/msg/PayloadChunk;

    .line 659
    invoke-virtual {v0}, Lcom/netflix/msl/msg/PayloadChunk;->getCompressionAlgo()Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/msl/msg/MessageOutputStream;->setCompressionAlgorithm(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;)Z

    .line 660
    invoke-virtual {v0}, Lcom/netflix/msl/msg/PayloadChunk;->getData()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/msl/msg/MessageOutputStream;->write([B)V

    .line 661
    invoke-virtual {v0}, Lcom/netflix/msl/msg/PayloadChunk;->isEndOfMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 662
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V

    goto :goto_0

    .line 664
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageOutputStream;->flush()V

    goto :goto_0
.end method
