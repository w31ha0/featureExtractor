.class public Lcom/adbert/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/b/a;


# direct methods
.method public constructor <init>(Lcom/adbert/b/a;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionReturn()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->e:Lcom/adbert/a/a/a;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v1, v1, Lcom/adbert/b/a;->e:Lcom/adbert/a/a/a;

    sget-object v2, Lcom/adbert/a/b/i;->c:Lcom/adbert/a/b/i;

    invoke-virtual {v2}, Lcom/adbert/a/b/i;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adbert/a/i;->b(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/String;)V

    .line 254
    :cond_0
    return-void
.end method

.method public closeSensor()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->g:Lcom/adbert/a/k;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->g:Lcom/adbert/a/k;

    invoke-virtual {v0}, Lcom/adbert/a/k;->b()V

    .line 201
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adbert/b/a;->g:Lcom/adbert/a/k;

    .line 203
    :cond_0
    return-void
.end method

.method public distance(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    sget-object v1, Lcom/adbert/a/b/h;->d:Lcom/adbert/a/b/h;

    invoke-static {v0, v1, p1}, Lcom/adbert/b/a;->a(Lcom/adbert/b/a;Lcom/adbert/a/b/h;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public light(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    sget-object v1, Lcom/adbert/a/b/h;->a:Lcom/adbert/a/b/h;

    invoke-static {v0, v1, p1}, Lcom/adbert/b/a;->a(Lcom/adbert/b/a;Lcom/adbert/a/b/h;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public openAlbum(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->d:Lcom/adbert/b/a$b;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->d:Lcom/adbert/b/a$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/adbert/b/a$b;->a(ZLjava/lang/String;)V

    .line 266
    :cond_0
    return-void
.end method

.method public openBrowser(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 273
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 274
    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v1, v1, Lcom/adbert/b/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v1

    .line 278
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object v1, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v1, v1, Lcom/adbert/b/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public openCamera(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->d:Lcom/adbert/b/a$b;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->d:Lcom/adbert/b/a$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/adbert/b/a$b;->a(ZLjava/lang/String;)V

    .line 260
    :cond_0
    return-void
.end method

.method public shake(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    sget-object v1, Lcom/adbert/a/b/h;->b:Lcom/adbert/a/b/h;

    invoke-static {v0, v1, p1}, Lcom/adbert/b/a;->a(Lcom/adbert/b/a;Lcom/adbert/a/b/h;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public shareReturn()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->e:Lcom/adbert/a/a/a;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v1, v1, Lcom/adbert/b/a;->e:Lcom/adbert/a/a/a;

    sget-object v2, Lcom/adbert/a/b/i;->c:Lcom/adbert/a/b/i;

    invoke-virtual {v2}, Lcom/adbert/a/b/i;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/String;)V

    .line 247
    :cond_0
    return-void
.end method

.method public validReturn()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->e:Lcom/adbert/a/a/a;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->e:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->b:Lcom/adbert/a/b/b;

    sget-object v1, Lcom/adbert/a/b/b;->b:Lcom/adbert/a/b/b;

    if-ne v0, v1, :cond_1

    .line 227
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->e:Lcom/adbert/a/a/a;

    iget-boolean v0, v0, Lcom/adbert/a/a/a;->n:Z

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->e:Lcom/adbert/a/a/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adbert/a/a/a;->n:Z

    .line 229
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v1, v1, Lcom/adbert/b/a;->e:Lcom/adbert/a/a/a;

    new-instance v2, Lcom/adbert/b/a$a$1;

    invoke-direct {v2, p0}, Lcom/adbert/b/a$a$1;-><init>(Lcom/adbert/b/a$a;)V

    invoke-static {v0, v1, v2}, Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/Runnable;)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v1, v1, Lcom/adbert/b/a;->e:Lcom/adbert/a/a/a;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adbert/a/i;->a(Landroid/content/Context;Lcom/adbert/a/a/a;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public vibrate(I)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->a:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-static {v0, v1}, Lcom/adbert/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/adbert/b/a$a;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->a:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 209
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 211
    :cond_0
    return-void
.end method
