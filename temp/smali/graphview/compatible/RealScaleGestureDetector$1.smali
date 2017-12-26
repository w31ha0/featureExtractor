.class Lgraphview/compatible/RealScaleGestureDetector$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "RealScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgraphview/compatible/RealScaleGestureDetector;-><init>(Landroid/content/Context;Lgraphview/compatible/ScaleGestureDetector;Lgraphview/compatible/ScaleGestureDetector$SimpleOnScaleGestureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$fakeListener:Lgraphview/compatible/ScaleGestureDetector$SimpleOnScaleGestureListener;

.field private final synthetic val$fakeScaleGestureDetector:Lgraphview/compatible/ScaleGestureDetector;


# direct methods
.method constructor <init>(Lgraphview/compatible/ScaleGestureDetector$SimpleOnScaleGestureListener;Lgraphview/compatible/ScaleGestureDetector;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lgraphview/compatible/RealScaleGestureDetector$1;->val$fakeListener:Lgraphview/compatible/ScaleGestureDetector$SimpleOnScaleGestureListener;

    iput-object p2, p0, Lgraphview/compatible/RealScaleGestureDetector$1;->val$fakeScaleGestureDetector:Lgraphview/compatible/ScaleGestureDetector;

    .line 29
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 32
    iget-object v0, p0, Lgraphview/compatible/RealScaleGestureDetector$1;->val$fakeListener:Lgraphview/compatible/ScaleGestureDetector$SimpleOnScaleGestureListener;

    iget-object v1, p0, Lgraphview/compatible/RealScaleGestureDetector$1;->val$fakeScaleGestureDetector:Lgraphview/compatible/ScaleGestureDetector;

    invoke-interface {v0, v1}, Lgraphview/compatible/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Lgraphview/compatible/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method
