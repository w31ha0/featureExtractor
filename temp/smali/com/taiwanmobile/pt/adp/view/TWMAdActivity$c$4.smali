.class Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$4;
.super Ljava/lang/Object;
.source "TWMAdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$4;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 267
    const-string v0, "TWMAdActivity"

    const-string v1, "Runnable.run"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$4;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->g(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$4;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->f(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$4;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->g(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 270
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->getSupportAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$4;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->g(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 274
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$4;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->h(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$4;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->h(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$4;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->h(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$4;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->i(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 281
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$4;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->i(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 282
    return-void
.end method
