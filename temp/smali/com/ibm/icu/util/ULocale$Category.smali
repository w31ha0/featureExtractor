.class public final enum Lcom/ibm/icu/util/ULocale$Category;
.super Ljava/lang/Enum;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/util/ULocale$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/ULocale$Category;

.field public static final enum DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

.field public static final enum FORMAT:Lcom/ibm/icu/util/ULocale$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 307
    new-instance v0, Lcom/ibm/icu/util/ULocale$Category;

    const-string/jumbo v1, "DISPLAY"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    .line 312
    new-instance v0, Lcom/ibm/icu/util/ULocale$Category;

    const-string/jumbo v1, "FORMAT"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/util/ULocale$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    .line 302
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/util/ULocale$Category;

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ibm/icu/util/ULocale$Category;->$VALUES:[Lcom/ibm/icu/util/ULocale$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 302
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Category;
    .locals 1

    .prologue
    .line 302
    const-class v0, Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/ULocale$Category;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/util/ULocale$Category;
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->$VALUES:[Lcom/ibm/icu/util/ULocale$Category;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/ULocale$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/ULocale$Category;

    return-object v0
.end method
