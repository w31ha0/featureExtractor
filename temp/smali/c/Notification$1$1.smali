.class Lc/Notification$1$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/Notification$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/Notification$1;


# direct methods
.method constructor <init>(Lc/Notification$1;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lc/Notification$1$1;->a:Lc/Notification$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 164
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 165
    iget-object v0, p0, Lc/Notification$1$1;->a:Lc/Notification$1;

    iget-object v0, v0, Lc/Notification$1;->e:Lvpadn/p;

    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->b:Lvpadn/w$a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lvpadn/w;-><init>(Lvpadn/w$a;I)V

    invoke-virtual {v0, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 166
    return-void
.end method
