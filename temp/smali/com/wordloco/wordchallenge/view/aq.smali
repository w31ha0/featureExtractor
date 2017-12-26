.class Lcom/wordloco/wordchallenge/view/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/TestAmazon;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/TestAmazon;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/aq;->a:Lcom/wordloco/wordchallenge/view/TestAmazon;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/aq;->a:Lcom/wordloco/wordchallenge/view/TestAmazon;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/TestAmazon;->b()V

    .line 99
    return-void
.end method
