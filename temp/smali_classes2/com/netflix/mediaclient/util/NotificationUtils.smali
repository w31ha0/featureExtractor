.class public final Lcom/netflix/mediaclient/util/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field protected static final PUSH_NOTIFACTION_SOURCE:Ljava/lang/String; = "nflx_from_push_notification"

.field protected static final PUSH_NOTIFACTION_VALUE:Ljava/lang/String; = "true"

.field private static final TAG:Ljava/lang/String; = "nf_notification"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static addNotificationSourceToIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 58
    if-eqz p0, :cond_0

    .line 59
    const-string/jumbo v0, "nflx_from_push_notification"

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    :cond_0
    return-void
.end method

.method public static areNotificationsEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 72
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isIntentFromPushNotification(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 38
    if-nez p0, :cond_0

    .line 48
    :goto_0
    return v0

    .line 42
    :cond_0
    const-string/jumbo v1, "nflx_from_push_notification"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    const-string/jumbo v0, "nf_notification"

    const-string/jumbo v1, "From push notification, report."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :cond_1
    const-string/jumbo v1, "nf_notification"

    const-string/jumbo v2, "Not from push notification, do not report."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
