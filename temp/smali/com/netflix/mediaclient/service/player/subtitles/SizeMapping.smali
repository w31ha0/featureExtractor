.class public final enum Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;
.super Ljava/lang/Enum;
.source "SizeMapping.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

.field public static final enum large:Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

.field public static final enum medium:Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

.field public static final enum small:Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;


# instance fields
.field private mLookupValue:Ljava/lang/String;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

    const-string/jumbo v1, "small"

    const/16 v2, 0x4b

    const-string/jumbo v3, "SMALL"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->small:Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

    const-string/jumbo v1, "medium"

    const/16 v2, 0x64

    const-string/jumbo v3, "MEDIUM"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->medium:Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

    const-string/jumbo v1, "large"

    const/16 v2, 0xc8

    const-string/jumbo v3, "LARGE"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->large:Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->small:Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->medium:Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->large:Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->mSize:I

    .line 31
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->mLookupValue:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static lookup(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 56
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->medium:Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->getSize()I

    move-result v0

    .line 66
    :goto_0
    return v0

    .line 60
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->values()[Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 61
    iget-object v4, v3, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->mLookupValue:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    iget v0, v3, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->mSize:I

    goto :goto_0

    .line 60
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->medium:Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->getSize()I

    move-result v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;

    return-object v0
.end method


# virtual methods
.method public getLookupValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->mLookupValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->mSize:I

    return v0
.end method
