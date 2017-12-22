.class public final enum Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum NEGATIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum NEGATIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum NEGATIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum POSITIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum POSITIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum POSITIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;


# instance fields
.field private _defaultPattern:Ljava/lang/String;

.field private _isPositive:Z

.field private _required:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 231
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string/jumbo v1, "POSITIVE_HM"

    const-string/jumbo v3, "+H:mm"

    const-string/jumbo v4, "Hm"

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 236
    new-instance v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string/jumbo v4, "POSITIVE_HMS"

    const-string/jumbo v6, "+H:mm:ss"

    const-string/jumbo v7, "Hms"

    move v8, v5

    invoke-direct/range {v3 .. v8}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 241
    new-instance v6, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string/jumbo v7, "NEGATIVE_HM"

    const-string/jumbo v9, "-H:mm"

    const-string/jumbo v10, "Hm"

    move v8, v12

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 246
    new-instance v6, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string/jumbo v7, "NEGATIVE_HMS"

    const-string/jumbo v9, "-H:mm:ss"

    const-string/jumbo v10, "Hms"

    move v8, v13

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 251
    new-instance v6, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string/jumbo v7, "POSITIVE_H"

    const-string/jumbo v9, "+H"

    const-string/jumbo v10, "H"

    move v8, v14

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 256
    new-instance v6, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string/jumbo v7, "NEGATIVE_H"

    const/4 v8, 0x5

    const-string/jumbo v9, "-H"

    const-string/jumbo v10, "H"

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 226
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->$VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 263
    iput-object p3, p0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_defaultPattern:Ljava/lang/String;

    .line 264
    iput-object p4, p0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_required:Ljava/lang/String;

    .line 265
    iput-boolean p5, p0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_isPositive:Z

    .line 266
    return-void
.end method

.method static synthetic access$100(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->defaultPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->required()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->isPositive()Z

    move-result v0

    return v0
.end method

.method private defaultPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_defaultPattern:Ljava/lang/String;

    return-object v0
.end method

.method private isPositive()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_isPositive:Z

    return v0
.end method

.method private required()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_required:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    .locals 1

    .prologue
    .line 226
    const-class v0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->$VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    return-object v0
.end method
