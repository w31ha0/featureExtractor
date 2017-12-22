.class public final enum Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;
.super Ljava/lang/Enum;
.source "IVoip.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

.field public static final enum GREEN:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

.field public static final enum NO_CONNECTION:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

.field public static final enum RED:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

.field public static final enum YELLOW:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 251
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    const-string/jumbo v1, "NO_CONNECTION"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->NO_CONNECTION:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 252
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    const-string/jumbo v1, "RED"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->RED:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 253
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    const-string/jumbo v1, "YELLOW"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->YELLOW:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 254
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    const-string/jumbo v1, "GREEN"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->GREEN:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 250
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->NO_CONNECTION:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->RED:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->YELLOW:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->GREEN:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

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
    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;
    .locals 1

    .prologue
    .line 250
    const-class v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    return-object v0
.end method
