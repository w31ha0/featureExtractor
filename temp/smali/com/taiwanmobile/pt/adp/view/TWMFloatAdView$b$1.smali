.class Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b$1;
.super Ljava/lang/Object;
.source "TWMFloatAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;->disableCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;

    .line 985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 990
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->k(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    .line 991
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$b;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->d(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V

    .line 992
    return-void
.end method
