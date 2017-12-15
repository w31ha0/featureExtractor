.class public Lcom/creativemobi/engine/CompatibilityWrapper;
.super Ljava/lang/Object;
.source "CompatibilityWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoPause(Landroid/media/SoundPool;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Landroid/media/SoundPool;->autoPause()V

    .line 21
    return-void
.end method

.method public static autoResume(Landroid/media/SoundPool;)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/media/SoundPool;->autoResume()V

    .line 25
    return-void
.end method

.method public static getPointerCount(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method
