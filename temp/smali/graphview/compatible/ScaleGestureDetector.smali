.class public Lgraphview/compatible/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgraphview/compatible/ScaleGestureDetector$SimpleOnScaleGestureListener;
    }
.end annotation


# instance fields
.field private method_getScaleFactor:Ljava/lang/reflect/Method;

.field private method_isInProgress:Ljava/lang/reflect/Method;

.field private method_onTouchEvent:Ljava/lang/reflect/Method;

.field private realScaleGestureDetector:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgraphview/compatible/ScaleGestureDetector$SimpleOnScaleGestureListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simpleOnScaleGestureListener"    # Lgraphview/compatible/ScaleGestureDetector$SimpleOnScaleGestureListener;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    :try_start_0
    const-string v3, "android.view.ScaleGestureDetector"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 49
    const-string v3, "graphview.compatible.RealScaleGestureDetector"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    .local v0, "classRealScaleGestureDetector":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getScaleFactor"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lgraphview/compatible/ScaleGestureDetector;->method_getScaleFactor:Ljava/lang/reflect/Method;

    .line 51
    const-string v3, "isInProgress"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lgraphview/compatible/ScaleGestureDetector;->method_isInProgress:Ljava/lang/reflect/Method;

    .line 52
    const-string v3, "onTouchEvent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/MotionEvent;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lgraphview/compatible/ScaleGestureDetector;->method_onTouchEvent:Ljava/lang/reflect/Method;

    .line 55
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lgraphview/compatible/ScaleGestureDetector$SimpleOnScaleGestureListener;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 56
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lgraphview/compatible/ScaleGestureDetector;->realScaleGestureDetector:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "classRealScaleGestureDetector":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "com.jjoe64.graphview"

    const-string v4, "*** WARNING *** No scaling available for graphs. Exception:"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getScaleFactor()D
    .locals 6

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 65
    iget-object v1, p0, Lgraphview/compatible/ScaleGestureDetector;->method_getScaleFactor:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 67
    :try_start_0
    iget-object v1, p0, Lgraphview/compatible/ScaleGestureDetector;->method_getScaleFactor:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lgraphview/compatible/ScaleGestureDetector;->realScaleGestureDetector:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    float-to-double v1, v1

    .line 73
    :goto_0
    return-wide v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v1, v2

    .line 70
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-wide v1, v2

    .line 73
    goto :goto_0
.end method

.method public isInProgress()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v1, p0, Lgraphview/compatible/ScaleGestureDetector;->method_getScaleFactor:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 79
    :try_start_0
    iget-object v1, p0, Lgraphview/compatible/ScaleGestureDetector;->method_isInProgress:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lgraphview/compatible/ScaleGestureDetector;->realScaleGestureDetector:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 85
    :goto_0
    return v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 82
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v1, v2

    .line 85
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 89
    iget-object v1, p0, Lgraphview/compatible/ScaleGestureDetector;->method_onTouchEvent:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    iget-object v1, p0, Lgraphview/compatible/ScaleGestureDetector;->method_onTouchEvent:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lgraphview/compatible/ScaleGestureDetector;->realScaleGestureDetector:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
