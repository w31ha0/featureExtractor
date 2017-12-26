.class Lcom/wordloco/wordchallenge/d/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/d/g;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/wordloco/wordchallenge/d/g;->b:I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 106
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 108
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/d/g;->a:Landroid/app/Activity;

    .line 109
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 110
    const-class v2, Lcom/wordloco/wordchallenge/view/AdDialog;

    .line 108
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const-string v1, "appname"

    .line 112
    invoke-static {}, Lcom/wordloco/wordchallenge/d/f;->a()[Lcom/wordloco/wordchallenge/b/c;

    move-result-object v2

    iget v3, p0, Lcom/wordloco/wordchallenge/d/g;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/c;->b()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v1, "packagename"

    .line 114
    invoke-static {}, Lcom/wordloco/wordchallenge/d/f;->a()[Lcom/wordloco/wordchallenge/b/c;

    move-result-object v2

    iget v3, p0, Lcom/wordloco/wordchallenge/d/g;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/c;->a()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/wordloco/wordchallenge/d/g;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method
