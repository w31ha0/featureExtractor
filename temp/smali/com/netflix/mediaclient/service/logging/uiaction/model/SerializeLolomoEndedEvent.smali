.class public Lcom/netflix/mediaclient/service/logging/uiaction/model/SerializeLolomoEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;
.source "SerializeLolomoEndedEvent.java"


# static fields
.field public static final LOLOMO_FETCHED_TIME:Ljava/lang/String; = "lolomoFetchedTime"


# instance fields
.field private final lolomoFetchTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V
    .locals 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p8}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 25
    iput-wide p9, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SerializeLolomoEndedEvent;->lolomoFetchTime:J

    .line 26
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 31
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 33
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SerializeLolomoEndedEvent;->lolomoFetchTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 34
    const-string/jumbo v1, "lolomoFetchedTime"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SerializeLolomoEndedEvent;->lolomoFetchTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 37
    :cond_0
    return-object v0
.end method

.method public isMemberEvent()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
