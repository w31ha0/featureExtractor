.class public Lgraphview/compatible/RealScaleGestureDetector;
.super Landroid/view/ScaleGestureDetector;
.source "RealScaleGestureDetector.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgraphview/compatible/ScaleGestureDetector;Lgraphview/compatible/ScaleGestureDetector$SimpleOnScaleGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fakeScaleGestureDetector"    # Lgraphview/compatible/ScaleGestureDetector;
    .param p3, "fakeListener"    # Lgraphview/compatible/ScaleGestureDetector$SimpleOnScaleGestureListener;

    .prologue
    .line 29
    new-instance v0, Lgraphview/compatible/RealScaleGestureDetector$1;

    invoke-direct {v0, p3, p2}, Lgraphview/compatible/RealScaleGestureDetector$1;-><init>(Lgraphview/compatible/ScaleGestureDetector$SimpleOnScaleGestureListener;Lgraphview/compatible/ScaleGestureDetector;)V

    invoke-direct {p0, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 35
    return-void
.end method
