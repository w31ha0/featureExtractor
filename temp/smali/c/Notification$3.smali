.class Lc/Notification$3;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/Notification;->activityStart(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/q;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lc/Notification;


# direct methods
.method constructor <init>(Lc/Notification;Lvpadn/q;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lc/Notification$3;->d:Lc/Notification;

    iput-object p2, p0, Lc/Notification$3;->a:Lvpadn/q;

    iput-object p3, p0, Lc/Notification$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lc/Notification$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 267
    iget-object v6, p0, Lc/Notification$3;->d:Lc/Notification;

    iget-object v0, p0, Lc/Notification$3;->a:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lc/Notification$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lc/Notification$3;->c:Ljava/lang/String;

    new-instance v5, Lc/Notification$3$1;

    invoke-direct {v5, p0}, Lc/Notification$3$1;-><init>(Lc/Notification$3;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, v6, Lc/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 273
    return-void
.end method
