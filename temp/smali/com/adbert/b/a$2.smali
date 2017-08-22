.class Lcom/adbert/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/b/a;->setDelete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/b/a;


# direct methods
.method constructor <init>(Lcom/adbert/b/a;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/adbert/b/a$2;->a:Lcom/adbert/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/adbert/b/a$2;->a:Lcom/adbert/b/a;

    iget-object v0, v0, Lcom/adbert/b/a;->b:Lcom/adbert/a/c/a;

    invoke-virtual {v0}, Lcom/adbert/a/c/a;->closeWeb()V

    .line 186
    return-void
.end method
