.class Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;
.super Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;
.source "VerifyPinRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/data/ApiFalkorRequest",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIELD_IS_PIN_VALID:Ljava/lang/String; = "isPinValid"

.field private static final FIELD_USER:Ljava/lang/String; = "user"

.field private static final FIELD_VERIFY_PIN:Ljava/lang/String; = "verifyPin"

.field private static final FIELD_VERIFY_PREVIEW_PIN:Ljava/lang/String; = "verifyPreviewPin"

.field private static final TAG:Ljava/lang/String; = "nf_pin"


# instance fields
.field private final enteredPin:Ljava/lang/String;

.field private mPinPath:Ljava/lang/String;

.field private final pqlQuery1:Ljava/lang/String;

.field private final responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;)V

    .line 34
    iput-object p6, p0, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    .line 35
    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;->enteredPin:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;->MATURITY_PIN:Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;

    if-ne v0, p4, :cond_0

    move v1, v2

    .line 37
    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v0, "verifyPin"

    :goto_1
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;->mPinPath:Ljava/lang/String;

    .line 39
    if-eqz v1, :cond_2

    const-string/jumbo v0, "[\'user\', \'%s\', \'%s\']"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;->mPinPath:Ljava/lang/String;

    aput-object v4, v1, v3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_2
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;->pqlQuery1:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "PQL = %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;->pqlQuery1:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 44
    return-void

    :cond_0
    move v1, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string/jumbo v0, "verifyPreviewPin"

    goto :goto_1

    .line 39
    :cond_2
    const-string/jumbo v0, "[\'user\', \'%s\', \'%s\', \'%s\']"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;->mPinPath:Ljava/lang/String;

    aput-object v4, v1, v3

    aput-object p3, v1, v2

    aput-object p5, v1, v5

    .line 40
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method protected getPQLQueries()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;->pqlQuery1:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V

    .line 89
    :cond_0
    return-void
.end method

.method protected onSuccess(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;->responseCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V

    .line 82
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 55
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "String response to parse = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    const-string/jumbo v0, "nf_pin"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getDataObj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isEmpty(Lcom/google/gson/JsonObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v1, "verifyPinResponse empty!!!"

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    :try_start_0
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;->mPinPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;->enteredPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "isPinValid"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 74
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string/jumbo v1, "nf_pin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "String response to parse = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    const-string/jumbo v2, "response missing user json objects"

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
