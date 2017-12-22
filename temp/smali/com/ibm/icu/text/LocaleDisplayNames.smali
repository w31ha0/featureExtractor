.class public abstract Lcom/ibm/icu/text/LocaleDisplayNames;
.super Ljava/lang/Object;
.source "LocaleDisplayNames.java"


# static fields
.field private static final FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

.field private static final FACTORY_DISPLAYCONTEXT:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 422
    const-string/jumbo v1, "com.ibm.icu.text.LocaleDisplayNames.impl"

    const-string/jumbo v2, "com.ibm.icu.impl.LocaleDisplayNamesImpl"

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 430
    :try_start_1
    const-string/jumbo v1, "getInstance"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/ibm/icu/util/ULocale;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 435
    :goto_0
    :try_start_2
    const-string/jumbo v3, "getInstance"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/ibm/icu/util/ULocale;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [Lcom/ibm/icu/text/DisplayContext;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 444
    :goto_1
    sput-object v1, Lcom/ibm/icu/text/LocaleDisplayNames;->FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

    .line 445
    sput-object v0, Lcom/ibm/icu/text/LocaleDisplayNames;->FACTORY_DISPLAYCONTEXT:Ljava/lang/reflect/Method;

    .line 446
    return-void

    .line 432
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 440
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    .line 437
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/LocaleDisplayNames;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    invoke-static {p0, v0}, Lcom/ibm/icu/text/LocaleDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;)Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;)Lcom/ibm/icu/text/LocaleDisplayNames;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 83
    .line 84
    sget-object v0, Lcom/ibm/icu/text/LocaleDisplayNames;->FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 86
    :try_start_0
    sget-object v0, Lcom/ibm/icu/text/LocaleDisplayNames;->FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/LocaleDisplayNames;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :goto_0
    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/ibm/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;

    invoke-direct {v0, p0, p1, v1}, Lcom/ibm/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;Lcom/ibm/icu/text/LocaleDisplayNames$1;)V

    .line 97
    :cond_0
    return-object v0

    .line 88
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 92
    goto :goto_0

    .line 90
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abstract localeDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.end method

.method public abstract regionDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method
