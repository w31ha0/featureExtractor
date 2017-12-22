.class Landroid/support/v4/app/NotificationManagerCompat$ImplKitKat;
.super Landroid/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich;
.source "NotificationManagerCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich;-><init>()V

    return-void
.end method


# virtual methods
.method public areNotificationsEnabled(Landroid/content/Context;Landroid/app/NotificationManager;)Z
    .locals 1

    .prologue
    .line 210
    invoke-static {p1}, Landroid/support/v4/app/NotificationManagerCompatKitKat;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
