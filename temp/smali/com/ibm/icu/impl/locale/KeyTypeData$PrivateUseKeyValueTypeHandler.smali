.class Lcom/ibm/icu/impl/locale/KeyTypeData$PrivateUseKeyValueTypeHandler;
.super Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;
.source "KeyTypeData.java"


# static fields
.field private static final pat:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string/jumbo v0, "[a-zA-Z0-9]{3,8}(-[a-zA-Z0-9]{3,8})*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$PrivateUseKeyValueTypeHandler;->pat:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;-><init>(Lcom/ibm/icu/impl/locale/KeyTypeData$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/locale/KeyTypeData$1;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/ibm/icu/impl/locale/KeyTypeData$PrivateUseKeyValueTypeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method isWellFormed(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$PrivateUseKeyValueTypeHandler;->pat:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
