.class public Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;
.super Ljava/lang/Object;
.source "SessionUtils.java"


# instance fields
.field private mMessage:Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;

.field private mType:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->mType:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    .line 37
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->mMessage:Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;

    .line 38
    return-void
.end method


# virtual methods
.method public getMessage()Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->mMessage:Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;->mType:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    return-object v0
.end method
