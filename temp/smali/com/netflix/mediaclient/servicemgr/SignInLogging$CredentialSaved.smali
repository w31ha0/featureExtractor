.class public final enum Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;
.super Ljava/lang/Enum;
.source "SignInLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

.field public static final enum failed:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

.field public static final enum notSupported:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

.field public static final enum saved:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

.field public static final enum userDeclined:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    const-string/jumbo v1, "notSupported"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;->notSupported:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    .line 107
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    const-string/jumbo v1, "userDeclined"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;->userDeclined:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    .line 108
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    const-string/jumbo v1, "saved"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;->saved:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    .line 109
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    const-string/jumbo v1, "failed"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;->failed:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;->notSupported:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;->userDeclined:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;->saved:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;->failed:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;
    .locals 1

    .prologue
    .line 105
    const-class v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    return-object v0
.end method
