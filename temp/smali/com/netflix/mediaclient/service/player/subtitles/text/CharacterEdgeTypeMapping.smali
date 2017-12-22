.class public final enum Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;
.super Ljava/lang/Enum;
.source "CharacterEdgeTypeMapping.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

.field public static final enum DEPRESSED:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

.field public static final enum DROP_SHADOW:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

.field public static final enum NONE:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

.field public static final enum RAISED:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

.field public static final enum UNIFORM:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;


# instance fields
.field private mLookupValue:Ljava/lang/String;

.field private mShadow:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    const-string/jumbo v1, "NONE"

    const-string/jumbo v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->NONE:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    const-string/jumbo v1, "RAISED"

    const-string/jumbo v2, "RAISED"

    sget-object v3, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->RAISED:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->RAISED:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    const-string/jumbo v1, "DEPRESSED"

    const-string/jumbo v2, "DEPRESSED"

    sget-object v3, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->DEPRESSED:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->DEPRESSED:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    const-string/jumbo v1, "UNIFORM"

    const-string/jumbo v2, "UNIFORM"

    sget-object v3, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->UNIFORM:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->UNIFORM:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    const-string/jumbo v1, "DROP_SHADOW"

    const-string/jumbo v2, "DROP_SHADOW"

    sget-object v3, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->DROP_SHADOW:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->DROP_SHADOW:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->NONE:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->RAISED:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->DEPRESSED:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->UNIFORM:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->DROP_SHADOW:Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    aput-object v1, v0, v8

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->mLookupValue:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->mShadow:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

    .line 39
    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->values()[Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 77
    iget-object v5, v1, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->mLookupValue:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 78
    goto :goto_0

    .line 76
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    return-object v0
.end method


# virtual methods
.method public getLookupValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->mLookupValue:Ljava/lang/String;

    return-object v0
.end method

.method public getShadow()Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->mShadow:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->mLookupValue:Ljava/lang/String;

    return-object v0
.end method
