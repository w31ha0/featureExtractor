.class public final enum Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;
.super Ljava/lang/Enum;
.source "SsoAuthenticationData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

.field public static final enum GOOGLE_JWT:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

.field public static final enum MICROSOFT_JWT:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

.field public static final enum MICROSOFT_SAML:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    const-string/jumbo v1, "MICROSOFT_SAML"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;->MICROSOFT_SAML:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    .line 60
    new-instance v0, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    const-string/jumbo v1, "MICROSOFT_JWT"

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;->MICROSOFT_JWT:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    .line 61
    new-instance v0, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    const-string/jumbo v1, "GOOGLE_JWT"

    invoke-direct {v0, v1, v4}, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;->GOOGLE_JWT:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    sget-object v1, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;->MICROSOFT_SAML:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;->MICROSOFT_JWT:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;->GOOGLE_JWT:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;->$VALUES:[Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;->$VALUES:[Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    invoke-virtual {v0}, [Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    return-object v0
.end method
