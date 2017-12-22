.class public final enum Lcom/netflix/mediaclient/servicemgr/UiLocation;
.super Ljava/lang/Enum;
.source "UiLocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/UiLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum GENRE_LOLOMO:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum MDP:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum MDP_SIMILARS:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum PEOPLE:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum SDP:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum SDP_SIMILARS:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum SEARCH:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/servicemgr/UiLocation;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const-string/jumbo v1, "HOME_LOLOMO"

    const-string/jumbo v2, "browseHome"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const-string/jumbo v1, "GENRE_LOLOMO"

    const-string/jumbo v2, "browseGenre"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->GENRE_LOLOMO:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const-string/jumbo v1, "MDP"

    const-string/jumbo v2, "mdp"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->MDP:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const-string/jumbo v1, "MDP_SIMILARS"

    const-string/jumbo v2, "mdpSimilars"

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->MDP_SIMILARS:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const-string/jumbo v1, "SDP"

    const-string/jumbo v2, "sdp"

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->SDP:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const-string/jumbo v1, "SDP_SIMILARS"

    const/4 v2, 0x5

    const-string/jumbo v3, "sdpSimilars"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->SDP_SIMILARS:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const-string/jumbo v1, "SEARCH"

    const/4 v2, 0x6

    const-string/jumbo v3, "search"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->SEARCH:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const-string/jumbo v1, "PEOPLE"

    const/4 v2, 0x7

    const-string/jumbo v3, "people"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->PEOPLE:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0x8

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/UiLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 6
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/UiLocation;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UiLocation;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UiLocation;->GENRE_LOLOMO:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UiLocation;->MDP:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UiLocation;->MDP_SIMILARS:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UiLocation;->SDP:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UiLocation;->SDP_SIMILARS:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UiLocation;->SEARCH:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UiLocation;->PEOPLE:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UiLocation;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/UiLocation;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->value:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UiLocation;
    .locals 5

    .prologue
    .line 24
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/UiLocation;->values()[Lcom/netflix/mediaclient/servicemgr/UiLocation;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 25
    iget-object v4, v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 29
    :goto_1
    return-object v0

    .line 24
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 29
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UiLocation;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/UiLocation;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/UiLocation;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/UiLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/UiLocation;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/UiLocation;->value:Ljava/lang/String;

    return-object v0
.end method
