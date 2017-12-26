.class Lcom/wordloco/wordchallenge/view/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/Home;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/Home;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/ah;->a:Lcom/wordloco/wordchallenge/view/Home;

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlusOneClick(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 559
    if-eqz p1, :cond_0

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ah;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/Home;->c(Lcom/wordloco/wordchallenge/view/Home;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ah;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/Home;->c(Lcom/wordloco/wordchallenge/view/Home;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 563
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->e(Z)V

    .line 566
    const-string v0, "Follow Home g+1"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/a;->a(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ah;->a:Lcom/wordloco/wordchallenge/view/Home;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/wordloco/wordchallenge/view/Home;->startActivityForResult(Landroid/content/Intent;I)V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ah;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/Home;->c(Lcom/wordloco/wordchallenge/view/Home;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 570
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ah;->a:Lcom/wordloco/wordchallenge/view/Home;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/wordloco/wordchallenge/view/Home;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    invoke-static {v0}, Lcom/a/a/h;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
