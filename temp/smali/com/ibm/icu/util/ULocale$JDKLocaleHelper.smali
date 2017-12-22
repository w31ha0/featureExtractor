.class final Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;
.super Ljava/lang/Object;
.source "ULocale.java"


# static fields
.field private static final JAVA6_MAPDATA:[[Ljava/lang/String;

.field private static eDISPLAY:Ljava/lang/Object;

.field private static eFORMAT:Ljava/lang/Object;

.field private static hasLocaleCategories:Z

.field private static hasScriptsAndUnicodeExtensions:Z

.field private static mForLanguageTag:Ljava/lang/reflect/Method;

.field private static mGetDefault:Ljava/lang/reflect/Method;

.field private static mGetExtension:Ljava/lang/reflect/Method;

.field private static mGetExtensionKeys:Ljava/lang/reflect/Method;

.field private static mGetScript:Ljava/lang/reflect/Method;

.field private static mGetUnicodeLocaleAttributes:Ljava/lang/reflect/Method;

.field private static mGetUnicodeLocaleKeys:Ljava/lang/reflect/Method;

.field private static mGetUnicodeLocaleType:Ljava/lang/reflect/Method;

.field private static mSetDefault:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 4046
    sput-boolean v1, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z

    .line 4047
    sput-boolean v1, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    .line 4073
    new-array v0, v8, [[Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ja_JP_JP"

    aput-object v4, v3, v1

    const-string/jumbo v4, "ja_JP"

    aput-object v4, v3, v6

    const-string/jumbo v4, "calendar"

    aput-object v4, v3, v7

    const-string/jumbo v4, "japanese"

    aput-object v4, v3, v8

    const/4 v4, 0x4

    const-string/jumbo v5, "ja"

    aput-object v5, v3, v4

    aput-object v3, v0, v1

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "no_NO_NY"

    aput-object v4, v3, v1

    const-string/jumbo v4, "nn_NO"

    aput-object v4, v3, v6

    aput-object v2, v3, v7

    aput-object v2, v3, v8

    const/4 v4, 0x4

    const-string/jumbo v5, "nn"

    aput-object v5, v3, v4

    aput-object v3, v0, v6

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "th_TH_TH"

    aput-object v4, v3, v1

    const-string/jumbo v4, "th_TH"

    aput-object v4, v3, v6

    const-string/jumbo v4, "numbers"

    aput-object v4, v3, v7

    const-string/jumbo v4, "thai"

    aput-object v4, v3, v8

    const/4 v4, 0x4

    const-string/jumbo v5, "th"

    aput-object v5, v3, v4

    aput-object v3, v0, v7

    sput-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    .line 4083
    :try_start_0
    const-class v3, Ljava/util/Locale;

    const-string/jumbo v4, "getScript"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mGetScript:Ljava/lang/reflect/Method;

    .line 4084
    const-class v3, Ljava/util/Locale;

    const-string/jumbo v4, "getExtensionKeys"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mGetExtensionKeys:Ljava/lang/reflect/Method;

    .line 4085
    const-class v0, Ljava/util/Locale;

    const-string/jumbo v3, "getExtension"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mGetExtension:Ljava/lang/reflect/Method;

    .line 4086
    const-class v3, Ljava/util/Locale;

    const-string/jumbo v4, "getUnicodeLocaleKeys"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleKeys:Ljava/lang/reflect/Method;

    .line 4087
    const-class v3, Ljava/util/Locale;

    const-string/jumbo v4, "getUnicodeLocaleAttributes"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleAttributes:Ljava/lang/reflect/Method;

    .line 4088
    const-class v0, Ljava/util/Locale;

    const-string/jumbo v3, "getUnicodeLocaleType"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleType:Ljava/lang/reflect/Method;

    .line 4089
    const-class v0, Ljava/util/Locale;

    const-string/jumbo v3, "forLanguageTag"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mForLanguageTag:Ljava/lang/reflect/Method;

    .line 4091
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5

    .line 4100
    :goto_0
    :try_start_1
    const-class v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v4

    .line 4101
    array-length v5, v4

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 4102
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "java.util.Locale$Category"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v2, v0

    .line 4107
    :cond_0
    if-nez v2, :cond_3

    .line 4136
    :cond_1
    :goto_2
    return-void

    .line 4101
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 4110
    :cond_3
    const-class v0, Ljava/util/Locale;

    const-string/jumbo v3, "getDefault"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mGetDefault:Ljava/lang/reflect/Method;

    .line 4111
    const-class v0, Ljava/util/Locale;

    const-string/jumbo v3, "setDefault"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/util/Locale;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mSetDefault:Ljava/lang/reflect/Method;

    .line 4113
    const-string/jumbo v3, "name"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 4114
    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    .line 4115
    array-length v4, v2

    :goto_3
    if-ge v1, v4, :cond_6

    aget-object v5, v2, v1

    .line 4116
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4117
    const-string/jumbo v6, "DISPLAY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4118
    sput-object v5, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    .line 4115
    :cond_4
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 4119
    :cond_5
    const-string/jumbo v6, "FORMAT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4120
    sput-object v5, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    goto :goto_4

    .line 4128
    :catch_0
    move-exception v0

    goto :goto_2

    .line 4123
    :cond_6
    sget-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 4127
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 4129
    :catch_1
    move-exception v0

    goto :goto_2

    .line 4132
    :catch_2
    move-exception v0

    goto :goto_2

    .line 4131
    :catch_3
    move-exception v0

    goto :goto_2

    .line 4130
    :catch_4
    move-exception v0

    goto :goto_2

    .line 4094
    :catch_5
    move-exception v0

    goto/16 :goto_0

    .line 4093
    :catch_6
    move-exception v0

    goto/16 :goto_0

    .line 4092
    :catch_7
    move-exception v0

    goto/16 :goto_0
.end method

.method public static getDefault(Lcom/ibm/icu/util/ULocale$Category;)Ljava/util/Locale;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 4372
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 4373
    sget-boolean v2, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    if-eqz v2, :cond_0

    .line 4375
    sget-object v2, Lcom/ibm/icu/util/ULocale$3;->$SwitchMap$com$ibm$icu$util$ULocale$Category:[I

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 4383
    :goto_0
    if-eqz v0, :cond_0

    .line 4385
    :try_start_0
    sget-object v2, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mGetDefault:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4395
    :goto_1
    return-object v0

    .line 4377
    :pswitch_0
    sget-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    goto :goto_0

    .line 4380
    :pswitch_1
    sget-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    goto :goto_0

    .line 4386
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 4392
    goto :goto_1

    .line 4388
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 4392
    goto :goto_1

    .line 4390
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 4375
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4447
    const/4 v1, 0x0

    .line 4449
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4451
    :try_start_0
    new-instance v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper$1;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4463
    :goto_0
    return-object v0

    .line 4457
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 4459
    goto :goto_0

    .line 4461
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasLocaleCategories()Z
    .locals 1

    .prologue
    .line 4142
    sget-boolean v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    return v0
.end method

.method public static isOriginalDefaultLocale(Ljava/util/Locale;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4428
    sget-boolean v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z

    if-eqz v0, :cond_1

    .line 4429
    const-string/jumbo v0, ""

    .line 4431
    :try_start_0
    sget-object v3, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mGetScript:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4436
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "user.language"

    invoke-static {v4}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4437
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "user.country"

    invoke-static {v4}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4438
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "user.variant"

    invoke-static {v4}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "user.script"

    .line 4439
    invoke-static {v3}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 4441
    :goto_0
    return v0

    .line 4432
    :catch_0
    move-exception v0

    move v0, v2

    .line 4433
    goto :goto_0

    :cond_0
    move v0, v2

    .line 4439
    goto :goto_0

    .line 4441
    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "user.language"

    invoke-static {v3}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4442
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "user.country"

    invoke-static {v3}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4443
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "user.variant"

    invoke-static {v3}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    move v0, v1

    .line 4441
    goto :goto_0

    :cond_2
    move v1, v2

    .line 4443
    goto :goto_1
.end method

.method public static toLocale(Lcom/ibm/icu/util/ULocale;)Ljava/util/Locale;
    .locals 1

    .prologue
    .line 4150
    sget-boolean v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->toLocale7(Lcom/ibm/icu/util/ULocale;)Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->toLocale6(Lcom/ibm/icu/util/ULocale;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method private static toLocale6(Lcom/ibm/icu/util/ULocale;)Ljava/util/Locale;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 4351
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 4352
    :goto_0
    sget-object v3, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 4353
    sget-object v3, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4354
    :cond_0
    sget-object v3, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v5

    if-eqz v3, :cond_1

    .line 4355
    sget-object v3, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v5

    invoke-virtual {p0, v3}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4356
    if-eqz v3, :cond_2

    sget-object v4, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4357
    sget-object v2, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    .line 4366
    :goto_1
    new-instance v2, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v2, v0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 4367
    invoke-virtual {v2}, Lcom/ibm/icu/impl/LocaleIDParser;->getLanguageScriptCountryVariant()[Ljava/lang/String;

    move-result-object v0

    .line 4368
    new-instance v2, Ljava/util/Locale;

    aget-object v1, v0, v1

    aget-object v3, v0, v5

    aget-object v0, v0, v6

    invoke-direct {v2, v1, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 4361
    :cond_1
    sget-object v2, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    goto :goto_1

    .line 4352
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method private static toLocale7(Lcom/ibm/icu/util/ULocale;)Ljava/util/Locale;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 4310
    .line 4311
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4312
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4319
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 4332
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4335
    :try_start_0
    sget-object v1, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mForLanguageTag:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4342
    :cond_1
    if-nez v0, :cond_2

    .line 4345
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4347
    :cond_2
    return-object v0

    .line 4336
    :catch_0
    move-exception v0

    .line 4337
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 4338
    :catch_1
    move-exception v0

    .line 4339
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toULocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
    .locals 1

    .prologue
    .line 4146
    sget-boolean v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->toULocale7(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->toULocale6(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    goto :goto_0
.end method

.method private static toULocale6(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4291
    .line 4292
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4293
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 4294
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    .line 4306
    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    .line 4296
    :goto_1
    sget-object v3, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 4297
    sget-object v3, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4298
    new-instance v1, Lcom/ibm/icu/impl/LocaleIDParser;

    sget-object v2, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 4299
    sget-object v2, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sget-object v3, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v0, v3, v0

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 4300
    invoke-virtual {v1}, Lcom/ibm/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4304
    :goto_2
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;Lcom/ibm/icu/util/ULocale$1;)V

    move-object v0, v1

    goto :goto_0

    .line 4296
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_2
.end method

.method private static toULocale7(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
    .locals 12

    .prologue
    .line 4154
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 4155
    const-string/jumbo v0, ""

    .line 4156
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    .line 4157
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    .line 4159
    const/4 v4, 0x0

    .line 4160
    const/4 v3, 0x0

    .line 4163
    :try_start_0
    sget-object v1, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mGetScript:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4165
    sget-object v2, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mGetExtensionKeys:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 4166
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 4167
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    .line 4168
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    const/16 v5, 0x75

    if-ne v2, v5, :cond_7

    .line 4173
    sget-object v2, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleAttributes:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 4174
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4175
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .line 4176
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4177
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 4209
    :catch_0
    move-exception v0

    .line 4210
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move-object v5, v4

    .line 4183
    :cond_1
    :try_start_1
    sget-object v2, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleKeys:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 4184
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v4, v6

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4185
    sget-object v2, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleType:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v6, v11

    invoke-virtual {v2, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4186
    if-eqz v2, :cond_5

    .line 4187
    const-string/jumbo v6, "va"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4189
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v2

    :goto_3
    move-object v2, v1

    move-object v1, v3

    :goto_4
    move-object v3, v1

    move-object v4, v2

    .line 4197
    goto :goto_2

    .line 4189
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 4191
    :cond_3
    if-nez v3, :cond_4

    .line 4192
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 4194
    :cond_4
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v1, v3

    move-object v2, v4

    goto :goto_4

    :cond_6
    move-object v1, v5

    :goto_5
    move-object v6, v4

    move-object v4, v1

    .line 4207
    goto/16 :goto_0

    .line 4199
    :cond_7
    sget-object v2, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mGetExtension:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v5, v10

    invoke-virtual {v2, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4200
    if-eqz v2, :cond_9

    .line 4201
    if-nez v3, :cond_8

    .line 4202
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 4204
    :cond_8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    move-object v1, v4

    move-object v4, v6

    goto :goto_5

    .line 4211
    :catch_1
    move-exception v0

    .line 4212
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 4221
    :cond_a
    const-string/jumbo v1, "no"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string/jumbo v1, "NO"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string/jumbo v1, "NY"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4222
    const-string/jumbo v1, "nn"

    .line 4223
    const-string/jumbo v6, ""

    .line 4227
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4229
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 4230
    const/16 v1, 0x5f

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4231
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4234
    :cond_b
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 4235
    const/16 v0, 0x5f

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4236
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4239
    :cond_c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 4240
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 4241
    const/16 v0, 0x5f

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4243
    :cond_d
    const/16 v0, 0x5f

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4244
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4247
    :cond_e
    if-eqz v4, :cond_12

    .line 4249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4250
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_f

    .line 4252
    const/16 v4, 0x2d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4254
    :cond_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 4256
    :cond_10
    if-nez v3, :cond_11

    .line 4257
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 4259
    :cond_11
    const-string/jumbo v0, "attribute"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4262
    :cond_12
    if-eqz v3, :cond_15

    .line 4263
    const/16 v0, 0x40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4264
    const/4 v0, 0x0

    .line 4265
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4267
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4269
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_16

    .line 4271
    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4273
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_13

    const-string/jumbo v0, "yes"

    :cond_13
    invoke-static {v1, v0}, Lcom/ibm/icu/util/ULocale;->toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    .line 4276
    :goto_9
    if-eqz v2, :cond_14

    .line 4277
    const/16 v0, 0x3b

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    .line 4281
    :goto_a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4282
    const/16 v2, 0x3d

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4283
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v0

    .line 4284
    goto :goto_8

    .line 4279
    :cond_14
    const/4 v0, 0x1

    goto :goto_a

    .line 4287
    :cond_15
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;Lcom/ibm/icu/util/ULocale$1;)V

    return-object v0

    :cond_16
    move-object v3, v1

    move-object v1, v0

    goto :goto_9

    :cond_17
    move-object v1, v7

    goto/16 :goto_6
.end method
