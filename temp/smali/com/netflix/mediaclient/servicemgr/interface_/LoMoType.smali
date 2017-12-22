.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;
.super Ljava/lang/Enum;
.source "LoMoType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

.field public static final enum BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

.field public static final enum CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

.field public static final enum CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

.field public static final enum FLAT_GENRE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

.field public static final enum INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

.field public static final enum POPULAR_TITLES:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

.field public static final enum STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

.field public static final enum TOP_TEN:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;


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

    .line 4
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    const-string/jumbo v1, "CONTINUE_WATCHING"

    const-string/jumbo v2, "continueWatching"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 5
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    const-string/jumbo v1, "INSTANT_QUEUE"

    const-string/jumbo v2, "queue"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 6
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    const-string/jumbo v1, "BILLBOARD"

    const-string/jumbo v2, "BillboardList"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    const-string/jumbo v1, "CHARACTERS"

    const-string/jumbo v2, "character"

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    const-string/jumbo v1, "FLAT_GENRE"

    const-string/jumbo v2, "defaultKidsList"

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->FLAT_GENRE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    const-string/jumbo v1, "POPULAR_TITLES"

    const/4 v2, 0x5

    const-string/jumbo v3, "popularTitles"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->POPULAR_TITLES:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    const-string/jumbo v1, "TOP_TEN"

    const/4 v2, 0x6

    const-string/jumbo v3, "topTen"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->TOP_TEN:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    const-string/jumbo v1, "STANDARD"

    const/4 v2, 0x7

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->FLAT_GENRE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->POPULAR_TITLES:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->TOP_TEN:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->value:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;
    .locals 5

    .prologue
    .line 20
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 21
    iget-object v4, v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 25
    :goto_1
    return-object v0

    .line 20
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    goto :goto_1
.end method

.method public static isRegularLomoForPreApp(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->FLAT_GENRE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 34
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->POPULAR_TITLES:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 35
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->TOP_TEN:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 36
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static usesVerticalBoxArtType(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 41
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    return-object v0
.end method


# virtual methods
.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->value:Ljava/lang/String;

    return-object v0
.end method
