.class public final enum Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;
.super Ljava/lang/Enum;
.source "PlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

.field public static final enum ACTIVITY_NOTREADY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

.field public static final enum ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

.field public static final enum ACTIVITY_SRVCMNGR_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;


# instance fields
.field mActivityState:I

.field mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3013
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    const-string/jumbo v1, "ACTIVITY_NOTREADY"

    const-string/jumbo v2, "NOTREADY"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_NOTREADY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    .line 3014
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    const-string/jumbo v1, "ACTIVITY_SRVCMNGR_READY"

    const-string/jumbo v2, "SRVCMNGR_READY"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_SRVCMNGR_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    .line 3015
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    const-string/jumbo v1, "ACTIVITY_PLAYER_READY"

    const-string/jumbo v2, "PLAYER_READY"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    .line 3012
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_NOTREADY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_SRVCMNGR_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->$VALUES:[Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

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
    .line 3019
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3020
    iput p3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->mActivityState:I

    .line 3021
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->mName:Ljava/lang/String;

    .line 3022
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;
    .locals 1

    .prologue
    .line 3012
    const-class v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;
    .locals 1

    .prologue
    .line 3012
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->$VALUES:[Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    return-object v0
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3029
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getState()I
    .locals 1

    .prologue
    .line 3025
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->mActivityState:I

    return v0
.end method
