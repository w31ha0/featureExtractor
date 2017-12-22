.class public abstract Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;
.super Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;
.source "ActivityCompatApi23.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;",
            ")V"
        }
    .end annotation
.end method
