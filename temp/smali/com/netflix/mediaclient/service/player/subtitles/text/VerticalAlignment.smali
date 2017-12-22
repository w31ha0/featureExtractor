.class public final enum Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;
.super Ljava/lang/Enum;
.source "VerticalAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

.field public static final enum bottom:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

.field public static final enum center:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

.field public static final enum top:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;


# instance fields
.field private mGravity:I

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    const-string/jumbo v1, "top"

    const-string/jumbo v2, "top"

    const/16 v3, 0x30

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->top:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    const-string/jumbo v1, "center"

    const-string/jumbo v2, "center"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->center:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    const-string/jumbo v1, "bottom"

    const-string/jumbo v2, "bottom"

    const/16 v3, 0x50

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->bottom:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->top:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->center:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->bottom:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->mValue:Ljava/lang/String;

    .line 23
    iput p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->mGravity:I

    .line 24
    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;
    .locals 6

    .prologue
    .line 52
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->top:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 55
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->values()[Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    .line 57
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 62
    :cond_2
    const-string/jumbo v0, "after"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->bottom:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    goto :goto_0

    .line 71
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->top:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    return-object v0
.end method


# virtual methods
.method public getGravity()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->mGravity:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->mValue:Ljava/lang/String;

    return-object v0
.end method
