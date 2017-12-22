.class public Lcom/netflix/mediaclient/android/debug/DebugOverlay;
.super Ljava/lang/Object;
.source "DebugOverlay.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExternalDebugScreens(Landroid/content/Context;Lcom/netflix/mediaclient/android/debug/ExternalDebugScreen;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public static attachOn(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public static getDebugRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "getDebugRequestQueue should not be called on release build !"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public static removeExternalDebugScreens(Lcom/netflix/mediaclient/android/debug/ExternalDebugScreen;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
