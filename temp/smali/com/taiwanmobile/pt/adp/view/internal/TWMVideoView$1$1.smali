.class Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1$1;
.super Ljava/lang/Object;
.source "TWMVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1$1;->a:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;

    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1$1;->c:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 126
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1$1;->a:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->a(Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;)Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->a(Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1$1;->b:Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1$1;->c:Ljava/lang/String;

    const-string v3, "TWMAdView"

    move-object v5, v4

    .line 126
    invoke-static/range {v0 .. v5}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->reportClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method
