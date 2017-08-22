.class Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$2;
.super Ljava/lang/Object;
.source "TWMAdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 219
    const-string v0, "TWMAdActivity"

    const-string v1, "==========================>click"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->e(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)I

    move-result v0

    .line 222
    const-string v1, "TWMAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getScreenOrientation : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    if-eqz v0, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->setRequestedOrientation(I)V

    .line 232
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->f(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 233
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 234
    const/4 v1, -0x1

    .line 235
    const/4 v2, -0x2

    .line 233
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 236
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 237
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 238
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->b(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    :cond_0
    return-void
.end method
