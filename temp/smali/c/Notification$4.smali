.class Lc/Notification$4;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/Notification;->progressStart(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/Notification;

.field final synthetic b:Lvpadn/q;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lc/Notification;


# direct methods
.method constructor <init>(Lc/Notification;Lc/Notification;Lvpadn/q;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lc/Notification$4;->e:Lc/Notification;

    iput-object p2, p0, Lc/Notification$4;->a:Lc/Notification;

    iput-object p3, p0, Lc/Notification$4;->b:Lvpadn/q;

    iput-object p4, p0, Lc/Notification$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lc/Notification$4;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 303
    iget-object v0, p0, Lc/Notification$4;->a:Lc/Notification;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lc/Notification$4;->b:Lvpadn/q;

    invoke-interface {v2}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    .line 304
    iget-object v0, p0, Lc/Notification$4;->a:Lc/Notification;

    iget-object v0, v0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 305
    iget-object v0, p0, Lc/Notification$4;->a:Lc/Notification;

    iget-object v0, v0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lc/Notification$4;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lc/Notification$4;->a:Lc/Notification;

    iget-object v0, v0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lc/Notification$4;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lc/Notification$4;->a:Lc/Notification;

    iget-object v0, v0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 308
    iget-object v0, p0, Lc/Notification$4;->a:Lc/Notification;

    iget-object v0, v0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 309
    iget-object v0, p0, Lc/Notification$4;->a:Lc/Notification;

    iget-object v0, v0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 310
    iget-object v0, p0, Lc/Notification$4;->a:Lc/Notification;

    iget-object v0, v0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lc/Notification$4$1;

    invoke-direct {v1, p0}, Lc/Notification$4$1;-><init>(Lc/Notification$4;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 316
    iget-object v0, p0, Lc/Notification$4;->a:Lc/Notification;

    iget-object v0, v0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 317
    return-void
.end method
