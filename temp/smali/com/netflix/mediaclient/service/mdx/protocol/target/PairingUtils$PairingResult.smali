.class Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;
.super Ljava/lang/Object;
.source "PairingUtils.java"


# instance fields
.field private controllerUserid:Ljava/lang/String;

.field private errorCode:Ljava/lang/String;

.field private errorString:Ljava/lang/String;

.field private final resultEvent:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

.field private sharedSecret:[B

.field private targetUserid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->resultEvent:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 41
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->errorCode:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->errorString:Ljava/lang/String;

    .line 43
    return-void
.end method

.method constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->PairSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->resultEvent:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    .line 35
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->sharedSecret:[B

    .line 36
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->controllerUserid:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->targetUserid:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getControllerUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->controllerUserid:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->errorString:Ljava/lang/String;

    return-object v0
.end method

.method public getPairingFailedMessageForLogblob()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    const-string/jumbo v0, "{errorCode=%s, errorString=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->errorCode:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->errorString:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultEvent()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->resultEvent:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    return-object v0
.end method

.method public getSharedSecret()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->sharedSecret:[B

    return-object v0
.end method

.method public getTargetUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->targetUserid:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->PairSucceed:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PairingUtils$PairingResult;->resultEvent:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$TargetStateEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
