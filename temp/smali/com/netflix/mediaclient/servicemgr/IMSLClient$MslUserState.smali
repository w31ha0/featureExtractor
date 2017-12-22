.class public final enum Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;
.super Ljava/lang/Enum;
.source "IMSLClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

.field public static final enum masterTokenMissing:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

.field public static final enum recoveryUserDataAvailable:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

.field public static final enum userExist:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

.field public static final enum userMissing:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    const-string/jumbo v1, "masterTokenMissing"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;->masterTokenMissing:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    .line 102
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    const-string/jumbo v1, "userMissing"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;->userMissing:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    .line 103
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    const-string/jumbo v1, "recoveryUserDataAvailable"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;->recoveryUserDataAvailable:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    .line 104
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    const-string/jumbo v1, "userExist"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;->userExist:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    .line 100
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;->masterTokenMissing:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;->userMissing:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;->recoveryUserDataAvailable:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;->userExist:Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

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
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;

    return-object v0
.end method
