.class Lc/Notification$2;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/Notification;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvpadn/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/q;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:[Ljava/lang/String;

.field final synthetic e:Lvpadn/p;

.field final synthetic f:Lc/Notification;


# direct methods
.method constructor <init>(Lc/Notification;Lvpadn/q;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lvpadn/p;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lc/Notification$2;->f:Lc/Notification;

    iput-object p2, p0, Lc/Notification$2;->a:Lvpadn/q;

    iput-object p3, p0, Lc/Notification$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lc/Notification$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lc/Notification$2;->d:[Ljava/lang/String;

    iput-object p6, p0, Lc/Notification$2;->e:Lvpadn/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 200
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lc/Notification$2;->a:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    iget-object v1, p0, Lc/Notification$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 202
    iget-object v1, p0, Lc/Notification$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 203
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 206
    iget-object v1, p0, Lc/Notification$2;->d:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 207
    iget-object v1, p0, Lc/Notification$2;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-instance v2, Lc/Notification$2$1;

    invoke-direct {v2, p0}, Lc/Notification$2$1;-><init>(Lc/Notification$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    :cond_0
    iget-object v1, p0, Lc/Notification$2;->d:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v3, :cond_1

    .line 218
    iget-object v1, p0, Lc/Notification$2;->d:[Ljava/lang/String;

    aget-object v1, v1, v3

    new-instance v2, Lc/Notification$2$2;

    invoke-direct {v2, p0}, Lc/Notification$2$2;-><init>(Lc/Notification$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    :cond_1
    iget-object v1, p0, Lc/Notification$2;->d:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v4, :cond_2

    .line 229
    iget-object v1, p0, Lc/Notification$2;->d:[Ljava/lang/String;

    aget-object v1, v1, v4

    new-instance v2, Lc/Notification$2$3;

    invoke-direct {v2, p0}, Lc/Notification$2$3;-><init>(Lc/Notification$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    :cond_2
    new-instance v1, Lc/Notification$2$4;

    invoke-direct {v1, p0}, Lc/Notification$2$4;-><init>(Lc/Notification$2;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 247
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 248
    return-void
.end method
