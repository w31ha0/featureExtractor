.class public Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "CustomerSupportCallSessionEndedEvent.java"


# static fields
.field public static final CALL_DURATION:Ljava/lang/String; = "callDuration"

.field public static final CALL_QUALITY:Ljava/lang/String; = "callQuality"

.field public static final CONNECTION_TIME:Ljava/lang/String; = "connectionTime"

.field public static final DIAL_CONFIRMATION_SCREEN_DISPLAYED:Ljava/lang/String; = "dialConfirmationDialogDisplayed"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final REASON:Ljava/lang/String; = "reason"

.field public static final SDK:Ljava/lang/String; = "sdk"

.field private static final SESSION_NAME:Ljava/lang/String; = "customerSupportCall"

.field public static final SHARED_SESSION_UUID:Ljava/lang/String; = "sessionID"

.field public static final TERMINATION_REASON:Ljava/lang/String; = "terminationReason"


# instance fields
.field private mCallDuration:I

.field private mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

.field private mConnectionTimeInSec:I

.field private mDialConfirmationDialogDisplayed:Z

.field private mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

.field private mSdk:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Sdk;

.field private mSharedSessionId:Ljava/lang/String;

.field private mStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;",
            ">;"
        }
    .end annotation
.end field

.field private mTerminationReason:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Sdk;IILcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 6

    .prologue
    .line 75
    const-string/jumbo v0, "customerSupportCall"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->getStarted()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 76
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mSdk:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Sdk;

    .line 77
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mTerminationReason:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 78
    iput-object p6, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 79
    iput-object p7, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    .line 80
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->category:Ljava/lang/String;

    .line 81
    iput p3, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mConnectionTimeInSec:I

    .line 82
    iput p4, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mCallDuration:I

    .line 83
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->getQualityStates()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mStates:Ljava/util/List;

    .line 84
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->getSharedSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mSharedSessionId:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->isDialConfirmationDialogDisplayed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mDialConfirmationDialogDisplayed:Z

    .line 86
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 95
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 96
    if-nez v0, :cond_5

    .line 97
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mTerminationReason:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    if-eqz v0, :cond_0

    .line 101
    const-string/jumbo v0, "terminationReason"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mTerminationReason:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    if-eqz v0, :cond_1

    .line 105
    const-string/jumbo v0, "reason"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    if-eqz v0, :cond_2

    .line 108
    const-string/jumbo v0, "error"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    :cond_2
    const-string/jumbo v0, "connectionTime"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mConnectionTimeInSec:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    const-string/jumbo v0, "callDuration"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mCallDuration:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    const-string/jumbo v0, "dialConfirmationDialogDisplayed"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mDialConfirmationDialogDisplayed:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 113
    const-string/jumbo v0, "sdk"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mSdk:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Sdk;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mSharedSessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    const-string/jumbo v0, "sessionID"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mSharedSessionId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mStates:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 120
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 121
    const-string/jumbo v0, "callQuality"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;

    .line 123
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 127
    :cond_4
    return-object v1

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method
