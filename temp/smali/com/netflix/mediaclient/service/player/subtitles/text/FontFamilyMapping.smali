.class public final enum Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;
.super Ljava/lang/Enum;
.source "FontFamilyMapping.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum casual:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum cursive:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum defaultType:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum monospace:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum monospaceSansSerif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum monospaceSansSerifApi:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum monospaceSerif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum monospaceSerifApi:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum proportionalSansSerif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum proportionalSansSerifApi:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum proportionalSerif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum proportionalSerifApi:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum sansSerif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum serif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum smallCapitals:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

.field public static final enum smallCapitalsApi:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;


# instance fields
.field private mLookup:Ljava/lang/String;

.field private mValue:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const-string/jumbo v1, "defaultType"

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v3, "default"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->defaultType:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const-string/jumbo v1, "monospaceSansSerif"

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const-string/jumbo v3, "monospaceSansSerif"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->monospaceSansSerif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const-string/jumbo v1, "monospaceSansSerifApi"

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const-string/jumbo v3, "monospaced_sans_serif"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->monospaceSansSerifApi:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const-string/jumbo v1, "monospaceSerif"

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const-string/jumbo v3, "monospaceSerif"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->monospaceSerif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const-string/jumbo v1, "monospaceSerifApi"

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const-string/jumbo v3, "monospaced_serif"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->monospaceSerifApi:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const-string/jumbo v1, "proportionalSansSerif"

    const/4 v2, 0x5

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v4, "proportionalSansSerif"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->proportionalSansSerif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const-string/jumbo v1, "proportionalSansSerifApi"

    const/4 v2, 0x6

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v4, "proportional_sans_serif"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->proportionalSansSerifApi:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const-string/jumbo v1, "proportionalSerif"

    const/4 v2, 0x7

    sget-object v3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v4, "proportionalSerif"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->proportionalSerif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const-string/jumbo v1, "proportionalSerifApi"

    const/16 v2, 0x8

    sget-object v3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v4, "proportional_serif"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->proportionalSerifApi:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const-string/jumbo v1, "casual"

    const/16 v2, 0x9

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v4, "casual"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->casual:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const-string/jumbo v1, "cursive"

    const/16 v2, 0xa

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v4, "cursive"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->cursive:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const-string/jumbo v1, "smallCapitals"

    const/16 v2, 0xb

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v4, "smallCapitals"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->smallCapitals:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const-string/jumbo v1, "smallCapitalsApi"

    const/16 v2, 0xc

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v4, "small_capitals"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->smallCapitalsApi:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const-string/jumbo v1, "monospace"

    const/16 v2, 0xd

    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const-string/jumbo v4, "monospace"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->monospace:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const-string/jumbo v1, "sansSerif"

    const/16 v2, 0xe

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v4, "sansSerif"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->sansSerif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    const-string/jumbo v1, "serif"

    const/16 v2, 0xf

    sget-object v3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v4, "serif"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;-><init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->serif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->defaultType:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->monospaceSansSerif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->monospaceSansSerifApi:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->monospaceSerif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->monospaceSerifApi:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->proportionalSansSerif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->proportionalSansSerifApi:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->proportionalSerif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->proportionalSerifApi:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->casual:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->cursive:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->smallCapitals:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->smallCapitalsApi:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->monospace:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->sansSerif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->serif:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/graphics/Typeface;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->mValue:Landroid/graphics/Typeface;

    .line 42
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->mLookup:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static isMonospace(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Z
    .locals 2

    .prologue
    .line 99
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isProportional(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Z
    .locals 1

    .prologue
    .line 109
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->isMonospace(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSansSerif(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Z
    .locals 2

    .prologue
    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSerif(Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;)Z
    .locals 2

    .prologue
    .line 89
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lookup(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->values()[Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 76
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->getLookupValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 77
    goto :goto_0

    .line 75
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    return-object v0
.end method


# virtual methods
.method public getLookupValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->mLookup:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->mValue:Landroid/graphics/Typeface;

    return-object v0
.end method
