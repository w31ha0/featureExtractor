.class public final enum Lcom/netflix/mediaclient/ui/player/PlayerUiState;
.super Ljava/lang/Enum;
.source "PlayerUiState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/player/PlayerUiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/player/PlayerUiState;

.field public static final enum Interrupter:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

.field public static final enum Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

.field public static final enum Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

.field public static final enum PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

.field public static final enum PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

.field public static final enum SkipCredits:Lcom/netflix/mediaclient/ui/player/PlayerUiState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    const-string/jumbo v1, "Loading"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/player/PlayerUiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    const-string/jumbo v1, "Playing"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/ui/player/PlayerUiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    const-string/jumbo v1, "PlayingWithTrickPlayOverlay"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/ui/player/PlayerUiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    const-string/jumbo v1, "PostPlay"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/ui/player/PlayerUiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    const-string/jumbo v1, "Interrupter"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/ui/player/PlayerUiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Interrupter:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    const-string/jumbo v1, "SkipCredits"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/player/PlayerUiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->SkipCredits:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Playing:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PlayingWithTrickPlayOverlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Interrupter:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->SkipCredits:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->$VALUES:[Lcom/netflix/mediaclient/ui/player/PlayerUiState;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/PlayerUiState;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/player/PlayerUiState;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->$VALUES:[Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/player/PlayerUiState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    return-object v0
.end method
