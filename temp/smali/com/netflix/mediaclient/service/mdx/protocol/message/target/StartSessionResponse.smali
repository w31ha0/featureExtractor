.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/target/StartSessionResponse;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;
.source "StartSessionResponse.java"


# instance fields
.field private isSuccess:Z

.field private sessionId:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    const-string/jumbo v0, "startSessionResponse"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;-><init>(Ljava/lang/String;)V

    .line 12
    iput v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/StartSessionResponse;->sessionId:I

    .line 16
    :try_start_0
    const-string/jumbo v0, "sessionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/StartSessionResponse;->sessionId:I

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/StartSessionResponse;->isSuccess:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/StartSessionResponse;->isSuccess:Z

    goto :goto_0
.end method


# virtual methods
.method public getSessionId()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/StartSessionResponse;->sessionId:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/StartSessionResponse;->isSuccess:Z

    return v0
.end method
