.class public final enum Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;
.super Ljava/lang/Enum;
.source "IVoip.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

.field public static final enum CS_DEFAULT:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

.field public static final enum CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

.field public static final enum CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    const-string/jumbo v1, "CS_NON_MEMBER"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    .line 259
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    const-string/jumbo v1, "CS_MEMBER"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    .line 260
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    const-string/jumbo v1, "CS_DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_DEFAULT:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    .line 257
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_NON_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_MEMBER:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->CS_DEFAULT:Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

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
    .line 257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;
    .locals 1

    .prologue
    .line 257
    const-class v0, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/IVoip$UserType;

    return-object v0
.end method
