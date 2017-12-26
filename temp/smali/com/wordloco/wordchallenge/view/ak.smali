.class Lcom/wordloco/wordchallenge/view/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/ShareDialog;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/ShareDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/ak;->a:Lcom/wordloco/wordchallenge/view/ShareDialog;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlusOneClick(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ak;->a:Lcom/wordloco/wordchallenge/view/ShareDialog;

    iget-object v0, v0, Lcom/wordloco/wordchallenge/view/ShareDialog;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ak;->a:Lcom/wordloco/wordchallenge/view/ShareDialog;

    iget-object v0, v0, Lcom/wordloco/wordchallenge/view/ShareDialog;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 102
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->e(Z)V

    .line 105
    const-string v0, "Follow Plusbutton g+1"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/a;->a(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ak;->a:Lcom/wordloco/wordchallenge/view/ShareDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/wordloco/wordchallenge/view/ShareDialog;->startActivityForResult(Landroid/content/Intent;I)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ak;->a:Lcom/wordloco/wordchallenge/view/ShareDialog;

    iget-object v0, v0, Lcom/wordloco/wordchallenge/view/ShareDialog;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 109
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ak;->a:Lcom/wordloco/wordchallenge/view/ShareDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/wordloco/wordchallenge/view/ShareDialog;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-static {v0}, Lcom/a/a/h;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
