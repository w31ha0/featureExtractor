.class Lcom/wordloco/wordchallenge/view/ab;
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
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/ab;->a:Lcom/wordloco/wordchallenge/view/Home;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const v5, 0x7f090083

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 302
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->n()V

    .line 304
    const-string v1, "gift"

    .line 305
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 306
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 307
    sget v2, Lcom/wordloco/wordchallenge/b/a;->u:I

    if-gt v0, v2, :cond_1

    .line 309
    sget v0, Lcom/wordloco/wordchallenge/b/a;->x:I

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(I)I

    .line 310
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ab;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 312
    new-array v2, v3, [Ljava/lang/Object;

    .line 313
    sget v3, Lcom/wordloco/wordchallenge/b/a;->x:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 311
    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/wordloco/wordchallenge/view/ab;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-virtual {v3}, Lcom/wordloco/wordchallenge/view/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 332
    const-class v4, Lcom/wordloco/wordchallenge/view/ShareDialog;

    .line 331
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    const-string v3, "textToShare"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v0, "source"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ab;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/view/Home;->startActivity(Landroid/content/Intent;)V

    .line 336
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ab;->a:Lcom/wordloco/wordchallenge/view/Home;

    const v1, 0x7f06007b

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 337
    const/4 v1, 0x4

    .line 336
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->g()V

    .line 341
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ab;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/Home;->a(Lcom/wordloco/wordchallenge/view/Home;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->f()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 343
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/ab;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/Home;->a(Lcom/wordloco/wordchallenge/view/Home;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 344
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/ab;->a:Lcom/wordloco/wordchallenge/view/Home;

    const v3, 0x7f09005b

    invoke-virtual {v2, v3}, Lcom/wordloco/wordchallenge/view/Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 349
    :cond_0
    return-void

    .line 315
    :cond_1
    sget v2, Lcom/wordloco/wordchallenge/b/a;->v:I

    if-gt v0, v2, :cond_2

    .line 317
    sget v0, Lcom/wordloco/wordchallenge/b/a;->y:I

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(I)I

    .line 318
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ab;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 320
    new-array v2, v3, [Ljava/lang/Object;

    .line 321
    sget v3, Lcom/wordloco/wordchallenge/b/a;->y:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 319
    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_2
    sget v0, Lcom/wordloco/wordchallenge/b/a;->z:I

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(I)I

    .line 325
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ab;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 327
    new-array v2, v3, [Ljava/lang/Object;

    .line 328
    sget v3, Lcom/wordloco/wordchallenge/b/a;->z:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 326
    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
