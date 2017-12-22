.class Lcom/netflix/msl/msg/MslControl$RequestService;
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
.field private builder:Lcom/netflix/msl/msg/MessageBuilder;

.field private final ctx:Lcom/netflix/msl/util/MslContext;

.field private in:Ljava/io/InputStream;

.field private maxMessagesHit:Z

.field private final msgCount:I

.field private final msgCtx:Lcom/netflix/msl/msg/MessageContext;

.field private openedStreams:Z

.field private out:Ljava/io/OutputStream;

.field private final remoteEntity:Lcom/netflix/msl/io/Url;

.field final synthetic this$0:Lcom/netflix/msl/msg/MslControl;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3097
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3086
    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->maxMessagesHit:Z

    .line 3098
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 3099
    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    .line 3100
    iput-object p4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->remoteEntity:Lcom/netflix/msl/io/Url;

    .line 3101
    iput-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    .line 3102
    iput-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    .line 3103
    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    .line 3104
    iput-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    .line 3105
    iput p5, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->timeout:I

    .line 3106
    iput v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCount:I

    .line 3107
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;Lcom/netflix/msl/msg/MessageBuilder;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3142
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3086
    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->maxMessagesHit:Z

    .line 3143
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 3144
    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    .line 3145
    iput-object p4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->remoteEntity:Lcom/netflix/msl/io/Url;

    .line 3146
    iput-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    .line 3147
    iput-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    .line 3148
    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    .line 3149
    iput-object p5, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    .line 3150
    iput p6, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->timeout:I

    .line 3151
    iput p7, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCount:I

    .line 3152
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3118
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3086
    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->maxMessagesHit:Z

    .line 3119
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 3120
    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    .line 3121
    iput-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->remoteEntity:Lcom/netflix/msl/io/Url;

    .line 3122
    iput-object p4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    .line 3123
    iput-object p5, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    .line 3124
    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    .line 3125
    iput-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    .line 3126
    iput p6, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->timeout:I

    .line 3127
    iput v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCount:I

    .line 3128
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3166
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3086
    iput-boolean v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->maxMessagesHit:Z

    .line 3167
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 3168
    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    .line 3169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->remoteEntity:Lcom/netflix/msl/io/Url;

    .line 3170
    iput-object p4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    .line 3171
    iput-object p5, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    .line 3172
    iput-boolean v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    .line 3173
    iput-object p6, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    .line 3174
    iput p7, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->timeout:I

    .line 3175
    iput p8, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCount:I

    .line 3176
    return-void
.end method

.method private execute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;II)Lcom/netflix/msl/msg/MslControl$MslChannel;
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 3204
    add-int/lit8 v0, p4, 0x2

    const/16 v1, 0xc

    if-le v0, v1, :cond_1

    .line 3205
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 3206
    iput-boolean v6, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->maxMessagesHit:Z

    move-object v0, v9

    .line 3416
    :cond_0
    :goto_0
    return-object v0

    .line 3214
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    iget-boolean v7, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    move-object v2, p1

    move-object v5, p2

    move v8, p3

    invoke-static/range {v0 .. v8}, Lcom/netflix/msl/msg/MslControl;->access$1200(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;ZZI)Lcom/netflix/msl/msg/MslControl$SendReceiveResult;

    move-result-object v0

    .line 3215
    iget-object v1, v0, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    .line 3216
    iget-object v8, v0, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->response:Lcom/netflix/msl/msg/MessageInputStream;

    .line 3217
    add-int/lit8 v7, p4, 0x2

    .line 3221
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v4

    .line 3222
    if-nez v4, :cond_7

    .line 3226
    :try_start_0
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3233
    :cond_2
    :try_start_1
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3242
    :cond_3
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    .line 3243
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v2, v3, p1, v0, v1}, Lcom/netflix/msl/msg/MslControl;->access$1300(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$SendResult;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MslControl$ErrorResult;

    move-result-object v0

    .line 3246
    if-nez v0, :cond_4

    .line 3247
    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    invoke-direct {v0, v8, v9}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V

    goto :goto_0

    .line 3227
    :catch_0
    move-exception v1

    .line 3229
    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v9

    goto :goto_0

    .line 3234
    :catch_1
    move-exception v1

    .line 3236
    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v9

    goto :goto_0

    .line 3252
    :cond_4
    iget-object v5, v0, Lcom/netflix/msl/msg/MslControl$ErrorResult;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    .line 3253
    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ErrorResult;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    .line 3254
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3257
    new-instance v0, Lcom/netflix/msl/msg/MslControl$RequestService;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->remoteEntity:Lcom/netflix/msl/io/Url;

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/msl/msg/MslControl$RequestService;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;Lcom/netflix/msl/msg/MessageBuilder;II)V

    .line 3258
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MslControl$RequestService;->call()Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v1

    .line 3259
    iget-boolean v0, v0, Lcom/netflix/msl/msg/MslControl$RequestService;->maxMessagesHit:Z

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->maxMessagesHit:Z

    move-object v0, v1

    .line 3272
    :goto_1
    iget-boolean v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->maxMessagesHit:Z

    if-nez v1, :cond_5

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netflix/msl/msg/MslControl$MslChannel;->input:Lcom/netflix/msl/msg/MessageInputStream;

    if-nez v1, :cond_0

    .line 3273
    :cond_5
    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    invoke-direct {v0, v8, v9}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V

    goto :goto_0

    .line 3267
    :cond_6
    invoke-direct {p0, v3, v5, p3, v7}, Lcom/netflix/msl/msg/MslControl$RequestService;->execute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;II)Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    goto :goto_1

    .line 3281
    :cond_7
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v2}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3284
    iget-boolean v0, v0, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->handshake:Z

    if-nez v0, :cond_8

    .line 3285
    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    invoke-direct {v0, v8, v1}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V

    goto/16 :goto_0

    .line 3293
    :cond_8
    :try_start_2
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3300
    :cond_9
    :try_start_3
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3309
    :cond_a
    new-instance v3, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;

    invoke-direct {v3, v9, p1}, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    .line 3310
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v0, v1, p1, v4}, Lcom/netflix/msl/msg/MslControl;->access$800(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v5

    .line 3311
    new-instance v0, Lcom/netflix/msl/msg/MslControl$RequestService;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->remoteEntity:Lcom/netflix/msl/io/Url;

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/msl/msg/MslControl$RequestService;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;Lcom/netflix/msl/msg/MessageBuilder;II)V

    .line 3312
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MslControl$RequestService;->call()Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    goto/16 :goto_0

    .line 3294
    :catch_2
    move-exception v0

    .line 3296
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v9

    goto/16 :goto_0

    .line 3301
    :catch_3
    move-exception v0

    .line 3303
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v9

    goto/16 :goto_0

    .line 3320
    :cond_b
    iget-boolean v0, v0, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->handshake:Z

    if-eqz v0, :cond_e

    .line 3324
    :try_start_4
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3331
    :cond_c
    :try_start_5
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 3342
    :cond_d
    new-instance v0, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;

    invoke-direct {v0, v9, p1}, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    .line 3343
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v1, v2, p1, v4}, Lcom/netflix/msl/msg/MslControl;->access$800(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v1

    .line 3344
    invoke-direct {p0, v0, v1, p3, v7}, Lcom/netflix/msl/msg/MslControl$RequestService;->execute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;II)Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    goto/16 :goto_0

    .line 3325
    :catch_4
    move-exception v0

    .line 3327
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, v9

    goto/16 :goto_0

    .line 3332
    :catch_5
    move-exception v0

    .line 3334
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v9

    goto/16 :goto_0

    .line 3354
    :cond_e
    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getKeyRequestData()Ljava/util/Set;

    move-result-object v0

    .line 3355
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3356
    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->isRenewable()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3359
    :cond_f
    new-instance v2, Lcom/netflix/msl/msg/MslControl$KeyxResponseMessageContext;

    invoke-direct {v2, p1}, Lcom/netflix/msl/msg/MslControl$KeyxResponseMessageContext;-><init>(Lcom/netflix/msl/msg/MessageContext;)V

    .line 3360
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v0, v3, v2, v4}, Lcom/netflix/msl/msg/MslControl;->access$800(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v4

    .line 3365
    :try_start_6
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageInputStream;->isHandshake()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    if-nez v0, :cond_11

    .line 3368
    :try_start_7
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3382
    :cond_10
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {v4, v0}, Lcom/netflix/msl/msg/MessageBuilder;->setRenewable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    .line 3383
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    iget-boolean v5, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    invoke-static/range {v0 .. v5}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;Z)Lcom/netflix/msl/msg/MslControl$SendResult;

    move-result-object v1

    .line 3384
    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    iget-object v1, v1, Lcom/netflix/msl/msg/MslControl$SendResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-direct {v0, v8, v1}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3411
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0

    .line 3369
    :catch_6
    move-exception v0

    .line 3371
    :try_start_9
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v0

    if-eqz v0, :cond_10

    .line 3411
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    move-object v0, v9

    goto/16 :goto_0

    .line 3393
    :cond_11
    :try_start_a
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3400
    :cond_12
    :try_start_b
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 3407
    :cond_13
    :try_start_c
    invoke-direct {p0, v2, v4, p3, v7}, Lcom/netflix/msl/msg/MslControl$RequestService;->execute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;II)Lcom/netflix/msl/msg/MslControl$MslChannel;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v0

    .line 3411
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0

    .line 3394
    :catch_7
    move-exception v0

    .line 3396
    :try_start_d
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v0

    if-eqz v0, :cond_12

    .line 3411
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    move-object v0, v9

    goto/16 :goto_0

    .line 3401
    :catch_8
    move-exception v0

    .line 3403
    :try_start_e
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v0

    if-eqz v0, :cond_13

    .line 3411
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    move-object v0, v9

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v0

    .line 3416
    :cond_14
    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    invoke-direct {v0, v8, v1}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public call()Lcom/netflix/msl/msg/MslControl$MslChannel;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3434
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_a

    .line 3437
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->remoteEntity:Lcom/netflix/msl/io/Url;

    iget v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->timeout:I

    invoke-interface {v0, v2}, Lcom/netflix/msl/io/Url;->setTimeout(I)V

    .line 3441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3442
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->remoteEntity:Lcom/netflix/msl/io/Url;

    invoke-interface {v0}, Lcom/netflix/msl/io/Url;->openConnection()Lcom/netflix/msl/io/Url$Connection;

    move-result-object v0

    .line 3443
    invoke-interface {v0}, Lcom/netflix/msl/io/Url$Connection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    .line 3444
    new-instance v4, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;

    invoke-direct {v4, p0, v0}, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;-><init>(Lcom/netflix/msl/msg/MslControl$RequestService;Lcom/netflix/msl/io/Url$Connection;)V

    iput-object v4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    .line 3445
    iget v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->timeout:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-int v2, v2

    sub-int/2addr v0, v2

    .line 3446
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3480
    :goto_0
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    if-nez v2, :cond_1

    .line 3482
    :try_start_1
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-static {v2, v3, v4}, Lcom/netflix/msl/msg/MslControl;->access$1400(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3498
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    iget v4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCount:I

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/netflix/msl/msg/MslControl$RequestService;->execute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;II)Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    .line 3501
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$MslChannel;->output:Lcom/netflix/msl/msg/MessageOutputStream;

    if-eqz v2, :cond_2

    .line 3502
    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$MslChannel;->output:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageOutputStream;->stopCaching()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/netflix/msl/MslException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_9

    .line 3525
    :cond_2
    :goto_1
    return-object v0

    .line 3447
    :catch_0
    move-exception v0

    .line 3450
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    if-eqz v2, :cond_3

    .line 3451
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 3455
    :cond_3
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    if-eqz v2, :cond_4

    :try_start_3
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11

    .line 3456
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_5

    :try_start_4
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10

    .line 3459
    :cond_5
    :goto_3
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v1

    goto :goto_1

    .line 3460
    :cond_6
    throw v0

    .line 3461
    :catch_1
    move-exception v0

    .line 3464
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    if-eqz v1, :cond_7

    .line 3465
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 3469
    :cond_7
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_8

    :try_start_5
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f

    .line 3470
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_9

    :try_start_6
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e

    .line 3472
    :cond_9
    :goto_5
    throw v0

    .line 3475
    :cond_a
    iget v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->timeout:I

    goto :goto_0

    .line 3483
    :catch_2
    move-exception v0

    .line 3486
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    if-eqz v0, :cond_b

    .line 3487
    :try_start_7
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    .line 3488
    :goto_6
    :try_start_8
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    :cond_b
    :goto_7
    move-object v0, v1

    .line 3492
    goto :goto_1

    .line 3506
    :catch_3
    move-exception v0

    .line 3509
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    if-eqz v0, :cond_c

    .line 3510
    :try_start_9
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 3511
    :goto_8
    :try_start_a
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    :cond_c
    :goto_9
    move-object v0, v1

    .line 3515
    goto :goto_1

    .line 3516
    :catch_4
    move-exception v0

    .line 3519
    :goto_a
    iget-boolean v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    if-eqz v2, :cond_d

    .line 3520
    :try_start_b
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 3521
    :goto_b
    :try_start_c
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 3525
    :cond_d
    :goto_c
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v0, v1

    goto/16 :goto_1

    .line 3526
    :cond_e
    throw v0

    .line 3521
    :catch_5
    move-exception v2

    goto :goto_c

    .line 3520
    :catch_6
    move-exception v2

    goto :goto_b

    .line 3516
    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    goto :goto_a

    :catch_9
    move-exception v0

    goto :goto_a

    .line 3511
    :catch_a
    move-exception v0

    goto :goto_9

    .line 3510
    :catch_b
    move-exception v0

    goto :goto_8

    .line 3488
    :catch_c
    move-exception v0

    goto :goto_7

    .line 3487
    :catch_d
    move-exception v0

    goto :goto_6

    .line 3470
    :catch_e
    move-exception v1

    goto :goto_5

    .line 3469
    :catch_f
    move-exception v1

    goto :goto_4

    .line 3456
    :catch_10
    move-exception v2

    goto/16 :goto_3

    .line 3455
    :catch_11
    move-exception v2

    goto/16 :goto_2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MslControl$RequestService;->call()Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    return-object v0
.end method
