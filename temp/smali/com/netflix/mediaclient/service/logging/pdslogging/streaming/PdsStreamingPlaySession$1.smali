.class Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$1;
.super Ljava/lang/Object;
.source "PdsStreamingPlaySession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$1;->this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$1;->this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->access$000(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;)Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;->STOPPED:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$1;->this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->access$000(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;)Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;->STARTING:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$PlayState;

    if-ne v0, v1, :cond_1

    .line 345
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ignore posting keepAlive - stop already sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$1;->this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->access$100(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;)V

    .line 349
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession$1;->this$0:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;

    const v1, 0xea60

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;->access$200(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsStreamingPlaySession;I)V

    goto :goto_0
.end method
