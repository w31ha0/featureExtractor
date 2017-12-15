.class final Lcom/flurry/android/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/flurry/android/ae;


# direct methods
.method constructor <init>(Lcom/flurry/android/ae;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/flurry/android/aa;->b:Lcom/flurry/android/ae;

    iput-object p2, p0, Lcom/flurry/android/aa;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 261
    iget-object v0, p0, Lcom/flurry/android/aa;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/flurry/android/aa;->b:Lcom/flurry/android/ae;

    iget-object v0, v0, Lcom/flurry/android/ae;->d:Lcom/flurry/android/l;

    iget-object v1, p0, Lcom/flurry/android/aa;->b:Lcom/flurry/android/ae;

    iget-object v1, v1, Lcom/flurry/android/ae;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/aa;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/android/l;->a(Lcom/flurry/android/l;Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/flurry/android/aa;->b:Lcom/flurry/android/ae;

    iget-object v0, v0, Lcom/flurry/android/ae;->c:Lcom/flurry/android/aj;

    new-instance v1, Lcom/flurry/android/e;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/flurry/android/aa;->b:Lcom/flurry/android/ae;

    iget-object v3, v3, Lcom/flurry/android/ae;->d:Lcom/flurry/android/l;

    invoke-virtual {v3}, Lcom/flurry/android/l;->h()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/android/e;-><init>(BJ)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/aj;->a(Lcom/flurry/android/e;)V

    .line 273
    :goto_0
    return-void

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch in app market: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/aa;->b:Lcom/flurry/android/ae;

    iget-object v1, v1, Lcom/flurry/android/ae;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    sget-object v1, Lcom/flurry/android/l;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/flurry/android/ak;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, p0, Lcom/flurry/android/aa;->b:Lcom/flurry/android/ae;

    iget-object v1, v1, Lcom/flurry/android/ae;->d:Lcom/flurry/android/l;

    invoke-static {v1, v0}, Lcom/flurry/android/l;->b(Lcom/flurry/android/l;Ljava/lang/String;)V

    goto :goto_0
.end method
