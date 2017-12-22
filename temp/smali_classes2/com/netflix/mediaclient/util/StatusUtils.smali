.class public final Lcom/netflix/mediaclient/util/StatusUtils;
.super Ljava/lang/Object;
.source "StatusUtils.java"


# static fields
.field private static final LOG_PROPERTY_REASON:Ljava/lang/String; = "reason"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static createError(Lcom/netflix/mediaclient/StatusCode;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)Lcom/netflix/mediaclient/service/logging/client/model/Error;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;-><init>()V

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setErrorCode(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setFatal(Z)V

    .line 55
    invoke-virtual {v1, p3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setDebug(Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)V

    .line 56
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    invoke-direct {v1, p2, v0}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    .line 57
    return-object v1
.end method

.method public static createStatus(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 72
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;-><init>()V

    .line 73
    const-string/jumbo v2, "reason"

    invoke-static {v2, p1}, Lcom/netflix/mediaclient/util/JsonUtils;->createJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setMessage(Lorg/json/JSONObject;)V

    .line 74
    invoke-static {p0, p2, p3, v1}, Lcom/netflix/mediaclient/util/StatusUtils;->createError(Lcom/netflix/mediaclient/StatusCode;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setError(Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 76
    return-object v0
.end method

.method public static createUiError(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;-><init>()V

    .line 176
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setErrorCode(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setFatal(Z)V

    .line 178
    invoke-virtual {v0, p5}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setDebug(Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)V

    .line 179
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    invoke-direct {v1, p4, p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->addDeepError(Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;)V

    .line 181
    return-object v1
.end method

.method public static toActionIdResult(Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;)Lcom/netflix/mediaclient/android/app/NetflixStatus;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getActionID()I

    move-result v2

    .line 93
    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->isNetworkError()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 142
    :goto_0
    new-instance v3, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-direct {v3, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 145
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setMessage(Ljava/lang/String;)V

    .line 148
    :cond_0
    new-instance v2, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-direct {v2, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 149
    new-instance v4, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    invoke-direct {v4}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;-><init>()V

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getData()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setMessage(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    sget-object v5, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->serverFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-static {v1, v0, v5, v4}, Lcom/netflix/mediaclient/util/StatusUtils;->createError(Lcom/netflix/mediaclient/StatusCode;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v0

    .line 157
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setError(Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 159
    return-object v3

    .line 98
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 138
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_ERROR:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 100
    :pswitch_0
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_1:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 103
    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_2:Lcom/netflix/mediaclient/StatusCode;

    move v6, v1

    move-object v1, v0

    move v0, v6

    .line 105
    goto :goto_0

    .line 107
    :pswitch_2
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_3:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 110
    :pswitch_3
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_4:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 113
    :pswitch_4
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_5:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 116
    :pswitch_5
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_6:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 119
    :pswitch_6
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_7:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 122
    :pswitch_7
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_8:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 125
    :pswitch_8
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_9:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 128
    :pswitch_9
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_10:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 131
    :pswitch_a
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_11:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 134
    :pswitch_b
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NRD_LOGIN_ACTIONID_12:Lcom/netflix/mediaclient/StatusCode;

    move v6, v1

    move-object v1, v0

    move v0, v6

    .line 136
    goto :goto_0

    .line 153
    :catch_0
    move-exception v5

    goto :goto_1

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
