.class Lcom/adbert/b/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/b/c;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/b/c;


# direct methods
.method constructor <init>(Lcom/adbert/b/c;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/adbert/b/c$3;->a:Lcom/adbert/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/adbert/b/c$3;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->a(Lcom/adbert/b/c;)Lcom/adbert/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/a/c/a;->closeVideo()V

    .line 181
    return-void
.end method
