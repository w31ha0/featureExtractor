.class public final enum Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;
.super Ljava/lang/Enum;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

.field public static final enum DIRECT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

.field public static final enum LOCALE_DEFAULT_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

.field public static final enum LOCALE_ONLY:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

.field public static final enum LOCALE_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1057
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    const-string/jumbo v1, "LOCALE_DEFAULT_ROOT"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    .line 1070
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    const-string/jumbo v1, "LOCALE_ROOT"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    .line 1081
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    const-string/jumbo v1, "LOCALE_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ONLY:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    .line 1088
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    const-string/jumbo v1, "DIRECT"

    invoke-direct {v0, v1, v5}, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    .line 1049
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ONLY:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->$VALUES:[Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

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
    .line 1049
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;
    .locals 1

    .prologue
    .line 1049
    const-class v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;
    .locals 1

    .prologue
    .line 1049
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->$VALUES:[Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    return-object v0
.end method
