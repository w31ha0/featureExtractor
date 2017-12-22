.class final enum Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;
.super Ljava/lang/Enum;
.source "KongInteractivePostPlayManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

.field public static final enum BATTLE_RESULT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

.field public static final enum GEAR_SELECTION:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

.field public static final enum LOADING:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

.field public static final enum PICK_BATTLE:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

.field public static final enum POWER_UP:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

.field public static final enum UNLOCKING:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    const-string/jumbo v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->LOADING:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    .line 128
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    const-string/jumbo v1, "UNLOCKING"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->UNLOCKING:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    .line 129
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    const-string/jumbo v1, "PICK_BATTLE"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->PICK_BATTLE:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    .line 130
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    const-string/jumbo v1, "GEAR_SELECTION"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->GEAR_SELECTION:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    .line 131
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    const-string/jumbo v1, "BATTLE_RESULT"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->BATTLE_RESULT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    .line 132
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    const-string/jumbo v1, "POWER_UP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->POWER_UP:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    .line 126
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->LOADING:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->UNLOCKING:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->PICK_BATTLE:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->GEAR_SELECTION:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->BATTLE_RESULT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->POWER_UP:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->$VALUES:[Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

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
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;
    .locals 1

    .prologue
    .line 126
    const-class v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->$VALUES:[Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$UI_STATE;

    return-object v0
.end method
