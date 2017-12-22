.class public final enum Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;
.super Ljava/lang/Enum;
.source "UserActionLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

.field public static final enum userChoseNotToRemember:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

.field public static final enum userChoseToRemember:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

.field public static final enum userNotOfferedChoice:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 454
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    const-string/jumbo v1, "userNotOfferedChoice"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;->userNotOfferedChoice:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    .line 455
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    const-string/jumbo v1, "userChoseToRemember"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;->userChoseToRemember:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    .line 456
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    const-string/jumbo v1, "userChoseNotToRemember"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;->userChoseNotToRemember:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    .line 453
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;->userNotOfferedChoice:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;->userChoseToRemember:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;->userChoseNotToRemember:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

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
    .line 453
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;
    .locals 1

    .prologue
    .line 453
    const-class v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;
    .locals 1

    .prologue
    .line 453
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    return-object v0
.end method
