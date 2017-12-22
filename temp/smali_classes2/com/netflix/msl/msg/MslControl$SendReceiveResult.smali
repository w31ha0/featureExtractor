.class Lcom/netflix/msl/msg/MslControl$SendReceiveResult;
.super Lcom/netflix/msl/msg/MslControl$SendResult;
.source "MslControl.java"


# instance fields
.field public final response:Lcom/netflix/msl/msg/MessageInputStream;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MslControl$SendResult;)V
    .locals 3

    .prologue
    .line 1807
    iget-object v0, p2, Lcom/netflix/msl/msg/MslControl$SendResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    iget-boolean v1, p2, Lcom/netflix/msl/msg/MslControl$SendResult;->handshake:Z

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/msl/msg/MslControl$SendResult;-><init>(Lcom/netflix/msl/msg/MessageOutputStream;ZLcom/netflix/msl/msg/MslControl$1;)V

    .line 1808
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->response:Lcom/netflix/msl/msg/MessageInputStream;

    .line 1809
    return-void
.end method
