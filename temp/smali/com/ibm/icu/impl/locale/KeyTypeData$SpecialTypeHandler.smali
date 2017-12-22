.class abstract Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;
.super Ljava/lang/Object;
.source "KeyTypeData.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/locale/KeyTypeData$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract isWellFormed(Ljava/lang/String;)Z
.end method
