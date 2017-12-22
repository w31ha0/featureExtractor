.class public final Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;
.super Ljava/lang/Object;
.source "LocalizationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_locale"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static isCurrentLocaleRTL()Z
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/netflix/android/widgetry/utils/UiUtils;->isCurrentLocaleRTL()Z

    move-result v0

    return v0
.end method

.method public static prependBidiMarkerIfRtl(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcom/netflix/android/widgetry/utils/UiUtils;->prependBidiMarkerIfRtl(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setRtlLayoutDirectionIfApplicable(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 116
    invoke-static {p0}, Lcom/netflix/android/widgetry/utils/UiUtils;->setRtlLayoutDirectionIfApplicable(Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public static updateLocale(Ljava/util/Locale;Landroid/app/Application;)V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 60
    invoke-static {p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 61
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 70
    invoke-virtual {v0, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 72
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 73
    if-nez v1, :cond_0

    .line 74
    const-string/jumbo v0, "nf_locale"

    const-string/jumbo v1, "NA::refreshLocale: Resources are NULL. It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 79
    if-nez v2, :cond_1

    .line 80
    const-string/jumbo v0, "nf_locale"

    const-string/jumbo v1, "NA::refreshLocale: DisplayMetrics is NULL. It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_1
    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string/jumbo v1, "nf_locale"

    const-string/jumbo v2, "NA::updateLocale: Failed to update configuration"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wrapBidiMarkerIfRtl(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/netflix/android/widgetry/utils/UiUtils;->prependBidiMarkerIfRtl(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/android/widgetry/utils/UiUtils;->appendBidiMarkerIfRtl(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
