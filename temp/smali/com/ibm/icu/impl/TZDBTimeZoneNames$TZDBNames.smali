.class Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;
.super Ljava/lang/Object;
.source "TZDBTimeZoneNames.java"


# static fields
.field public static final EMPTY_TZDBNAMES:Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

.field private static final KEYS:[Ljava/lang/String;


# instance fields
.field private _names:[Ljava/lang/String;

.field private _parseRegions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 140
    new-instance v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

    invoke-direct {v0, v1, v1}, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

    .line 144
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ss"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "sd"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->_parseRegions:[Ljava/lang/String;

    .line 149
    return-void
.end method

.method static getInstance(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

    .line 191
    :goto_0
    return-object v0

    .line 158
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    sget-object v3, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->KEYS:[Ljava/lang/String;

    array-length v3, v3

    new-array v5, v3, [Ljava/lang/String;

    move v3, v1

    move v1, v2

    .line 165
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_2

    .line 167
    :try_start_1
    sget-object v6, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->KEYS:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0, v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    .line 165
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    sget-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

    goto :goto_0

    .line 169
    :catch_1
    move-exception v6

    .line 170
    aput-object v4, v5, v1

    goto :goto_2

    .line 174
    :cond_2
    if-eqz v3, :cond_3

    .line 175
    sget-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

    goto :goto_0

    .line 180
    :cond_3
    :try_start_2
    const-string/jumbo v1, "parseRegions"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 181
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result v1

    if-nez v1, :cond_4

    .line 182
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    .line 183
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v1

    .line 191
    :goto_3
    new-instance v1, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

    invoke-direct {v1, v5, v0}, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 184
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 185
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    goto :goto_3

    .line 187
    :catch_2
    move-exception v0

    move-object v0, v4

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :cond_5
    move-object v0, v4

    goto :goto_3
.end method


# virtual methods
.method getName(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 195
    iget-object v1, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 212
    :goto_0
    return-object v0

    .line 199
    :cond_0
    sget-object v1, Lcom/ibm/icu/impl/TZDBTimeZoneNames$1;->$SwitchMap$com$ibm$icu$text$TimeZoneNames$NameType:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v0, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getParseRegions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->_parseRegions:[Ljava/lang/String;

    return-object v0
.end method
