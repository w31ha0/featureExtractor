.class public final enum Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;
.super Ljava/lang/Enum;
.source "HorizontalAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

.field public static final enum center:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

.field public static final enum left:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

.field public static final enum right:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;


# instance fields
.field private mGravity:I

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    const-string/jumbo v1, "left"

    const-string/jumbo v2, "left"

    invoke-direct {v0, v1, v5, v2, v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->left:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    const-string/jumbo v1, "center"

    const-string/jumbo v2, "center"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->center:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    const-string/jumbo v1, "right"

    const-string/jumbo v2, "right"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->right:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    .line 16
    new-array v0, v7, [Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->left:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->center:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->right:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

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
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->mValue:Ljava/lang/String;

    .line 23
    iput p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->mGravity:I

    .line 24
    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;
    .locals 6

    .prologue
    .line 52
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->left:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 55
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->values()[Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    .line 57
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->getValue()Ljava/lang/String;

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
    const-string/jumbo v0, "right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->right:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    goto :goto_0

    .line 71
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->left:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    return-object v0
.end method


# virtual methods
.method public getGravity()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->mGravity:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->mValue:Ljava/lang/String;

    return-object v0
.end method
