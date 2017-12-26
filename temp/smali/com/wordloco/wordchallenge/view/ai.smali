.class Lcom/wordloco/wordchallenge/view/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/Home;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/Home;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/ai;->a:Lcom/wordloco/wordchallenge/view/Home;

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x7f060078

    .line 607
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ai;->a:Lcom/wordloco/wordchallenge/view/Home;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/ai;->a:Lcom/wordloco/wordchallenge/view/Home;

    iget-object v1, v1, Lcom/wordloco/wordchallenge/view/Home;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/view/Home;->a(Landroid/media/MediaPlayer;)V

    .line 608
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ai;->a:Lcom/wordloco/wordchallenge/view/Home;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/ai;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/view/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 609
    const/high16 v2, 0x7f050000

    .line 608
    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, v0, Lcom/wordloco/wordchallenge/view/Home;->a:Landroid/media/MediaPlayer;

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ai;->a:Lcom/wordloco/wordchallenge/view/Home;

    iget-object v0, v0, Lcom/wordloco/wordchallenge/view/Home;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->b(Z)V

    .line 616
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ai;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-virtual {v0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 618
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/ai;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 619
    const v2, 0x7f0200f8

    .line 618
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 625
    :goto_2
    return-void

    .line 615
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ai;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-virtual {v0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 622
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/ai;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 623
    const v2, 0x7f0200f7

    .line 622
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 612
    :catch_0
    move-exception v0

    goto :goto_0
.end method
