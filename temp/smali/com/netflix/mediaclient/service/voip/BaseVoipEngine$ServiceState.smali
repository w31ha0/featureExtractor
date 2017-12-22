.class public final enum Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;
.super Ljava/lang/Enum;
.source "BaseVoipEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

.field public static final enum NOT_STARTED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

.field public static final enum STARTED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

.field public static final enum STARTING:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

.field public static final enum STOPPED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

.field public static final enum STOPPING:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    const-string/jumbo v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->NOT_STARTED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    .line 51
    new-instance v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    const-string/jumbo v1, "STARTING"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STARTING:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    .line 52
    new-instance v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    const-string/jumbo v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STARTED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    .line 53
    new-instance v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    const-string/jumbo v1, "STOPPING"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STOPPING:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    .line 54
    new-instance v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    const-string/jumbo v1, "STOPPED"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STOPPED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->NOT_STARTED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STARTING:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STARTED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STOPPING:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STOPPED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->$VALUES:[Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->$VALUES:[Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    return-object v0
.end method
