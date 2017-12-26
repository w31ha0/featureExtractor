.class public abstract Lcom/wordloco/wordchallenge/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "EU checker"

    sput-object v0, Lcom/wordloco/wordchallenge/d/d;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 14
    .line 20
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 21
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    sget-object v0, Lcom/wordloco/wordchallenge/d/d;->a:Ljava/lang/String;

    const-string v3, "is EU User (sim)"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 72
    :goto_0
    return v0

    .line 30
    :catch_0
    move-exception v0

    move v3, v1

    .line 37
    :goto_1
    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 38
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-eq v4, v5, :cond_3

    .line 39
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-eqz v4, :cond_3

    .line 40
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    sget-object v0, Lcom/wordloco/wordchallenge/d/d;->a:Ljava/lang/String;

    const-string v3, "is EU User (network)"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 46
    goto :goto_0

    .line 50
    :catch_1
    move-exception v0

    move v0, v1

    .line 56
    :goto_2
    :try_start_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    move v0, v1

    .line 67
    :cond_0
    :goto_3
    if-eqz v0, :cond_2

    .line 68
    sget-object v0, Lcom/wordloco/wordchallenge/d/d;->a:Ljava/lang/String;

    const-string v2, "is EU User (err)"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 69
    goto :goto_0

    .line 59
    :cond_1
    :try_start_3
    const-string v4, "euro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    sget-object v0, Lcom/wordloco/wordchallenge/d/d;->a:Ljava/lang/String;

    const-string v3, "is EU User (time)"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v1

    .line 61
    goto :goto_0

    .line 63
    :catch_2
    move-exception v0

    move v0, v1

    .line 64
    goto :goto_3

    :cond_2
    move v0, v2

    .line 72
    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_1
.end method
