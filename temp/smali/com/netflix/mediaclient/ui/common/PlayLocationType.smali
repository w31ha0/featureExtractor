.class public final enum Lcom/netflix/mediaclient/ui/common/PlayLocationType;
.super Ljava/lang/Enum;
.source "PlayLocationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/common/PlayLocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/common/PlayLocationType;

.field public static final enum DIRECT_PLAY:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

.field public static final enum EPISODE:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

.field public static final enum STORY_ART:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/ui/common/PlayLocationType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    const-string/jumbo v1, "STORY_ART"

    const-string/jumbo v2, "storyArt"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->STORY_ART:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    const-string/jumbo v1, "EPISODE"

    const-string/jumbo v2, "episode"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->EPISODE:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    const-string/jumbo v1, "DIRECT_PLAY"

    const-string/jumbo v2, "directPlay"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->DIRECT_PLAY:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->UNKNOWN:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->STORY_ART:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->EPISODE:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->DIRECT_PLAY:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->UNKNOWN:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->$VALUES:[Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->value:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayLocationType;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 29
    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->UNKNOWN:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    .line 30
    invoke-static {}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->values()[Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .line 31
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 37
    :goto_1
    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->UNKNOWN:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    if-ne v0, v1, :cond_0

    .line 38
    const-string/jumbo v1, "PlayLocationType UNKNOWN."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :cond_0
    return-object v0

    .line 30
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayLocationType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/common/PlayLocationType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->$VALUES:[Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/common/PlayLocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->value:Ljava/lang/String;

    return-object v0
.end method
