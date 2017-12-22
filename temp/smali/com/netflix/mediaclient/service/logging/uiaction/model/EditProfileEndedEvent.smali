.class public final Lcom/netflix/mediaclient/service/logging/uiaction/model/EditProfileEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;
.source "EditProfileEndedEvent.java"


# static fields
.field public static final PROFILE:Ljava/lang/String; = "profile"

.field protected static final TAG:Ljava/lang/String; = "profile"

.field public static final UIA_SESSION_NAME:Ljava/lang/String; = "editProfile"


# instance fields
.field private mProfile:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V
    .locals 12

    .prologue
    .line 48
    const-string/jumbo v4, "editProfile"

    move-object v3, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 49
    if-nez p8, :cond_0

    .line 50
    const-string/jumbo v2, "profile"

    const-string/jumbo v3, "EditProfileEndedEvent: Profile object missing!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/EditProfileEndedEvent;->mProfile:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 39
    const-string/jumbo v0, "profile"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    const-string/jumbo v0, "profile"

    const-string/jumbo v1, "EditProfileEndedEvent: Profile object missing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/EditProfileEndedEvent;->mProfile:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    goto :goto_0
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 63
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/EditProfileEndedEvent;->mProfile:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    if-eqz v1, :cond_0

    .line 65
    const-string/jumbo v1, "profile"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/EditProfileEndedEvent;->mProfile:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :cond_0
    return-object v0
.end method

.method public isMemberEvent()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method
