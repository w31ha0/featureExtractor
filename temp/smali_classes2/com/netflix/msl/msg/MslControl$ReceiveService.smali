.class Lcom/netflix/msl/msg/MslControl$ReceiveService;
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
        "Lcom/netflix/msl/msg/MessageInputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final ctx:Lcom/netflix/msl/util/MslContext;

.field private final in:Ljava/io/InputStream;

.field private final msgCtx:Lcom/netflix/msl/msg/MessageContext;

.field private final out:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/netflix/msl/msg/MslControl;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 0

    .prologue
    .line 2259
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2260
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 2261
    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    .line 2262
    iput-object p4, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->in:Ljava/io/InputStream;

    .line 2263
    iput-object p5, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    .line 2264
    iput p6, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->timeout:I

    .line 2265
    return-void
.end method


# virtual methods
.method public call()Lcom/netflix/msl/msg/MessageInputStream;
    .locals 20

    .prologue
    .line 2281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v2}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v4

    .line 2286
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->in:Ljava/io/InputStream;

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/netflix/msl/msg/MslControl;->access$500(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageInputStream;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v12

    .line 2326
    invoke-virtual {v12}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v5

    .line 2327
    if-nez v5, :cond_7

    move-object v2, v12

    .line 2508
    :cond_0
    :goto_0
    return-object v2

    .line 2287
    :catch_0
    move-exception v2

    .line 2289
    const/4 v2, 0x0

    goto :goto_0

    .line 2290
    :catch_1
    move-exception v2

    move-object v11, v2

    .line 2292
    invoke-static {v11}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 2296
    :cond_1
    :try_start_1
    invoke-virtual {v11}, Lcom/netflix/msl/MslException;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    .line 2297
    invoke-virtual {v11}, Lcom/netflix/msl/MslException;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v3

    .line 2298
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v6

    .line 2299
    :goto_1
    invoke-virtual {v11}, Lcom/netflix/msl/MslException;->getError()Lcom/netflix/msl/MslError;

    move-result-object v8

    .line 2300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/ErrorMessageRegistry;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v8, v3}, Lcom/netflix/msl/msg/ErrorMessageRegistry;->getUserMessage(Lcom/netflix/msl/MslError;Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 2301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    const/4 v5, 0x0

    invoke-virtual {v11}, Lcom/netflix/msl/MslException;->getMessageId()Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    invoke-static/range {v2 .. v10}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 2308
    throw v11

    .line 2298
    :cond_2
    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 2302
    :catch_2
    move-exception v2

    .line 2304
    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    .line 2306
    :cond_4
    new-instance v3, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v4, "Error receiving the message header."

    invoke-direct {v3, v4, v2, v11}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v3

    .line 2309
    :catch_3
    move-exception v2

    move-object v11, v2

    .line 2311
    invoke-static {v11}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    .line 2315
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/netflix/msl/MslError;->INTERNAL_EXCEPTION:Lcom/netflix/msl/MslError;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    invoke-static/range {v2 .. v10}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 2322
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v3, "Error receiving the message header."

    invoke-direct {v2, v3, v11}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2316
    :catch_4
    move-exception v2

    .line 2318
    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2320
    :cond_6
    new-instance v3, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v4, "Error receiving the message header."

    invoke-direct {v3, v4, v2, v11}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v3

    .line 2333
    :cond_7
    :try_start_4
    invoke-virtual {v12}, Lcom/netflix/msl/msg/MessageInputStream;->isHandshake()Z
    :try_end_4
    .catch Lcom/netflix/msl/MslException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    move-result v2

    if-nez v2, :cond_e

    move-object v2, v12

    .line 2334
    goto/16 :goto_0

    .line 2335
    :catch_5
    move-exception v11

    .line 2337
    invoke-static {v11}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2341
    :cond_8
    :try_start_5
    invoke-virtual {v11}, Lcom/netflix/msl/MslException;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    .line 2342
    invoke-virtual {v11}, Lcom/netflix/msl/MslException;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v3

    .line 2343
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v6

    .line 2344
    :goto_2
    invoke-virtual {v11}, Lcom/netflix/msl/MslException;->getError()Lcom/netflix/msl/MslError;

    move-result-object v8

    .line 2345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/ErrorMessageRegistry;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v8, v3}, Lcom/netflix/msl/msg/ErrorMessageRegistry;->getUserMessage(Lcom/netflix/msl/MslError;Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 2346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v11}, Lcom/netflix/msl/MslException;->getMessageId()Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    invoke-static/range {v2 .. v10}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 2353
    throw v11

    .line 2343
    :cond_9
    if-eqz v3, :cond_a

    :try_start_6
    invoke-virtual {v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v6

    goto :goto_2

    :cond_a
    const/4 v6, 0x0

    goto :goto_2

    .line 2347
    :catch_6
    move-exception v2

    .line 2349
    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2351
    :cond_b
    new-instance v3, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v4, "Error peeking into the message payloads."

    invoke-direct {v3, v4, v2, v11}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v3

    .line 2354
    :catch_7
    move-exception v11

    .line 2356
    invoke-static {v11}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2360
    :cond_c
    :try_start_7
    invoke-virtual {v12}, Lcom/netflix/msl/msg/MessageInputStream;->getIdentity()Ljava/lang/String;

    move-result-object v6

    .line 2361
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 2362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    sget-object v8, Lcom/netflix/msl/MslError;->INTERNAL_EXCEPTION:Lcom/netflix/msl/MslError;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    invoke-static/range {v2 .. v10}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8

    .line 2369
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v3, "Error peeking into the message payloads."

    invoke-direct {v2, v3, v11}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2363
    :catch_8
    move-exception v2

    .line 2365
    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2367
    :cond_d
    new-instance v3, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v4, "Error peeking into the message payloads."

    invoke-direct {v3, v4, v2, v11}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v3

    .line 2377
    :cond_e
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-virtual {v12}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v7

    invoke-static {v2, v3, v6, v7}, Lcom/netflix/msl/msg/MslControl;->access$800(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Lcom/netflix/msl/MslException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v10

    .line 2417
    :try_start_9
    invoke-virtual {v12}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1a

    .line 2424
    :goto_3
    new-instance v8, Lcom/netflix/msl/msg/MslControl$KeyxResponseMessageContext;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-direct {v8, v2}, Lcom/netflix/msl/msg/MslControl$KeyxResponseMessageContext;-><init>(Lcom/netflix/msl/msg/MessageContext;)V

    .line 2425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v2}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 2427
    const/4 v2, 0x0

    :try_start_a
    invoke-virtual {v10, v2}, Lcom/netflix/msl/msg/MessageBuilder;->setRenewable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    .line 2428
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;Z)Lcom/netflix/msl/msg/MslControl$SendResult;
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_13
    .catch Lcom/netflix/msl/MslException; {:try_start_a .. :try_end_a} :catch_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_18
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2429
    const/4 v2, 0x0

    .line 2487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v3}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v10}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0

    .line 2378
    :catch_9
    move-exception v2

    .line 2380
    const/4 v2, 0x0

    .line 2417
    :try_start_b
    invoke-virtual {v12}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v3

    goto/16 :goto_0

    .line 2381
    :catch_b
    move-exception v2

    move-object v11, v2

    .line 2383
    :try_start_c
    invoke-static {v11}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    .line 2417
    :try_start_d
    invoke-virtual {v12}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    goto/16 :goto_0

    :catch_c
    move-exception v3

    goto/16 :goto_0

    .line 2387
    :cond_f
    :try_start_e
    invoke-virtual {v12}, Lcom/netflix/msl/msg/MessageInputStream;->getIdentity()Ljava/lang/String;

    move-result-object v6

    .line 2388
    invoke-virtual {v11}, Lcom/netflix/msl/MslException;->getError()Lcom/netflix/msl/MslError;

    move-result-object v8

    .line 2389
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v2

    .line 2390
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageCapabilities;->getLanguages()Ljava/util/List;

    move-result-object v2

    .line 2391
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/ErrorMessageRegistry;

    move-result-object v3

    invoke-interface {v3, v8, v2}, Lcom/netflix/msl/msg/ErrorMessageRegistry;->getUserMessage(Lcom/netflix/msl/MslError;Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 2392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v11}, Lcom/netflix/msl/MslException;->getMessageId()Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    invoke-static/range {v2 .. v10}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 2399
    :try_start_f
    throw v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 2417
    :catchall_0
    move-exception v2

    :try_start_10
    invoke-virtual {v12}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1b

    :goto_5
    throw v2

    .line 2390
    :cond_10
    const/4 v2, 0x0

    goto :goto_4

    .line 2393
    :catch_d
    move-exception v2

    .line 2395
    :try_start_11
    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result v3

    if-eqz v3, :cond_11

    const/4 v2, 0x0

    .line 2417
    :try_start_12
    invoke-virtual {v12}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    goto/16 :goto_0

    :catch_e
    move-exception v3

    goto/16 :goto_0

    .line 2397
    :cond_11
    :try_start_13
    new-instance v3, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v4, "Error creating an automatic handshake response."

    invoke-direct {v3, v4, v2, v11}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v3

    .line 2400
    :catch_f
    move-exception v2

    move-object v11, v2

    .line 2402
    invoke-static {v11}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    .line 2417
    :try_start_14
    invoke-virtual {v12}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_10

    goto/16 :goto_0

    :catch_10
    move-exception v3

    goto/16 :goto_0

    .line 2406
    :cond_12
    :try_start_15
    invoke-virtual {v12}, Lcom/netflix/msl/msg/MessageInputStream;->getIdentity()Ljava/lang/String;

    move-result-object v6

    .line 2407
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 2408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    sget-object v8, Lcom/netflix/msl/MslError;->INTERNAL_EXCEPTION:Lcom/netflix/msl/MslError;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    invoke-static/range {v2 .. v10}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_11
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 2415
    :try_start_16
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v3, "Error creating an automatic handshake response."

    invoke-direct {v2, v3, v11}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2409
    :catch_11
    move-exception v2

    .line 2411
    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x0

    .line 2417
    :try_start_17
    invoke-virtual {v12}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_12

    goto/16 :goto_0

    :catch_12
    move-exception v3

    goto/16 :goto_0

    .line 2413
    :cond_13
    :try_start_18
    new-instance v3, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v4, "Error creating an automatic handshake response."

    invoke-direct {v3, v4, v2, v11}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 2430
    :catch_13
    move-exception v2

    .line 2432
    const/4 v2, 0x0

    .line 2487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v3}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v10}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0

    .line 2433
    :catch_14
    move-exception v2

    .line 2435
    :try_start_19
    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    move-result v3

    if-eqz v3, :cond_14

    const/4 v2, 0x0

    .line 2487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v3}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v10}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0

    .line 2439
    :cond_14
    :try_start_1a
    invoke-virtual {v12}, Lcom/netflix/msl/msg/MessageInputStream;->getIdentity()Ljava/lang/String;

    move-result-object v15

    .line 2440
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 2441
    invoke-virtual {v2}, Lcom/netflix/msl/MslException;->getError()Lcom/netflix/msl/MslError;

    move-result-object v17

    .line 2442
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v3

    .line 2443
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageCapabilities;->getLanguages()Ljava/util/List;

    move-result-object v3

    .line 2444
    :goto_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v6}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/ErrorMessageRegistry;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-interface {v6, v0, v3}, Lcom/netflix/msl/msg/ErrorMessageRegistry;->getUserMessage(Lcom/netflix/msl/MslError;Ljava/util/List;)Ljava/lang/String;

    move-result-object v18

    .line 2445
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    move-object/from16 v19, v0

    move-object v13, v4

    move-object v14, v5

    invoke-static/range {v11 .. v19}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_15
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 2452
    :try_start_1b
    throw v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 2487
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v3}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v10}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    :cond_15
    throw v2

    .line 2443
    :cond_16
    const/4 v3, 0x0

    goto :goto_6

    .line 2446
    :catch_15
    move-exception v3

    .line 2448
    :try_start_1c
    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    move-result v4

    if-eqz v4, :cond_17

    const/4 v2, 0x0

    .line 2487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v3}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v10}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0

    .line 2450
    :cond_17
    :try_start_1d
    new-instance v4, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v5, "Error sending an automatic handshake response."

    invoke-direct {v4, v5, v3, v2}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v4

    .line 2453
    :catch_16
    move-exception v2

    .line 2455
    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    move-result v3

    if-eqz v3, :cond_18

    const/4 v2, 0x0

    .line 2487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v3}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v10}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0

    .line 2459
    :cond_18
    :try_start_1e
    invoke-virtual {v12}, Lcom/netflix/msl/msg/MessageInputStream;->getIdentity()Ljava/lang/String;

    move-result-object v15

    .line 2460
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 2461
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    sget-object v17, Lcom/netflix/msl/MslError;->MSL_COMMS_FAILURE:Lcom/netflix/msl/MslError;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    move-object/from16 v19, v0

    move-object v13, v4

    move-object v14, v5

    invoke-static/range {v11 .. v19}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_17
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 2468
    :try_start_1f
    throw v2

    .line 2462
    :catch_17
    move-exception v3

    .line 2464
    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    move-result v4

    if-eqz v4, :cond_19

    const/4 v2, 0x0

    .line 2487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v3}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v10}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0

    .line 2466
    :cond_19
    :try_start_20
    new-instance v4, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v5, "Error sending an automatic handshake response."

    invoke-direct {v4, v5, v3, v2}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v4

    .line 2469
    :catch_18
    move-exception v2

    .line 2471
    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v2, 0x0

    .line 2487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v3}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v10}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0

    .line 2475
    :cond_1a
    :try_start_21
    invoke-virtual {v12}, Lcom/netflix/msl/msg/MessageInputStream;->getIdentity()Ljava/lang/String;

    move-result-object v15

    .line 2476
    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 2477
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    sget-object v17, Lcom/netflix/msl/MslError;->INTERNAL_EXCEPTION:Lcom/netflix/msl/MslError;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    move-object/from16 v19, v0

    move-object v13, v4

    move-object v14, v5

    invoke-static/range {v11 .. v19}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_19
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    .line 2484
    :try_start_22
    new-instance v3, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v4, "Error sending an automatic handshake response."

    invoke-direct {v3, v4, v2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2478
    :catch_19
    move-exception v3

    .line 2480
    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v2, 0x0

    .line 2487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v3}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v10}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0

    .line 2482
    :cond_1b
    :try_start_23
    new-instance v4, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v5, "Error sending an automatic handshake response."

    invoke-direct {v4, v5, v3, v2}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    .line 2501
    :cond_1c
    new-instance v11, Lcom/netflix/msl/msg/MslControl$RequestService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->in:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->timeout:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object v14, v8

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v19}, Lcom/netflix/msl/msg/MslControl$RequestService;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;II)V

    .line 2502
    invoke-virtual {v11}, Lcom/netflix/msl/msg/MslControl$RequestService;->call()Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v2

    .line 2506
    if-eqz v2, :cond_1d

    .line 2507
    iget-object v2, v2, Lcom/netflix/msl/msg/MslControl$MslChannel;->input:Lcom/netflix/msl/msg/MessageInputStream;

    goto/16 :goto_0

    .line 2508
    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2417
    :catch_1a
    move-exception v2

    goto/16 :goto_3

    :catch_1b
    move-exception v3

    goto/16 :goto_5
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2238
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MslControl$ReceiveService;->call()Lcom/netflix/msl/msg/MessageInputStream;

    move-result-object v0

    return-object v0
.end method
