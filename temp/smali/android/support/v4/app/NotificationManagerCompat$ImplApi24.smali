.class Landroid/support/v4/app/NotificationManagerCompat$ImplApi24;
.super Landroid/support/v4/app/NotificationManagerCompat$ImplKitKat;
.source "NotificationManagerCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/support/v4/app/NotificationManagerCompat$ImplKitKat;-><init>()V

    return-void
.end method


# virtual methods
.method public areNotificationsEnabled(Landroid/content/Context;Landroid/app/NotificationManager;)Z
    .locals 1

    .prologue
    .line 218
    invoke-static {p2}, Landroid/support/v4/app/NotificationManagerCompatApi24;->areNotificationsEnabled(Landroid/app/NotificationManager;)Z

    move-result v0

    return v0
.end method

.method public getImportance(Landroid/app/NotificationManager;)I
    .locals 1

    .prologue
    .line 223
    invoke-static {p1}, Landroid/support/v4/app/NotificationManagerCompatApi24;->getImportance(Landroid/app/NotificationManager;)I

    move-result v0

    return v0
.end method
