.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
.super Ljava/lang/Enum;
.source "VideoType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public static final enum CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public static final enum EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public static final enum MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public static final enum SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public static final enum SERIES:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public static final enum UNAVAILABLE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# instance fields
.field private final key:I

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string/jumbo v1, "MOVIE"

    const-string/jumbo v2, "movies"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string/jumbo v1, "SHOW"

    const-string/jumbo v2, "shows"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string/jumbo v1, "SEASON"

    const-string/jumbo v2, "seasons"

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string/jumbo v1, "EPISODE"

    const-string/jumbo v2, "episodes"

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string/jumbo v1, "CHARACTERS"

    const-string/jumbo v2, "characters"

    invoke-direct {v0, v1, v9, v2, v9}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string/jumbo v1, "SERIES"

    const/4 v2, 0x5

    const-string/jumbo v3, "series"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SERIES:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string/jumbo v1, "UNAVAILABLE"

    const/4 v2, 0x6

    const-string/jumbo v3, "unavailable"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNAVAILABLE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x7

    const-string/jumbo v3, ""

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 7
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SERIES:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNAVAILABLE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->value:Ljava/lang/String;

    .line 27
    iput p4, p0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->key:I

    .line 28
    return-void
.end method

.method public static create(I)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 41
    iget v4, v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->key:I

    if-ne v4, p0, :cond_0

    .line 45
    :goto_1
    return-object v0

    .line 40
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 45
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_1
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 5

    .prologue
    .line 31
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 32
    iget-object v4, v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    :goto_1
    return-object v0

    .line 31
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 36
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_1
.end method

.method public static isPresentationTrackingType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Z
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SERIES:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->key:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->value:Ljava/lang/String;

    return-object v0
.end method
