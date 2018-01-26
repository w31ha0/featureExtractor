.class public abstract Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;
.super Landroid/app/Activity;
.source "AbstractCaptureActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method abstract drawViewfinder()V
.end method

.method abstract getHandler()Landroid/os/Handler;
.end method

.method abstract getViewfinderView()Lcom/biznessapps/layout/views/scanning/ViewfinderView;
.end method

.method abstract handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
.end method
