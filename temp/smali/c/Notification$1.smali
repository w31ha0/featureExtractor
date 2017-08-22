.class Lc/Notification$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/Notification;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvpadn/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/q;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lvpadn/p;

.field final synthetic f:Lc/Notification;


# direct methods
.method constructor <init>(Lc/Notification;Lvpadn/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvpadn/p;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lc/Notification$1;->f:Lc/Notification;

    iput-object p2, p0, Lc/Notification$1;->a:Lvpadn/q;

    iput-object p3, p0, Lc/Notification$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lc/Notification$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lc/Notification$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lc/Notification$1;->e:Lvpadn/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lc/Notification$1;->a:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    iget-object v1, p0, Lc/Notification$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 159
    iget-object v1, p0, Lc/Notification$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 161
    iget-object v1, p0, Lc/Notification$1;->d:Ljava/lang/String;

    new-instance v2, Lc/Notification$1$1;

    invoke-direct {v2, p0}, Lc/Notification$1$1;-><init>(Lc/Notification$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    new-instance v1, Lc/Notification$1$2;

    invoke-direct {v1, p0}, Lc/Notification$1$2;-><init>(Lc/Notification$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 177
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 178
    return-void
.end method
