.class Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;
.super Landroid/os/Handler;
.source "TargetStateManagerV2.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const/16 v9, 0x68

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 33
    iget v0, p1, Landroid/os/Message;->what:I

    .line 34
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$000(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string/jumbo v1, "MdxTargetStateV2"

    const-string/jumbo v2, "(%d) stateId %s, eventId %d"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$100(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getId()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 42
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$2;->$SwitchMap$com$netflix$mediaclient$service$mdx$protocol$target$TargetStateDef$StateId:[I

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$100(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getId()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$StateId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 46
    :pswitch_0
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->start:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$200(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->hasPair()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateStartSession:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateAcquirePair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto :goto_0

    .line 55
    :pswitch_1
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageRequested:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto :goto_0

    .line 57
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->PeriodicStateCheck:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$400(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$500(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)V

    goto/16 :goto_0

    .line 62
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$600(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const-string/jumbo v1, "MdxTargetStateV2"

    const-string/jumbo v2, "event %d, %d not handled @%s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$100(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 67
    :pswitch_2
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->PairSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateStartSession:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto/16 :goto_0

    .line 69
    :cond_6
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->PairFail:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$700(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$200(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->supportRegpair()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateRegPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto/16 :goto_0

    .line 74
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$200(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    const-string/jumbo v1, "TODO: pairing error"

    invoke-virtual {v0, v9, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->reportError(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$800(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$200(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->isForceSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$200(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    const-string/jumbo v1, "pairing error after retry."

    invoke-virtual {v0, v9, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->reportError(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :pswitch_3
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->PairSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateStartSession:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto/16 :goto_0

    .line 89
    :cond_9
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->PairFail:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$200(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->isForceSelect()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$200(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    const-string/jumbo v1, "TODO: regpair error"

    invoke-virtual {v0, v9, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->reportError(ILjava/lang/String;)V

    .line 93
    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto/16 :goto_0

    .line 97
    :pswitch_4
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->StartSessionSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$702(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Z)Z

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateHandShake:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$500(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)V

    goto/16 :goto_0

    .line 101
    :cond_b
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$600(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const-string/jumbo v1, "MdxTargetStateV2"

    const-string/jumbo v2, "event %d not handled @%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$100(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 106
    :pswitch_5
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->HandShakeSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$200(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->hasPendingMessage()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto/16 :goto_0

    .line 110
    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateSessionReady:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto/16 :goto_0

    .line 118
    :cond_d
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$600(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const-string/jumbo v1, "MdxTargetStateV2"

    const-string/jumbo v2, "event %d not handled @%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$100(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 123
    :pswitch_6
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->MessageReceived:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p1, Landroid/os/Message;->arg1:I

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_CAPABILITY:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    iget v2, v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->value:I

    if-ne v1, v2, :cond_f

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$200(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->hasPendingMessage()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto/16 :goto_0

    .line 128
    :cond_e
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateSessionReady:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto/16 :goto_0

    .line 132
    :cond_f
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$600(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    const-string/jumbo v1, "MdxTargetStateV2"

    const-string/jumbo v2, "event %d, %d not handled @%s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$100(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 137
    :pswitch_7
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->MessageReceived:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, p1, Landroid/os/Message;->arg1:I

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_CURRENT_STATE:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    iget v2, v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->value:I

    if-ne v1, v2, :cond_11

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$200(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->hasPendingMessage()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto/16 :goto_0

    .line 142
    :cond_10
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateSessionReady:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto/16 :goto_0

    .line 144
    :cond_11
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$600(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    const-string/jumbo v1, "MdxTargetStateV2"

    const-string/jumbo v2, "event %d, %d not handled @%s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$100(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 149
    :pswitch_8
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->SendMessageSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->isSame(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$200(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->pendingMessageSent()V

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$200(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->hasPendingMessage()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto/16 :goto_0

    .line 154
    :cond_12
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->StateSessionReady:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$300(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;)V

    goto/16 :goto_0

    .line 156
    :cond_13
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$600(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    const-string/jumbo v1, "MdxTargetStateV2"

    const-string/jumbo v2, "event %d, %d not handled @%s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2$1;->this$0:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;->access$100(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateManagerV2;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetState;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
