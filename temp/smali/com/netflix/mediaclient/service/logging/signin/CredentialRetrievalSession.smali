.class public Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;
.super Lcom/netflix/mediaclient/service/logging/signin/BaseSignInSession;
.source "CredentialRetrievalSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "credentialRetrieval"


# instance fields
.field private mCredentialService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/signin/BaseSignInSession;-><init>()V

    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Missing credential service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;->mCredentialService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    .line 25
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/signin/model/CredentialRetrievalSessionEnded;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/logging/signin/model/CredentialRetrievalSessionEnded;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;->mCredentialService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    invoke-direct {v0, p1, p2, v1}, Lcom/netflix/mediaclient/service/logging/signin/model/CredentialRetrievalSessionEnded;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V

    .line 34
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/signin/CredentialRetrievalSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/signin/model/CredentialRetrievalSessionEnded;->setCategory(Ljava/lang/String;)V

    .line 35
    return-object v0
.end method

.method public bridge synthetic getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/signin/BaseSignInSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "credentialRetrieval"

    return-object v0
.end method
