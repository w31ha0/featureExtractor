.class Lcom/adbert/AdbertNativeAD$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertNativeAD;->unregisterView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertNativeAD;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertNativeAD;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/adbert/AdbertNativeAD$3;->a:Lcom/adbert/AdbertNativeAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method
