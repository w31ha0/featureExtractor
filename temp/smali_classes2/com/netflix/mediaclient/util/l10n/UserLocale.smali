.class public final Lcom/netflix/mediaclient/util/l10n/UserLocale;
.super Ljava/lang/Object;
.source "UserLocale.java"


# static fields
.field private static final RAW_DELIMITER:Ljava/lang/String; = "-"

.field private static final TAG:Ljava/lang/String; = "nf_user_locale"


# instance fields
.field private language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field private languageDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "languageDescription"
    .end annotation
.end field

.field private locale:Ljava/util/Locale;

.field private raw:Ljava/lang/String;

.field private region:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string/jumbo v0, "raw"

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->validateNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->raw:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->parseRaw()V

    .line 65
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string/jumbo v0, "language"

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->validateNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v0, "languageDescription"

    invoke-direct {p0, p3, v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->validateNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->language:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->region:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->region:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->region:Ljava/lang/String;

    .line 85
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->languageDescription:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->createRaw()V

    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->init()V

    .line 88
    return-void
.end method

.method private createRaw()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->region:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 121
    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v1, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->raw:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public static getDeviceLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 295
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 300
    return-object v0
.end method

.method public static getRawDeviceLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    invoke-static {p0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getDeviceLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 312
    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->toUserLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 313
    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->region:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->language:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->locale:Ljava/util/Locale;

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_1
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->language:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->region:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->locale:Ljava/util/Locale;

    goto :goto_0
.end method

.method private parseRaw()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 95
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->raw:Ljava/lang/String;

    const-string/jumbo v2, "-"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    if-lt v0, v6, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid format of raw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->raw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    const/4 v0, 0x0

    .line 101
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 102
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 103
    if-nez v0, :cond_2

    .line 104
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->language:Ljava/lang/String;

    .line 110
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 111
    goto :goto_0

    .line 105
    :cond_2
    if-ne v0, v6, :cond_3

    .line 106
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->region:Ljava/lang/String;

    goto :goto_1

    .line 108
    :cond_3
    const-string/jumbo v3, "nf_user_locale"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected token in given prefered language. Token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    :cond_4
    return-void
.end method

.method public static toUserLocale(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 272
    if-nez p0, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 283
    :goto_0
    return-object v0

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private validateNonEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 146
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " argument can not be empty!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    if-ne p0, p1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 226
    goto :goto_0

    .line 228
    :cond_2
    instance-of v2, p1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    if-nez v2, :cond_3

    move v0, v1

    .line 229
    goto :goto_0

    .line 231
    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    .line 232
    iget-object v2, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->raw:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 233
    iget-object v2, p1, Lcom/netflix/mediaclient/util/l10n/UserLocale;->raw:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 234
    goto :goto_0

    .line 236
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->raw:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/util/l10n/UserLocale;->raw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 237
    goto :goto_0
.end method

.method public equalsByLanguage(Lcom/netflix/mediaclient/util/l10n/UserLocale;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 250
    if-nez p1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->language:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 255
    iget-object v1, p1, Lcom/netflix/mediaclient/util/l10n/UserLocale;->language:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 261
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 258
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->language:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/util/l10n/UserLocale;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->languageDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->region:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 211
    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->raw:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 214
    return v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->raw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UserLocale [language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", languageDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->languageDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->raw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/l10n/UserLocale;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
