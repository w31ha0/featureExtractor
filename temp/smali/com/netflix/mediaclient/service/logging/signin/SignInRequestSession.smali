.class public Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;
.super Lcom/netflix/mediaclient/service/logging/signin/BaseSignInSession;
.source "SignInRequestSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "signInRequest"


# instance fields
.field private mSignInType:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/signin/BaseSignInSession;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SignIn type is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;->mSignInType:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    .line 26
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;)Lcom/netflix/mediaclient/service/logging/signin/model/SignInRequestSessionEnded;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/netflix/mediaclient/service/logging/signin/model/SignInRequestSessionEnded;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;->mSignInType:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/signin/model/SignInRequestSessionEnded;-><init>(Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;)V

    .line 36
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/signin/SignInRequestSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/signin/model/SignInRequestSessionEnded;->setCategory(Ljava/lang/String;)V

    .line 37
    return-object v0
.end method

.method public bridge synthetic getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/signin/BaseSignInSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "signInRequest"

    return-object v0
.end method
