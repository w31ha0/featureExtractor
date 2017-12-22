.class final Lorg/chromium/base/MemoryPressureListener$1;
.super Ljava/lang/Object;
.source "MemoryPressureListener.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/chromium/base/MemoryPressureListener;->access$000(I)V

    .line 61
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p1}, Lorg/chromium/base/MemoryPressureListener;->maybeNotifyMemoryPresure(I)V

    .line 56
    return-void
.end method
