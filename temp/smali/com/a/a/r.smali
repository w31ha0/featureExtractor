.class Lcom/a/a/r;
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
    .line 1044
    iput-object p1, p0, Lcom/a/a/r;->a:Lcom/a/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1047
    iget-object v0, p0, Lcom/a/a/r;->a:Lcom/a/a/o;

    iget-object v0, v0, Lcom/a/a/o;->e:Lcom/a/a/h;

    invoke-virtual {v0, v1}, Lcom/a/a/h;->a(Z)V

    .line 1048
    iget-object v0, p0, Lcom/a/a/r;->a:Lcom/a/a/o;

    iget-object v0, v0, Lcom/a/a/o;->b:Lcom/a/a/s;

    invoke-virtual {v0, v1}, Lcom/a/a/s;->a(Z)V

    .line 1049
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1050
    return-void
.end method
