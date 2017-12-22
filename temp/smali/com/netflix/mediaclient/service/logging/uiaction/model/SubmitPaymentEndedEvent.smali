.class public final Lcom/netflix/mediaclient/service/logging/uiaction/model/SubmitPaymentEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;
.source "SubmitPaymentEndedEvent.java"


# static fields
.field public static final ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final PAYMENT_TYPE:Ljava/lang/String; = "paymentType"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field private static final UIA_NAME:Ljava/lang/String; = "submitPayment"


# instance fields
.field private mErrorCode:Lorg/json/JSONObject;

.field private mPaymentType:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

.field private mSuccess:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZLcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;Lorg/json/JSONObject;)V
    .locals 12

    .prologue
    .line 71
    const-string/jumbo v4, "submitPayment"

    move-object v3, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 72
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SubmitPaymentEndedEvent;->mSuccess:Z

    .line 73
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SubmitPaymentEndedEvent;->mPaymentType:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    .line 74
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SubmitPaymentEndedEvent;->mErrorCode:Lorg/json/JSONObject;

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 55
    const-string/jumbo v0, "paymentType"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SubmitPaymentEndedEvent;->mPaymentType:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    .line 56
    const-string/jumbo v0, "success"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SubmitPaymentEndedEvent;->mSuccess:Z

    .line 57
    const-string/jumbo v0, "errorCode"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SubmitPaymentEndedEvent;->mErrorCode:Lorg/json/JSONObject;

    .line 58
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SubmitPaymentEndedEvent;->mPaymentType:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    if-eqz v1, :cond_0

    .line 86
    const-string/jumbo v1, "paymentType"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SubmitPaymentEndedEvent;->mPaymentType:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SubmitPaymentEndedEvent;->mErrorCode:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 89
    const-string/jumbo v1, "errorCode"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SubmitPaymentEndedEvent;->mErrorCode:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :cond_1
    const-string/jumbo v1, "success"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SubmitPaymentEndedEvent;->mSuccess:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 92
    return-object v0
.end method

.method public getErrorCode()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SubmitPaymentEndedEvent;->mErrorCode:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPaymentType()Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SubmitPaymentEndedEvent;->mPaymentType:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    return-object v0
.end method

.method public isMemberEvent()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SubmitPaymentEndedEvent;->mSuccess:Z

    return v0
.end method
