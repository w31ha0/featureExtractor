.class Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector$2;
.super Ljava/lang/Object;
.source "KeyboardDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->a()V
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
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector$2;->a:Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector$2;->a:Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;->b(Lcom/taiwanmobile/pt/adp/view/tool/KeyboardDetector;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 60
    return-void
.end method
