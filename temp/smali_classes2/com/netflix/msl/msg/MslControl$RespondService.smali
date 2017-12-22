.class Lcom/netflix/msl/msg/MslControl$RespondService;
.super Ljava/lang/Object;
.source "MslControl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/netflix/msl/msg/MslControl$MslChannel;",
        ">;"
    }
.end annotation


# instance fields
.field private final ctx:Lcom/netflix/msl/util/MslContext;

.field private final in:Ljava/io/InputStream;

.field private final msgCtx:Lcom/netflix/msl/msg/MessageContext;

.field private final out:Ljava/io/OutputStream;

.field private final request:Lcom/netflix/msl/msg/MessageInputStream;

.field final synthetic this$0:Lcom/netflix/msl/msg/MslControl;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageInputStream;I)V
    .locals 2

    .prologue
    .line 2542
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2543
    invoke-virtual {p6}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2544
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Respond service created for an error message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2545
    :cond_0
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 2546
    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    .line 2547
    iput-object p4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->in:Ljava/io/InputStream;

    .line 2548
    iput-object p5, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    .line 2549
    iput-object p6, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    .line 2550
    iput p7, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->timeout:I

    .line 2551
    return-void
.end method

.method private peerToPeerExecute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;I)Lcom/netflix/msl/msg/MslControl$MslChannel;
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 2655
    invoke-interface {p1}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v2

    .line 2656
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v3

    .line 2661
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 2662
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    move-object v0, v9

    .line 2755
    :goto_0
    return-object v0

    .line 2669
    :cond_0
    invoke-interface {p1}, Lcom/netflix/msl/msg/MessageContext;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageBuilder;->getKeyExchangeData()Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2672
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 2674
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->access$1100(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 2675
    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v6

    .line 2676
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lcom/netflix/msl/MslError;->RESPONSE_REQUIRES_MASTERTOKEN:Lcom/netflix/msl/MslError;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    invoke-static/range {v0 .. v8}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v9

    .line 2677
    goto :goto_0

    .line 2678
    :catch_0
    move-exception v0

    .line 2680
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v9

    goto :goto_0

    .line 2682
    :cond_1
    new-instance v1, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v2, "Response wishes to attach a user ID token but there is no master token."

    invoke-direct {v1, v2, v0, v9}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1

    .line 2690
    :cond_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    iget v8, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->timeout:I

    move-object v2, p1

    move-object v5, p2

    move v7, v6

    invoke-static/range {v0 .. v8}, Lcom/netflix/msl/msg/MslControl;->access$1200(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;ZZI)Lcom/netflix/msl/msg/MslControl$SendReceiveResult;

    move-result-object v1

    .line 2691
    iget-object v0, v1, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->response:Lcom/netflix/msl/msg/MessageInputStream;

    .line 2692
    add-int/lit8 v2, p3, 0x2

    .line 2696
    if-nez v0, :cond_3

    .line 2697
    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    iget-object v1, v1, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V

    goto :goto_0

    .line 2701
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v3

    .line 2702
    if-nez v3, :cond_6

    .line 2705
    :try_start_1
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2714
    :cond_4
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    .line 2715
    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v3, v4, p1, v1, v0}, Lcom/netflix/msl/msg/MslControl;->access$1300(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$SendResult;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MslControl$ErrorResult;

    move-result-object v0

    .line 2718
    if-nez v0, :cond_5

    move-object v0, v9

    .line 2719
    goto/16 :goto_0

    .line 2706
    :catch_1
    move-exception v3

    .line 2708
    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v9

    goto/16 :goto_0

    .line 2727
    :cond_5
    iget-object v1, v0, Lcom/netflix/msl/msg/MslControl$ErrorResult;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    .line 2728
    iget-object v0, v0, Lcom/netflix/msl/msg/MslControl$ErrorResult;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    .line 2729
    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/msl/msg/MslControl$RespondService;->peerToPeerExecute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;I)Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    goto/16 :goto_0

    .line 2734
    :cond_6
    iget-boolean v4, v1, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->handshake:Z

    if-eqz v4, :cond_8

    .line 2737
    :try_start_2
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 2747
    :cond_7
    new-instance v0, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;

    invoke-direct {v0, v9, p1}, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    .line 2748
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v1, v4, v0, v3}, Lcom/netflix/msl/msg/MslControl;->access$800(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v1

    .line 2749
    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/msl/msg/MslControl$RespondService;->peerToPeerExecute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;I)Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    goto/16 :goto_0

    .line 2738
    :catch_2
    move-exception v0

    .line 2740
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v9

    goto/16 :goto_0

    .line 2755
    :cond_8
    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    iget-object v2, v1, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->response:Lcom/netflix/msl/msg/MessageInputStream;

    iget-object v1, v1, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V

    goto/16 :goto_0
.end method

.method private trustedNetworkExecute(Lcom/netflix/msl/msg/MessageBuilder;I)Lcom/netflix/msl/msg/MslControl$MslChannel;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 2574
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v2

    .line 2575
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2578
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 2630
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    move-object v0, v9

    :goto_0
    return-object v0

    .line 2585
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->isIntegrityProtected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->willIntegrityProtectPayloads()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2586
    sget-object v6, Lcom/netflix/msl/MslError;->RESPONSE_REQUIRES_INTEGRITY_PROTECTION:Lcom/netflix/msl/MslError;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2591
    :goto_1
    if-eqz v6, :cond_4

    .line 2594
    :try_start_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->access$1100(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 2595
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v10

    .line 2596
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    invoke-static/range {v0 .. v8}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2630
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    move-object v0, v9

    goto :goto_0

    .line 2587
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->willEncryptPayloads()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2588
    sget-object v6, Lcom/netflix/msl/MslError;->RESPONSE_REQUIRES_ENCRYPTION:Lcom/netflix/msl/MslError;

    goto :goto_1

    :cond_2
    move-object v6, v9

    .line 2590
    goto :goto_1

    .line 2598
    :catch_0
    move-exception v0

    .line 2600
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 2630
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    move-object v0, v9

    goto :goto_0

    .line 2602
    :cond_3
    :try_start_4
    new-instance v1, Lcom/netflix/msl/MslErrorResponseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Response requires encryption or integrity protection but cannot be protected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2630
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v0

    .line 2609
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getKeyExchangeData()Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    if-nez v0, :cond_6

    .line 2612
    :try_start_6
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->access$1100(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 2613
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v6

    .line 2614
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lcom/netflix/msl/MslError;->RESPONSE_REQUIRES_MASTERTOKEN:Lcom/netflix/msl/MslError;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    invoke-static/range {v0 .. v8}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2630
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    move-object v0, v9

    goto/16 :goto_0

    .line 2616
    :catch_1
    move-exception v0

    .line 2618
    :try_start_7
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    .line 2630
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    move-object v0, v9

    goto/16 :goto_0

    .line 2620
    :cond_5
    :try_start_8
    new-instance v1, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v2, "Response wishes to attach a user ID token but there is no master token."

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1

    .line 2625
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->setRenewable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    .line 2626
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;Z)Lcom/netflix/msl/msg/MslControl$SendResult;

    move-result-object v1

    .line 2627
    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    iget-object v1, v1, Lcom/netflix/msl/msg/MslControl$SendResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2630
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public call()Lcom/netflix/msl/msg/MslControl$MslChannel;
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 2772
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v2

    .line 2774
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v3

    .line 2779
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-static {v0, v1, v4, v3}, Lcom/netflix/msl/msg/MslControl;->access$800(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 2816
    :try_start_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2817
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lcom/netflix/msl/msg/MslControl$RespondService;->trustedNetworkExecute(Lcom/netflix/msl/msg/MessageBuilder;I)Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    .line 2822
    :goto_0
    if-eqz v0, :cond_0

    .line 2823
    iget-object v4, v0, Lcom/netflix/msl/msg/MslControl$MslChannel;->output:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageOutputStream;->stopCaching()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a

    .line 2877
    :cond_0
    :goto_1
    return-object v0

    .line 2780
    :catch_0
    move-exception v0

    move-object v0, v9

    .line 2782
    goto :goto_1

    .line 2783
    :catch_1
    move-exception v0

    move-object v10, v0

    .line 2785
    invoke-static {v10}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v9

    goto :goto_1

    .line 2788
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->access$1100(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 2789
    invoke-virtual {v10}, Lcom/netflix/msl/MslException;->getError()Lcom/netflix/msl/MslError;

    move-result-object v6

    .line 2790
    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v0

    .line 2791
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageCapabilities;->getLanguages()Ljava/util/List;

    move-result-object v9

    .line 2792
    :cond_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/ErrorMessageRegistry;

    move-result-object v0

    invoke-interface {v0, v6, v9}, Lcom/netflix/msl/msg/ErrorMessageRegistry;->getUserMessage(Lcom/netflix/msl/MslError;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 2793
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v10}, Lcom/netflix/msl/MslException;->getMessageId()Ljava/lang/Long;

    move-result-object v5

    iget-object v8, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    invoke-static/range {v0 .. v8}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 2797
    throw v10

    .line 2794
    :catch_2
    move-exception v0

    .line 2795
    new-instance v1, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v2, "Error building the response."

    invoke-direct {v1, v2, v0, v10}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1

    .line 2798
    :catch_3
    move-exception v0

    move-object v10, v0

    .line 2800
    invoke-static {v10}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v9

    goto :goto_1

    .line 2803
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->access$1100(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 2804
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    const/4 v5, 0x0

    sget-object v6, Lcom/netflix/msl/MslError;->INTERNAL_EXCEPTION:Lcom/netflix/msl/MslError;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    invoke-static/range {v0 .. v8}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 2808
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Error building the response."

    invoke-direct {v0, v1, v10}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2805
    :catch_4
    move-exception v0

    .line 2806
    new-instance v1, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v2, "Error building the response."

    invoke-direct {v1, v2, v0, v10}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1

    .line 2819
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    const/4 v4, 0x3

    invoke-direct {p0, v0, v1, v4}, Lcom/netflix/msl/msg/MslControl$RespondService;->peerToPeerExecute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;I)Lcom/netflix/msl/msg/MslControl$MslChannel;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/netflix/msl/MslException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_a

    move-result-object v0

    goto/16 :goto_0

    .line 2827
    :catch_5
    move-exception v0

    move-object v0, v9

    .line 2829
    goto :goto_1

    .line 2830
    :catch_6
    move-exception v0

    move-object v10, v0

    .line 2832
    invoke-static {v10}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v9

    goto/16 :goto_1

    .line 2836
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->access$1100(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 2837
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v6

    .line 2838
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lcom/netflix/msl/MslError;->MSL_COMMS_FAILURE:Lcom/netflix/msl/MslError;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    invoke-static/range {v0 .. v8}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7

    .line 2845
    throw v10

    .line 2839
    :catch_7
    move-exception v0

    .line 2841
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, v9

    goto/16 :goto_1

    .line 2843
    :cond_6
    new-instance v1, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v2, "Error sending the response."

    invoke-direct {v1, v2, v0, v10}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1

    .line 2846
    :catch_8
    move-exception v0

    move-object v10, v0

    .line 2848
    invoke-static {v10}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v9

    goto/16 :goto_1

    .line 2852
    :cond_7
    :try_start_6
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->access$1100(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 2853
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v12

    .line 2854
    invoke-virtual {v10}, Lcom/netflix/msl/MslException;->getError()Lcom/netflix/msl/MslError;

    move-result-object v6

    .line 2855
    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v0

    .line 2856
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageCapabilities;->getLanguages()Ljava/util/List;

    move-result-object v0

    .line 2857
    :goto_2
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/ErrorMessageRegistry;

    move-result-object v1

    invoke-interface {v1, v6, v0}, Lcom/netflix/msl/msg/ErrorMessageRegistry;->getUserMessage(Lcom/netflix/msl/MslError;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 2858
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v8, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    invoke-static/range {v0 .. v8}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9

    .line 2865
    throw v10

    :cond_8
    move-object v0, v9

    .line 2856
    goto :goto_2

    .line 2859
    :catch_9
    move-exception v0

    .line 2861
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v0, v9

    goto/16 :goto_1

    .line 2863
    :cond_9
    new-instance v1, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v2, "Error sending the response."

    invoke-direct {v1, v2, v0, v10}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1

    .line 2866
    :catch_a
    move-exception v0

    move-object v10, v0

    .line 2868
    invoke-static {v10}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v9

    goto/16 :goto_1

    .line 2872
    :cond_a
    :try_start_7
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->access$1100(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 2873
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v6

    .line 2874
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lcom/netflix/msl/MslError;->INTERNAL_EXCEPTION:Lcom/netflix/msl/MslError;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    invoke-static/range {v0 .. v8}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_b

    .line 2881
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Error sending the response."

    invoke-direct {v0, v1, v10}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2875
    :catch_b
    move-exception v0

    .line 2877
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v0, v9

    goto/16 :goto_1

    .line 2879
    :cond_b
    new-instance v1, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v2, "Error sending the response."

    invoke-direct {v1, v2, v0, v10}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2518
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MslControl$RespondService;->call()Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    return-object v0
.end method
