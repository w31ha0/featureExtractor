.class Lcom/wordloco/wordchallenge/view/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/Game;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/Game;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/w;->a:Lcom/wordloco/wordchallenge/view/Game;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const v2, 0x7f060063

    const/4 v1, 0x0

    .line 349
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->a(Z)V

    .line 350
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/w;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 352
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/w;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 353
    const v3, 0x7f020075

    .line 352
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/w;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 355
    const v2, 0x7f09005e

    .line 354
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 365
    :goto_1
    return-void

    .line 349
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/w;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 359
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/w;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 360
    const v3, 0x7f020074

    .line 359
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/w;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 362
    const v2, 0x7f09005f

    .line 361
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
