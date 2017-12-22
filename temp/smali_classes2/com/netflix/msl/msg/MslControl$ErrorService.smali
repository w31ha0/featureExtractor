.class Lcom/netflix/msl/msg/MslControl$ErrorService;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final appError:Lcom/netflix/msl/msg/MslControl$ApplicationError;

.field private final ctx:Lcom/netflix/msl/util/MslContext;

.field private final msgCtx:Lcom/netflix/msl/msg/MessageContext;

.field private final out:Ljava/io/OutputStream;

.field private final request:Lcom/netflix/msl/msg/MessageInputStream;

.field final synthetic this$0:Lcom/netflix/msl/msg/MslControl;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$ApplicationError;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageInputStream;)V
    .locals 2

    .prologue
    .line 2914
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2915
    invoke-virtual {p6}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2916
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Error service created for an error message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2917
    :cond_0
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 2918
    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    .line 2919
    iput-object p4, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->appError:Lcom/netflix/msl/msg/MslControl$ApplicationError;

    .line 2920
    iput-object p5, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->out:Ljava/io/OutputStream;

    .line 2921
    iput-object p6, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    .line 2922
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2932
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v2

    .line 2933
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v3

    .line 2938
    :try_start_0
    sget-object v0, Lcom/netflix/msl/msg/MslControl$1;->$SwitchMap$com$netflix$msl$msg$MslControl$ApplicationError:[I

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->appError:Lcom/netflix/msl/msg/MslControl$ApplicationError;

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MslControl$ApplicationError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2950
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled application error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->appError:Lcom/netflix/msl/msg/MslControl$ApplicationError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2962
    :catch_0
    move-exception v0

    .line 2964
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2971
    :goto_0
    return-object v0

    .line 2940
    :pswitch_0
    :try_start_1
    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/msl/MslError;->MASTERTOKEN_REJECTED_BY_APP:Lcom/netflix/msl/MslError;

    :goto_1
    move-object v6, v0

    .line 2954
    :goto_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->access$1100(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 2955
    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v0

    .line 2956
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageCapabilities;->getLanguages()Ljava/util/List;

    move-result-object v0

    .line 2957
    :goto_3
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/ErrorMessageRegistry;

    move-result-object v1

    invoke-interface {v1, v6, v0}, Lcom/netflix/msl/msg/ErrorMessageRegistry;->getUserMessage(Lcom/netflix/msl/MslError;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 2958
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v8, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->out:Ljava/io/OutputStream;

    invoke-static/range {v0 .. v8}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageDebugContext;Lcom/netflix/msl/msg/MessageHeader;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 2961
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 2940
    :cond_0
    sget-object v0, Lcom/netflix/msl/MslError;->ENTITY_REJECTED_BY_APP:Lcom/netflix/msl/MslError;

    goto :goto_1

    .line 2945
    :pswitch_1
    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageHeader;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_REJECTED_BY_APP:Lcom/netflix/msl/MslError;

    :goto_4
    move-object v6, v0

    .line 2948
    goto :goto_2

    .line 2945
    :cond_1
    sget-object v0, Lcom/netflix/msl/MslError;->USER_REJECTED_BY_APP:Lcom/netflix/msl/MslError;
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 2956
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 2968
    :cond_3
    throw v0

    .line 2969
    :catch_1
    move-exception v0

    .line 2971
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2974
    :cond_4
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Error building the error response."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2938
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2893
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MslControl$ErrorService;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
