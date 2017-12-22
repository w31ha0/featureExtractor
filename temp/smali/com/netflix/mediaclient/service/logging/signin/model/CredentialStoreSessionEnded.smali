.class public Lcom/netflix/mediaclient/service/logging/signin/model/CredentialStoreSessionEnded;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "CredentialStoreSessionEnded.java"


# static fields
.field public static final CREDENTIAL_SERVICE:Ljava/lang/String; = "credentialService"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final REASON:Ljava/lang/String; = "reason"

.field private static final SESSION_NAME:Ljava/lang/String; = "credentialRetrieval"


# instance fields
.field private mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

.field private mCredentialService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

.field private mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V
    .locals 2

    .prologue
    .line 42
    const-string/jumbo v0, "credentialRetrieval"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;)V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Completion reason is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    if-nez p3, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Credential service is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/signin/model/CredentialStoreSessionEnded;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 53
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/signin/model/CredentialStoreSessionEnded;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    .line 54
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/signin/model/CredentialStoreSessionEnded;->mCredentialService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    .line 55
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 65
    :cond_0
    const-string/jumbo v1, "reason"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/signin/model/CredentialStoreSessionEnded;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string/jumbo v1, "credentialService"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/signin/model/CredentialStoreSessionEnded;->mCredentialService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/signin/model/CredentialStoreSessionEnded;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    if-eqz v1, :cond_1

    .line 69
    const-string/jumbo v1, "error"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/signin/model/CredentialStoreSessionEnded;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_1
    return-object v0
.end method
