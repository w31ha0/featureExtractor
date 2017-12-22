.class public interface abstract Lcom/netflix/mediaclient/servicemgr/SignInLogging;
.super Ljava/lang/Object;
.source "SignInLogging.java"


# static fields
.field public static final ACTIONS:[Ljava/lang/String;

.field public static final CREDENTIAL_RETRIEVAL_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_RETRIEVAL_ENDED"

.field public static final CREDENTIAL_RETRIEVAL_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_RETRIEVAL_START"

.field public static final CREDENTIAL_SAVE_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_SAVE_ENDED"

.field public static final CREDENTIAL_SAVE_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_SAVE_START"

.field public static final EXTRA_CRED_SAVED:Ljava/lang/String; = "credSavedState"

.field public static final EXTRA_CRED_SERVICE:Ljava/lang/String; = "credSavedService"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field public static final SIGNIN_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_SIGNIN_ENDED"

.field public static final SIGNIN_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_SIGNIN_START"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_START"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_RETRIEVAL_START"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_RETRIEVAL_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_SAVE_START"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_SAVE_ENDED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging;->ACTIONS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract endAllActiveSessions()V
.end method

.method public abstract endCredentialRetrieval(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
.end method

.method public abstract endCredentialStore(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
.end method

.method public abstract endSignInRequest(Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;)V
.end method

.method public abstract startCredentialRetrieval(Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V
.end method

.method public abstract startCredentialStore(Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V
.end method

.method public abstract startSignInRequest(Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V
.end method
