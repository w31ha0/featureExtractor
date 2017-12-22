.class public Lcom/netflix/android/widgetry/utils/FloatUtils;
.super Ljava/lang/Object;
.source "FloatUtils.java"


# static fields
.field private static final EPSILON:F = 1.0E-5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static floatsEqual(FF)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 16
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 17
    goto :goto_0

    .line 19
    :cond_3
    sub-float v2, p1, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method
