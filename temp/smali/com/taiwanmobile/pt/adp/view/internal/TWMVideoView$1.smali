.class Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;
.super Ljava/lang/Object;
.source "TWMVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->loadContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/internal/BaseMediaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

.field private final synthetic b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->a:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    iput-object p3, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->d:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;)Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->a:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/high16 v6, 0x10000000

    .line 111
    const-string v0, "TWMVideoView"

    const-string v1, "onClick!!!!!!!!!>>>>>>>>>"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    const-string v1, "adListener"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 114
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    const-string v2, "ad"

    invoke-virtual {v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taiwanmobile/pt/adp/view/TWMAd;

    .line 115
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onPresentScreen(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 121
    const-string v3, "clickUrl"

    invoke-virtual {v2, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 120
    check-cast v2, Ljava/lang/String;

    .line 122
    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->a:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    new-instance v4, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1$1;

    iget-object v5, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->d:Ljava/lang/String;

    invoke-direct {v4, p0, v2, v5}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1$1;-><init>(Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->post(Ljava/lang/Runnable;)Z

    .line 132
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 133
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->c:Ljava/lang/String;

    const-string v4, "tel:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    const-string v0, "TWMVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "displayByType invoked with url("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 136
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->a:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->a(Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 144
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->a:Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->a(Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 146
    invoke-interface {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onLeaveApplication(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    .line 147
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    const-string v1, "lam"

    .line 148
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    invoke-virtual {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
