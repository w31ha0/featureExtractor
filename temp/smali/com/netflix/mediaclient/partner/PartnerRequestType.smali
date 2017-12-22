.class public final enum Lcom/netflix/mediaclient/partner/PartnerRequestType;
.super Ljava/lang/Enum;
.source "PartnerRequestType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/partner/PartnerRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/partner/PartnerRequestType;

.field public static final enum getExternalSignUpService:Lcom/netflix/mediaclient/partner/PartnerRequestType;

.field public static final enum getExternalSsoService:Lcom/netflix/mediaclient/partner/PartnerRequestType;

.field public static final enum getExternalUserData:Lcom/netflix/mediaclient/partner/PartnerRequestType;

.field public static final enum getExternalUserToken:Lcom/netflix/mediaclient/partner/PartnerRequestType;

.field public static final enum requestExternalUserAuth:Lcom/netflix/mediaclient/partner/PartnerRequestType;

.field public static final enum requestExternalUserConfirmation:Lcom/netflix/mediaclient/partner/PartnerRequestType;


# instance fields
.field private intentName:Ljava/lang/String;

.field private requestCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;

    const-string/jumbo v1, "getExternalSsoService"

    const/4 v2, 0x0

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.SSO_getExternalSsoService"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/netflix/mediaclient/partner/PartnerRequestType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalSsoService:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;

    const-string/jumbo v1, "getExternalUserToken"

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.SSO_getExternalUserToken"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/netflix/mediaclient/partner/PartnerRequestType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalUserToken:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;

    const-string/jumbo v1, "requestExternalUserAuth"

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.SSO_requestExternalUserAuthorization"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/netflix/mediaclient/partner/PartnerRequestType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->requestExternalUserAuth:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;

    const-string/jumbo v1, "getExternalSignUpService"

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.SSO_getExternalSignUpService"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/netflix/mediaclient/partner/PartnerRequestType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalSignUpService:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;

    const-string/jumbo v1, "getExternalUserData"

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.SSO_getExternalUserData"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/netflix/mediaclient/partner/PartnerRequestType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalUserData:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;

    const-string/jumbo v1, "requestExternalUserConfirmation"

    const/4 v2, 0x6

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.SSO_requestExternalUserConfirmation"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/netflix/mediaclient/partner/PartnerRequestType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->requestExternalUserConfirmation:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/mediaclient/partner/PartnerRequestType;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalSsoService:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalUserToken:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/partner/PartnerRequestType;->requestExternalUserAuth:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalSignUpService:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalUserData:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/partner/PartnerRequestType;->requestExternalUserConfirmation:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->$VALUES:[Lcom/netflix/mediaclient/partner/PartnerRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->requestCode:I

    .line 32
    iput-object p4, p0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->intentName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static iSignup(Lcom/netflix/mediaclient/partner/PartnerRequestType;)Z
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalSignUpService:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalUserData:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    .line 79
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->requestExternalUserConfirmation:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    .line 80
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static iSso(Lcom/netflix/mediaclient/partner/PartnerRequestType;)Z
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalSsoService:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalUserToken:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    .line 66
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->requestExternalUserAuth:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    .line 67
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    .line 67
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/partner/PartnerRequestType;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/partner/PartnerRequestType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->$VALUES:[Lcom/netflix/mediaclient/partner/PartnerRequestType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/partner/PartnerRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/partner/PartnerRequestType;

    return-object v0
.end method


# virtual methods
.method public getIntentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->intentName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->requestCode:I

    return v0
.end method
