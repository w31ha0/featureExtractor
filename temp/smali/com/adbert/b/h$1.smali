.class Lcom/adbert/b/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/b/h;->a([ZILcom/adbert/b/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/b/h$a;

.field final synthetic b:I

.field final synthetic c:Lcom/adbert/b/h;


# direct methods
.method constructor <init>(Lcom/adbert/b/h;Lcom/adbert/b/h$a;I)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/adbert/b/h$1;->c:Lcom/adbert/b/h;

    iput-object p2, p0, Lcom/adbert/b/h$1;->a:Lcom/adbert/b/h$a;

    iput p3, p0, Lcom/adbert/b/h$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adbert/b/h$1;->a:Lcom/adbert/b/h$a;

    iget v1, p0, Lcom/adbert/b/h$1;->b:I

    invoke-interface {v0, v1}, Lcom/adbert/b/h$a;->a(I)V

    .line 59
    return-void
.end method
