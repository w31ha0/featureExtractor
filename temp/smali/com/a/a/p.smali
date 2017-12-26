.class Lcom/a/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/a/a/o;


# direct methods
.method constructor <init>(Lcom/a/a/o;)V
    .locals 0

    .prologue
    .line 999
    iput-object p1, p0, Lcom/a/a/p;->a:Lcom/a/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/a/a/p;->a:Lcom/a/a/o;

    iget-object v0, v0, Lcom/a/a/o;->b:Lcom/a/a/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/a/a/s;->a(Z)V

    .line 1003
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1004
    return-void
.end method
