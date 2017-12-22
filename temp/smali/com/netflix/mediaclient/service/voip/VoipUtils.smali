.class public final Lcom/netflix/mediaclient/service/voip/VoipUtils;
.super Ljava/lang/Object;
.source "VoipUtils.java"


# static fields
.field protected static final DELIM:Ljava/lang/String; = "_"

.field protected static final DEVICE_MODEL_LIMIT:I = 0x1f

.field protected static final DEVICE_MODEL_LIMIT_BRAND:I = 0xa

.field private static final DNIS:Ljava/lang/String; = "NFCLIENT_CTI_"

.field private static final INT:Ljava/lang/String; = "_test"

.field protected static final MANUFACTURER_LIMIT:I = 0x5

.field protected static final MODEL_LIMIT:I = 0xa

.field private static final SIP_HEADER_CLIENT_VERSION:Ljava/lang/String; = "X-NFLX-ClientAppVer"

.field private static final SIP_HEADER_UUID:Ljava/lang/String; = "X-NFLX-SessionID"

.field private static final TAG:Ljava/lang/String; = "nf_voip"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method static createDialExtra(Landroid/content/Context;Ljava/lang/String;)Lcom/vailsys/whistleengine/DialExtra;
    .locals 5

    .prologue
    const/16 v4, 0x2d

    .line 62
    new-instance v0, Lcom/vailsys/whistleengine/DialExtra;

    invoke-direct {v0}, Lcom/vailsys/whistleengine/DialExtra;-><init>()V

    .line 64
    if-eqz p1, :cond_0

    .line 65
    const-string/jumbo v1, "X-NFLX-SessionID"

    invoke-virtual {v0, v1, p1}, Lcom/vailsys/whistleengine/DialExtra;->addXHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->findDeviceModel()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v2}, Lcom/netflix/mediaclient/service/voip/VoipUtils;->modifyByXHeaderRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v2, "-android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "5.1.2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string/jumbo v2, "X-NFLX-ClientAppVer"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/vailsys/whistleengine/DialExtra;->addXHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-object v0
.end method

.method static getCustomerServiceNumber(Lcom/netflix/mediaclient/util/l10n/UserLocale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "App locale is NOT know, default to en"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string/jumbo v0, "en"

    .line 130
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NFCLIENT_CTI_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    return-object v0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static modifyByXHeaderRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x3d

    .line 95
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    const-string/jumbo v0, ""

    .line 110
    :goto_0
    return-object v0

    .line 99
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 104
    const/16 v4, 0x41

    if-lt v3, v4, :cond_2

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    :cond_2
    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_3
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4

    if-eq v3, v5, :cond_4

    const/16 v4, 0x21

    if-eq v3, v4, :cond_4

    const/16 v4, 0x40

    if-eq v3, v4, :cond_4

    const/16 v4, 0x23

    if-eq v3, v4, :cond_4

    const/16 v4, 0x24

    if-eq v3, v4, :cond_4

    const/16 v4, 0x25

    if-eq v3, v4, :cond_4

    const/16 v4, 0x5e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x26

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_4

    const/16 v4, 0x28

    if-eq v3, v4, :cond_4

    const/16 v4, 0x29

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_4

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_4

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_4

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_4

    const/16 v4, 0x5d

    if-eq v3, v4, :cond_4

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_4

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_5

    .line 105
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 110
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
