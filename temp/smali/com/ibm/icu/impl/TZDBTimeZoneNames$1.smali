.class synthetic Lcom/ibm/icu/impl/TZDBTimeZoneNames$1;
.super Ljava/lang/Object;
.source "TZDBTimeZoneNames.java"


# static fields
.field static final synthetic $SwitchMap$com$ibm$icu$text$TimeZoneNames$NameType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 199
    invoke-static {}, Lcom/ibm/icu/text/TimeZoneNames$NameType;->values()[Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$1;->$SwitchMap$com$ibm$icu$text$TimeZoneNames$NameType:[I

    :try_start_0
    sget-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$1;->$SwitchMap$com$ibm$icu$text$TimeZoneNames$NameType:[I

    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Lcom/ibm/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$1;->$SwitchMap$com$ibm$icu$text$TimeZoneNames$NameType:[I

    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Lcom/ibm/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
