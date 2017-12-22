.class public final enum Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;
.super Ljava/lang/Enum;
.source "ColorMapping.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field private static final TAG:Ljava/lang/String; = "nf_subtitles"

.field public static final enum aqua:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum black:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum blue:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum cyan:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum fuchsia:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum gray:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum green:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum lime:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum magenta:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum maroon:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum navy:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum olive:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum orange:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum pink:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum purple:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum red:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum silver:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum teal:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum transparent:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum white:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

.field public static final enum yellow:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;


# instance fields
.field private mColorStringValue:Ljava/lang/String;

.field private mLookupValue:Ljava/lang/String;

.field private mValue:D


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 21
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "black"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-string/jumbo v6, "black"

    const-string/jumbo v7, "000000"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->black:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 22
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "silver"

    const/4 v3, 0x1

    const-wide v4, 0x4168181800000000L    # 1.2632256E7

    const-string/jumbo v6, "silver"

    const-string/jumbo v7, "c0c0c0"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->silver:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 23
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "gray"

    const/4 v3, 0x2

    const-wide v4, 0x4160101000000000L    # 8421504.0

    const-string/jumbo v6, "gray"

    const-string/jumbo v7, "808080"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->gray:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 24
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "white"

    const/4 v3, 0x3

    const-wide v4, 0x416fffffe0000000L    # 1.6777215E7

    const-string/jumbo v6, "white"

    const-string/jumbo v7, "ffffff"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->white:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 25
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "maroon"

    const/4 v3, 0x4

    const-wide/high16 v4, 0x4160000000000000L    # 8388608.0

    const-string/jumbo v6, "maroon"

    const-string/jumbo v7, "800000"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->maroon:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 26
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "red"

    const/4 v3, 0x5

    const-wide v4, 0x416fe00000000000L    # 1.671168E7

    const-string/jumbo v6, "red"

    const-string/jumbo v7, "ff0000"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->red:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 27
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "purple"

    const/4 v3, 0x6

    const-wide v4, 0x4160001000000000L    # 8388736.0

    const-string/jumbo v6, "purple"

    const-string/jumbo v7, "800080"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->purple:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 28
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "fuchsia"

    const/4 v3, 0x7

    const-wide v4, 0x416fe01fe0000000L    # 1.6711935E7

    const-string/jumbo v6, "fuchsia"

    const-string/jumbo v7, "ff00ff"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->fuchsia:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 29
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "magenta"

    const/16 v3, 0x8

    const-wide v4, 0x416fe01fe0000000L    # 1.6711935E7

    const-string/jumbo v6, "magenta"

    const-string/jumbo v7, "ff00ff"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->magenta:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 30
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "green"

    const/16 v3, 0x9

    const-wide v4, 0x40efe00000000000L    # 65280.0

    const-string/jumbo v6, "green"

    const-string/jumbo v7, "00ff00"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->green:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 31
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "lime"

    const/16 v3, 0xa

    const-wide v4, 0x40efe00000000000L    # 65280.0

    const-string/jumbo v6, "lime"

    const-string/jumbo v7, "00ff00"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->lime:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 32
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "olive"

    const/16 v3, 0xb

    const-wide v4, 0x4160100000000000L    # 8421376.0

    const-string/jumbo v6, "olive"

    const-string/jumbo v7, "808000"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->olive:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 33
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "yellow"

    const/16 v3, 0xc

    const-wide v4, 0x416fffe000000000L    # 1.677696E7

    const-string/jumbo v6, "yellow"

    const-string/jumbo v7, "ffff00"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->yellow:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 34
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "navy"

    const/16 v3, 0xd

    const-wide/high16 v4, 0x4060000000000000L    # 128.0

    const-string/jumbo v6, "navy"

    const-string/jumbo v7, "000080"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->navy:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 35
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "blue"

    const/16 v3, 0xe

    const-wide v4, 0x406fe00000000000L    # 255.0

    const-string/jumbo v6, "blue"

    const-string/jumbo v7, "0000ff"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->blue:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 36
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "teal"

    const/16 v3, 0xf

    const-wide v4, 0x40e0100000000000L    # 32896.0

    const-string/jumbo v6, "teal"

    const-string/jumbo v7, "008080"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->teal:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 37
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "aqua"

    const/16 v3, 0x10

    const-wide v4, 0x40efffe000000000L    # 65535.0

    const-string/jumbo v6, "aqua"

    const-string/jumbo v7, "00ffff"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->aqua:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 38
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "cyan"

    const/16 v3, 0x11

    const-wide v4, 0x40efffe000000000L    # 65535.0

    const-string/jumbo v6, "cyan"

    const-string/jumbo v7, "00ffff"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->cyan:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 39
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "orange"

    const/16 v3, 0x12

    const-wide v4, 0x416ff4a000000000L    # 1.675392E7

    const-string/jumbo v6, "orange"

    const-string/jumbo v7, "ffa500"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->orange:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 40
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "pink"

    const/16 v3, 0x13

    const-wide v4, 0x416ff81960000000L    # 1.6761035E7

    const-string/jumbo v6, "pink"

    const-string/jumbo v7, "ffc0cb"

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->pink:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 41
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const-string/jumbo v2, "transparent"

    const/16 v3, 0x14

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-string/jumbo v6, "transparent"

    const-string/jumbo v7, ""

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;-><init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->transparent:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    .line 20
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->black:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->silver:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->gray:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->white:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->maroon:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->red:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->purple:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->fuchsia:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->magenta:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->green:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->lime:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->olive:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->yellow:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->navy:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->blue:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->teal:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->aqua:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->cyan:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->orange:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->pink:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->transparent:Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->mValue:D

    .line 64
    iput-object p5, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->mLookupValue:Ljava/lang/String;

    .line 65
    iput-object p6, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->mColorStringValue:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static findColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    .line 122
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->lookup(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->getColorStringValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->parseColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lookup(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->values()[Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 105
    iget-object v5, v1, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->mLookupValue:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 106
    goto :goto_0

    .line 104
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method private static parseColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 138
    const/4 v2, 0x0

    aget-char v2, v1, v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_0

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    array-length v3, v1

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 141
    aget-char v0, v1, v5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-char v3, v1, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    aget-char v0, v1, v7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-char v3, v1, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    const/4 v0, 0x5

    aget-char v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x6

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_0
    return-object v0

    .line 144
    :cond_1
    array-length v3, v1

    if-ne v3, v8, :cond_0

    .line 146
    aget-char v0, v1, v5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-char v3, v1, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    aget-char v0, v1, v6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-char v3, v1, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    aget-char v0, v1, v7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-char v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static resolveColor(Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 160
    if-nez p1, :cond_0

    .line 175
    :goto_0
    return-object v0

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->opacityToHex(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v2

    .line 174
    const-string/jumbo v2, "nf_subtitles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resolve color failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    return-object v0
.end method


# virtual methods
.method public getColorStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->mColorStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->mLookupValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->mValue:D

    return-wide v0
.end method
