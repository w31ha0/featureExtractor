.class public final enum Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;
.super Ljava/lang/Enum;
.source "PostPlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

.field public static final enum notStarted:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

.field public static final enum started:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1143
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    const-string/jumbo v1, "notStarted"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->notStarted:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    .line 1144
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    const-string/jumbo v1, "started"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->started:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    .line 1142
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->notStarted:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->started:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->$VALUES:[Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

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
    .line 1142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;
    .locals 1

    .prologue
    .line 1142
    const-class v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;
    .locals 1

    .prologue
    .line 1142
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->$VALUES:[Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    return-object v0
.end method
