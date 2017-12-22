.class public final Lcom/netflix/mediaclient/service/user/UserLocaleRepository;
.super Ljava/lang/Object;
.source "UserLocaleRepository.java"


# static fields
.field private static final LANGUAGE_DELIMITER:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "nf_loc"


# instance fields
.field private currentAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

.field private defaultAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

.field private preferredLanguages:Ljava/lang/String;

.field private supportedLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/l10n/UserLocale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    .line 60
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->initSupportedLocales()V

    .line 61
    return-void
.end method

.method private findBestMatch(Ljava/lang/String;)Lcom/netflix/mediaclient/util/l10n/UserLocale;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 158
    .line 159
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->toUserLocales(Ljava/lang/String;)[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v5

    .line 160
    array-length v0, v5

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 161
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v2, "Empty list of preferred languages, set default"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move v4, v3

    .line 165
    :goto_1
    array-length v0, v5

    if-ge v4, v0, :cond_0

    move v2, v3

    .line 169
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    .line 174
    aget-object v6, v5, v4

    if-eqz v6, :cond_5

    aget-object v6, v5, v4

    invoke-virtual {v6, v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v5, v4

    invoke-virtual {v6, v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->equalsByLanguage(Lcom/netflix/mediaclient/util/l10n/UserLocale;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 179
    :cond_2
    aget-object v6, v5, v4

    invoke-virtual {v6, v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v1, v0

    .line 183
    goto :goto_0

    .line 186
    :cond_3
    if-nez v1, :cond_5

    .line 169
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_2

    .line 165
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method public static getAlertedLanguages(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    const-string/jumbo v0, "alertedLanguages"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    if-eqz v0, :cond_0

    .line 271
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 272
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 273
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_0
    return-object v1
.end method

.method public static getDeviceLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;
    .locals 4

    .prologue
    .line 315
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 316
    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private initSupportedLocales()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 69
    new-instance v0, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "English"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->defaultAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->defaultAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v2, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Fran\u00e7ais"

    invoke-direct {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v2, "es"

    const-string/jumbo v3, "Espa\u00f1ol"

    invoke-direct {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v2, "pt"

    const-string/jumbo v3, "Portugu\u00eas"

    invoke-direct {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "English-GB"

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "IE"

    const-string/jumbo v4, "English-IE"

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v2, "sv"

    const-string/jumbo v3, "Svenskt"

    invoke-direct {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v2, "nb"

    const-string/jumbo v3, "Norske"

    invoke-direct {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v2, "da"

    const-string/jumbo v3, "Dansk"

    invoke-direct {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v2, "fi"

    const-string/jumbo v3, "Suomi"

    invoke-direct {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v2, "nl"

    const-string/jumbo v3, "Nederlands"

    invoke-direct {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v2, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Fran\u00e7ais-CA"

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Deutsch"

    invoke-direct {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "AU"

    const-string/jumbo v4, "English-AU"

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NZ"

    const-string/jumbo v4, "English-NZ"

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u65e5\u672c\u8a9e"

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v2, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "italiano"

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v2, "pt"

    const-string/jumbo v3, "PT"

    const-string/jumbo v4, "Portugu\u00eas-PT"

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v2, "es"

    const-string/jumbo v3, "ES"

    const-string/jumbo v4, "espa\u00f1ol-ES"

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v2, "ar"

    const-string/jumbo v3, "MA"

    const-string/jumbo v4, "Arabic"

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\ud55c\uad6d\uc5b4/\uc870\uc120\ub9d0"

    invoke-direct {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u7b80\u5316\u5b57"

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u6b63\u9ad4\u5b57/\u7e41\u9ad4\u5b57"

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SG"

    const-string/jumbo v4, "\u7b80\u5316\u5b57"

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MO"

    const-string/jumbo v4, "\u6b63\u9ad4\u5b57/\u7e41\u9ad4\u5b57"

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "HK"

    const-string/jumbo v4, "\u6b63\u9ad4\u5b57/\u7e41\u9ad4\u5b57"

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u7b80\u5316\u5b57"

    invoke-direct {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v2, "es"

    const-string/jumbo v3, "AD"

    const-string/jumbo v4, "espa\u00f1ol-AD"

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v2, "tr"

    const-string/jumbo v3, "T\u00fcrk\u00e7e"

    invoke-direct {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v2, "pl"

    const-string/jumbo v3, "polszczyzna"

    invoke-direct {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v2, "th"

    const-string/jumbo v3, "Thai"

    invoke-direct {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v2, "ro"

    const-string/jumbo v3, "limba rom\u00e2n\u0103"

    invoke-direct {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public static isApkMissingDeviceLocaleSupport()Z
    .locals 4

    .prologue
    .line 301
    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getDeviceLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v2

    .line 302
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;-><init>()V

    .line 304
    const/4 v1, 0x1

    .line 305
    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    .line 306
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->equalsByLanguage(Lcom/netflix/mediaclient/util/l10n/UserLocale;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static setAlertedLanguage(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 280
    invoke-static {p0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->wasPreviouslyAlerted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v1, "skip setAlertedLanguage - was previously alerted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getAlertedLanguages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 286
    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getDeviceLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 296
    :cond_1
    const-string/jumbo v0, "alertedLanguages"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private toUserLocales(Ljava/lang/String;)[Lcom/netflix/mediaclient/util/l10n/UserLocale;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 206
    .line 207
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v1, ","

    invoke-direct {v3, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 209
    new-array v0, v0, [Lcom/netflix/mediaclient/util/l10n/UserLocale;

    .line 223
    :goto_0
    return-object v0

    .line 211
    :cond_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v2, v1, [Lcom/netflix/mediaclient/util/l10n/UserLocale;

    .line 215
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    new-instance v4, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;)V

    .line 217
    add-int/lit8 v1, v0, 0x1

    aput-object v4, v2, v0

    move v0, v1

    .line 221
    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 223
    goto :goto_0
.end method

.method public static wasPreviouslyAlerted(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 320
    invoke-static {p0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getAlertedLanguages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 321
    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getDeviceLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v1

    .line 323
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x1

    .line 331
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->currentAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    return-object v0
.end method

.method public getDefaultAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->defaultAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    return-object v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->preferredLanguages:Ljava/lang/String;

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->currentAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setApplicationLanguage(Lcom/netflix/mediaclient/util/l10n/UserLocale;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->currentAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->currentAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->currentAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    goto :goto_0
.end method

.method public setPreferredLanguages(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 126
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v1, "Empty list of preferred languages, set to default"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string/jumbo p1, ""

    .line 130
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->preferredLanguages:Ljava/lang/String;

    .line 131
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->findBestMatch(Ljava/lang/String;)Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v0

    .line 132
    if-nez v0, :cond_2

    .line 133
    const-string/jumbo v0, "nf_loc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Match is not found under application supported languages for prefered languages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Default to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->defaultAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->defaultAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    .line 137
    :cond_2
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->setApplicationLanguage(Lcom/netflix/mediaclient/util/l10n/UserLocale;)V

    .line 138
    return-void
.end method
