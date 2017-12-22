.class public final enum Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;
.super Ljava/lang/Enum;
.source "ThemeBundle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

.field public static final enum ANTHONY:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

.field public static final enum DARK:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

.field public static final enum ED:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

.field public static final enum EMMANUEL:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

.field public static final enum GREG:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

.field public static final enum JULIANO:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

.field public static final enum LIGHT:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

.field public static final enum PRESIDENTS_DAY:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

.field public static final enum SHIVA:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

.field public static final enum SHIVAUN:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

.field public static final enum SWAMP_THING:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

.field public static final enum TYLER:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

.field public static final enum VALENTINES:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;


# instance fields
.field theme:Lcom/netflix/mediaclient/ui/user_theme/Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 6
    new-instance v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    const-string/jumbo v7, "DARK"

    const/4 v8, 0x0

    new-instance v0, Lcom/netflix/mediaclient/ui/user_theme/Theme;

    const-string/jumbo v1, "#141414"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const v3, -0x333334

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/user_theme/Theme;-><init>(IIIIZ)V

    invoke-direct {v6, v7, v8, v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/user_theme/Theme;)V

    sput-object v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->DARK:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    .line 7
    new-instance v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    const-string/jumbo v7, "LIGHT"

    const/4 v8, 0x1

    new-instance v0, Lcom/netflix/mediaclient/ui/user_theme/Theme;

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    const-string/jumbo v3, "#4c4c4c"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/high16 v4, -0x1000000

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/user_theme/Theme;-><init>(IIIIZ)V

    invoke-direct {v6, v7, v8, v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/user_theme/Theme;)V

    sput-object v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->LIGHT:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    .line 8
    new-instance v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    const-string/jumbo v7, "VALENTINES"

    const/4 v8, 0x2

    new-instance v0, Lcom/netflix/mediaclient/ui/user_theme/Theme;

    const-string/jumbo v1, "#f4d1d1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/high16 v3, -0x10000

    const/high16 v4, -0x1000000

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/user_theme/Theme;-><init>(IIIIZ)V

    invoke-direct {v6, v7, v8, v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/user_theme/Theme;)V

    sput-object v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->VALENTINES:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    .line 9
    new-instance v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    const-string/jumbo v7, "PRESIDENTS_DAY"

    const/4 v8, 0x3

    new-instance v0, Lcom/netflix/mediaclient/ui/user_theme/Theme;

    const/high16 v1, -0x10000

    const/4 v2, -0x1

    const v3, -0xffff01

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/user_theme/Theme;-><init>(IIIIZ)V

    invoke-direct {v6, v7, v8, v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/user_theme/Theme;)V

    sput-object v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->PRESIDENTS_DAY:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    .line 10
    new-instance v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    const-string/jumbo v7, "TYLER"

    const/4 v8, 0x4

    new-instance v0, Lcom/netflix/mediaclient/ui/user_theme/Theme;

    const/high16 v1, -0x1000000

    const/high16 v2, -0x10000

    const/high16 v3, -0x1000000

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/user_theme/Theme;-><init>(IIIIZ)V

    invoke-direct {v6, v7, v8, v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/user_theme/Theme;)V

    sput-object v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->TYLER:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    .line 11
    new-instance v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    const-string/jumbo v7, "EMMANUEL"

    const/4 v8, 0x5

    new-instance v0, Lcom/netflix/mediaclient/ui/user_theme/Theme;

    const v1, -0xffff01

    const/4 v2, -0x1

    const/high16 v3, -0x10000

    const/high16 v4, -0x1000000

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/user_theme/Theme;-><init>(IIIIZ)V

    invoke-direct {v6, v7, v8, v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/user_theme/Theme;)V

    sput-object v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->EMMANUEL:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    .line 12
    new-instance v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    const-string/jumbo v7, "SHIVA"

    const/4 v8, 0x6

    new-instance v0, Lcom/netflix/mediaclient/ui/user_theme/Theme;

    const-string/jumbo v1, "#ff8000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const-string/jumbo v3, "#008000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/high16 v4, -0x1000000

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/user_theme/Theme;-><init>(IIIIZ)V

    invoke-direct {v6, v7, v8, v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/user_theme/Theme;)V

    sput-object v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->SHIVA:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    .line 13
    new-instance v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    const-string/jumbo v7, "ANTHONY"

    const/4 v8, 0x7

    new-instance v0, Lcom/netflix/mediaclient/ui/user_theme/Theme;

    const-string/jumbo v1, "#5d8aa8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "#4169e1"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "#000080"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/user_theme/Theme;-><init>(IIIIZ)V

    invoke-direct {v6, v7, v8, v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/user_theme/Theme;)V

    sput-object v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->ANTHONY:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    .line 14
    new-instance v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    const-string/jumbo v7, "SHIVAUN"

    const/16 v8, 0x8

    new-instance v0, Lcom/netflix/mediaclient/ui/user_theme/Theme;

    const-string/jumbo v1, "#461b7e"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "#8b31c7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const v3, -0xffff01

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/user_theme/Theme;-><init>(IIIIZ)V

    invoke-direct {v6, v7, v8, v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/user_theme/Theme;)V

    sput-object v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->SHIVAUN:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    .line 15
    new-instance v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    const-string/jumbo v7, "GREG"

    const/16 v8, 0x9

    new-instance v0, Lcom/netflix/mediaclient/ui/user_theme/Theme;

    const/4 v1, -0x1

    const/high16 v2, -0x10000

    const/high16 v3, -0x10000

    const/high16 v4, -0x1000000

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/user_theme/Theme;-><init>(IIIIZ)V

    invoke-direct {v6, v7, v8, v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/user_theme/Theme;)V

    sput-object v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->GREG:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    .line 16
    new-instance v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    const-string/jumbo v7, "JULIANO"

    const/16 v8, 0xa

    new-instance v0, Lcom/netflix/mediaclient/ui/user_theme/Theme;

    const-string/jumbo v1, "#007600"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "#fefe00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "#3200fe"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/high16 v4, -0x1000000

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/user_theme/Theme;-><init>(IIIIZ)V

    invoke-direct {v6, v7, v8, v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/user_theme/Theme;)V

    sput-object v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->JULIANO:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    .line 17
    new-instance v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    const-string/jumbo v7, "ED"

    const/16 v8, 0xb

    new-instance v0, Lcom/netflix/mediaclient/ui/user_theme/Theme;

    const-string/jumbo v1, "#d7cec7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "#76323f"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "#565656"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#565656"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/user_theme/Theme;-><init>(IIIIZ)V

    invoke-direct {v6, v7, v8, v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/user_theme/Theme;)V

    sput-object v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->ED:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    .line 18
    new-instance v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    const-string/jumbo v7, "SWAMP_THING"

    const/16 v8, 0xc

    new-instance v0, Lcom/netflix/mediaclient/ui/user_theme/Theme;

    const-string/jumbo v1, "#004000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "#008000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "#c3c30e"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/high16 v4, -0x1000000

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/user_theme/Theme;-><init>(IIIIZ)V

    invoke-direct {v6, v7, v8, v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/user_theme/Theme;)V

    sput-object v6, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->SWAMP_THING:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    .line 5
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->DARK:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->LIGHT:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->VALENTINES:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->PRESIDENTS_DAY:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->TYLER:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->EMMANUEL:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->SHIVA:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->ANTHONY:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->SHIVAUN:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->GREG:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->JULIANO:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->ED:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->SWAMP_THING:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->$VALUES:[Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/user_theme/Theme;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/user_theme/Theme;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->theme:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->$VALUES:[Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    return-object v0
.end method


# virtual methods
.method public getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->theme:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    return-object v0
.end method
