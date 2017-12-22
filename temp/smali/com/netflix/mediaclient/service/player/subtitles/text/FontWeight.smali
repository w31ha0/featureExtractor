.class public final enum Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;
.super Ljava/lang/Enum;
.source "FontWeight.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

.field public static final enum Black:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

.field public static final enum Bold:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

.field public static final enum Book:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

.field public static final enum ExtraBlack:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

.field public static final enum Light:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

.field public static final enum Medium:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

.field private static final NORMAL:Ljava/lang/String; = "normal"

.field public static final enum Regular:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

.field public static final enum SemiBold:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

.field public static final enum Thin:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    const-string/jumbo v1, "Thin"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Thin:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    const-string/jumbo v1, "Light"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Light:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    const-string/jumbo v1, "Book"

    const/16 v2, 0x12c

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Book:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    const-string/jumbo v1, "Regular"

    const/16 v2, 0x190

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Regular:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    const-string/jumbo v1, "Medium"

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Medium:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    const-string/jumbo v1, "SemiBold"

    const/4 v2, 0x5

    const/16 v3, 0x258

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->SemiBold:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    const-string/jumbo v1, "Bold"

    const/4 v2, 0x6

    const/16 v3, 0x2bc

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Bold:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    const-string/jumbo v1, "Black"

    const/4 v2, 0x7

    const/16 v3, 0x320

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Black:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    const-string/jumbo v1, "ExtraBlack"

    const/16 v2, 0x8

    const/16 v3, 0x320

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->ExtraBlack:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Thin:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Light:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Book:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Regular:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Medium:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->SemiBold:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Bold:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Black:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->ExtraBlack:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->mValue:I

    .line 39
    return-void
.end method

.method private static convertName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->Regular:Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->name()Ljava/lang/String;

    move-result-object p0

    .line 63
    :cond_0
    return-object p0
.end method

.method public static createFontWeight(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;
    .locals 6

    .prologue
    .line 47
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->convertName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->values()[Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 49
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    :goto_1
    return-object v0

    .line 48
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontWeight;->mValue:I

    return v0
.end method
