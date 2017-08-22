.class Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector$1;
.super Ljava/lang/Object;
.source "KeyboardDetector.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector$1;->a:Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector$1;->a:Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->a(Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;)V

    .line 41
    return-void
.end method
