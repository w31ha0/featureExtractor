.class Lcom/adbert/b/e$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/b/e;


# direct methods
.method private constructor <init>(Lcom/adbert/b/e;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/adbert/b/e$a;->a:Lcom/adbert/b/e;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adbert/b/e;Lcom/adbert/b/e$1;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/adbert/b/e$a;-><init>(Lcom/adbert/b/e;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 61
    iget-object v0, p0, Lcom/adbert/b/e$a;->a:Lcom/adbert/b/e;

    invoke-static {v0}, Lcom/adbert/b/e;->a(Lcom/adbert/b/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    iget-object v0, p0, Lcom/adbert/b/e$a;->a:Lcom/adbert/b/e;

    invoke-static {v0}, Lcom/adbert/b/e;->b(Lcom/adbert/b/e;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 63
    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 68
    iget-object v0, p0, Lcom/adbert/b/e$a;->a:Lcom/adbert/b/e;

    invoke-static {v0}, Lcom/adbert/b/e;->a(Lcom/adbert/b/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 69
    iget-object v0, p0, Lcom/adbert/b/e$a;->a:Lcom/adbert/b/e;

    invoke-static {v0}, Lcom/adbert/b/e;->b(Lcom/adbert/b/e;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 70
    return v1
.end method
