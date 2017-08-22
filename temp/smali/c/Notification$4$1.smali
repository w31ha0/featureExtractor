.class Lc/Notification$4$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/Notification$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/Notification$4;


# direct methods
.method constructor <init>(Lc/Notification$4;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lc/Notification$4$1;->a:Lc/Notification$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lc/Notification$4$1;->a:Lc/Notification$4;

    iget-object v0, v0, Lc/Notification$4;->a:Lc/Notification;

    const/4 v1, 0x0

    iput-object v1, v0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    .line 314
    return-void
.end method
