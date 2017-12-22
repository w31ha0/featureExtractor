.class public final enum Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;
.super Ljava/lang/Enum;
.source "SignInLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

.field public static final enum GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    const-string/jumbo v1, "GooglePlayService"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;
    .locals 1

    .prologue
    .line 115
    const-class v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    return-object v0
.end method
