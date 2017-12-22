.class public Lcom/netflix/mediaclient/service/user/UserPreferencesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserPreferencesReceiver.java"


# static fields
.field private static final EXTRA_DOWNLOAD_FORMAT:Ljava/lang/String; = "DOWNLOAD_VIDEO_FORMAT"

.field private static final EXTRA_DOWNLOAD_QUALITY:Ljava/lang/String; = "DOWNLOAD_VIDEO_QUALITY"

.field public static final SET_DOWNLOAD_FORMAT_ACTION:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.SET_DOWNLOAD_FORMAT"

.field public static final SET_DOWNLOAD_QUALITY_ACTION:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.SET_DOWNLOAD_QUALITY"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/netflix/mediaclient/service/user/UserPreferencesReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserPreferencesReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 38
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.SET_DOWNLOAD_QUALITY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserPreferencesReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SET_DOWNLOAD_QUALITY intent received"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserPreferencesReceiver;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Landroid/content/Intent;)V

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    const-string/jumbo v1, "DOWNLOAD_VIDEO_QUALITY"

    const-string/jumbo v2, "DEFAULT"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string/jumbo v1, "download_video_quality"

    const-string/jumbo v2, "DEFAULT"

    invoke-static {p1, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    const-string/jumbo v1, "download_video_quality"

    invoke-static {p1, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting offline quality to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/Log;->partner(Ljava/lang/String;)I

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.SET_DOWNLOAD_FORMAT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserPreferencesReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SET_DOWNLOAD_FORMAT intent received"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserPreferencesReceiver;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    const-string/jumbo v1, "DOWNLOAD_VIDEO_FORMAT"

    const-string/jumbo v2, "Default"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "video/avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "video/hevc"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    :cond_2
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->presetVideoFormat(Ljava/lang/String;)V

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting offline codec to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/Log;->partner(Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserPreferencesReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unexpected intent received"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserPreferencesReceiver;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method
